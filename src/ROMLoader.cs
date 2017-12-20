using System;
using System.Collections.Generic;
using NUnit.Framework.Api;

namespace RomLoaderConsole
{
    public class ROMLoader
    {
        // Represents the sequence coals must be blended.
        private readonly List<string> blendCycle;
        // Points to the index of the current coal in the blend cycle.
        private int index;
        // The time it takes to load a truck.
        private readonly TimeSpan loadTime;

        //The maximum time a truck is allowed to wait before dumping coal.
        private readonly TimeSpan maxWaitTime;

        /// <summary>
        /// Initialises a new ROMLoader class.
        /// </summary>
        /// <param name="blendCycle">The list that contains the sequence of how coals are to be loaded.</param>
        /// <param name="maxWaitTime">The maximum time a truck is allowed to wait before dumping coal.</param>
        /// <param name="loadTime">The time it takes to load a truck.</param>
        public ROMLoader(List<string> blendCycle, TimeSpan maxWaitTime, TimeSpan loadTime)
        {
            this.blendCycle = blendCycle;
            index = 0;
            this.maxWaitTime = maxWaitTime;
            this.loadTime = loadTime;
            
        }

        /// <summary>
        /// Determines which trucks that are coming from the pit are to be fed to the ROM bin.  The returned list 
        /// indicates which trucks are to be fed into the bin.  CoalMovements not in this list are dumped at stockpiles.
        /// 
        /// Takes the minimumTime as the starting time of loading and either finds a truck with the required coal 
        /// next in the coal cycle or uses the rom loader to create a new CoalMovement.
        ///
        /// If a CoalMovement with the required coal arrives in less than the loading time but greater than 
        /// the minimum time then it is allocated to the bin.  If a CoalMovement has been found the next coal 
        /// in the blending cycle is inspected, the minimumtime is moved forward to the time of the last truck 
        /// arrival time to preserve ordering of coal loading into the bin and the time range allowed for dumping is
        /// increased proportational to the loadTime for this class.
        /// 
        /// </summary>
        /// <param name="minimumTime">The starting time of loading.</param>
        /// <param name="IncomingTrucks">List of coal movements coming from the pit.</param>
        /// <returns>A list of coal movements that are to be allocated to the bin.</returns>
        public List<CoalMovement> AllocateCoalMovements(DateTime minimumTime, List<CoalMovement> IncomingTrucks)
        {
            // List of coal movements to be dumped into the bin.
            List<CoalMovement> allocatedCoalMovements = new List<CoalMovement>();

            // Variable to keep while loop looping until no CoalMovements can be allocated.
            bool foundMovement = true;

            // Variable to hold the next coal required in blending cycle.
            string requiredCoal = ""; 

            while (foundMovement)
            {
                requiredCoal = GetNextCoal();

                // Find coal movements.  
                foundMovement = AllocateIncomingTrucks(minimumTime, requiredCoal, IncomingTrucks, allocatedCoalMovements);

                //If a truck was found.  Change new time to be the time the truck loaded coal into the bin.
                if (allocatedCoalMovements.Count != 0)
                {
                    minimumTime = allocatedCoalMovements[allocatedCoalMovements.Count - 1].PropDateTime
                        .Subtract(maxWaitTime);

                }
            }


            // TODO: What is going on here?
            // Subtract time and add 2 minutes for loading.
            
            minimumTime = minimumTime.Subtract(loadTime);
            allocatedCoalMovements.Add(LoadROMTruck(requiredCoal, minimumTime));

            return allocatedCoalMovements;
        }

        private CoalMovement LoadROMTruck(string requiredCoal, DateTime time)
        {
            CoalMovement romMovement = new CoalMovement(requiredCoal, "ROM Truck", time);
            return romMovement;
        }

        private bool AllocateIncomingTrucks(DateTime time, string requiredCoal, List<CoalMovement> movements,
            List<CoalMovement> resultOfMovements)
        {

            if (MovementsContainRequiredCoal(requiredCoal, movements))
            {
                foreach (CoalMovement coalMovement in movements)
                {
                   //Are the coal movements sorted by time? 
                     DateTime maximumTime = time.Add(loadTime);
                    
                    if (coalMovement.Coal.Equals(requiredCoal) && coalMovement.PropDateTime < maximumTime &&
                        coalMovement.PropDateTime > time)
                    {
                        // Add the coal movement to the results of movements list.
                        resultOfMovements.Add(coalMovement);

                        // Remove coal from movements - Cannt be used again.
                        movements.Remove(coalMovement);

                        return true;
                    }
                }
            }
            //Coal required not found.  Exit out and load coal with loader.
            return false;
        }

        private string GetNextCoal()
        {
            string coal = blendCycle[blendCycle.Count % (index + 1)];
            index++;
            return coal;
        }

        private bool MovementsContainRequiredCoal(string coal, List<CoalMovement> movements)
        {
            foreach (CoalMovement movement in movements)
            {
                if (movement.Coal.Equals(coal))
                    return true;
            }
            return false;
        }
    }
}
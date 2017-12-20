using System;
using System.Collections.Generic;
using NUnit.Framework.Api;

namespace RomLoaderConsole
{
    public class ROMLoader
    {
        private readonly List<string> coalCycle;
        private int index;
        private readonly TimeSpan loadTime;
        private TimeSpan maxWaitTime;


        public ROMLoader(List<string> coalCycle, TimeSpan maxWaitTime, TimeSpan loadTime)
        {
            this.coalCycle = coalCycle;
            index = 0;
            this.maxWaitTime = maxWaitTime;
            this.loadTime = loadTime;
        }

        public List<CoalMovement> LoadCoal(DateTime minimumTime, List<CoalMovement> IncomingTrucks)
        {

            List<CoalMovement> loadingCycleCoalMovements = new List<CoalMovement>();

            bool findMovement = true;

            string requiredCoal = "temp";       

            while (findMovement)
            {
                requiredCoal = GetNextCoal();

                findMovement = AllocateIncomingTrucks(minimumTime, requiredCoal, IncomingTrucks, loadingCycleCoalMovements);

                //If a truck was found.  Change new time to be the time the truck loaded coal into the bin.
                if (loadingCycleCoalMovements.Count != 0)
                {
                    minimumTime = loadingCycleCoalMovements[loadingCycleCoalMovements.Count - 1].PropDateTime;
                }
            }
            // TODO: What is going on here?
            // Subtract time and add 2 minutes for loading.
            TimeSpan timeSpan = new TimeSpan(0 , (2 - loadTime.Minutes), 0);
            minimumTime = minimumTime.Add(timeSpan);
            loadingCycleCoalMovements.Add(LoadROMTruck(requiredCoal, minimumTime));

            return loadingCycleCoalMovements;
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
            string coal = coalCycle[coalCycle.Count % (index + 1)];
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
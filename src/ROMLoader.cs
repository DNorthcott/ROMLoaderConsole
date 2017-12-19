using System;
using System.Collections.Generic;

namespace RomLoaderConsole
{
    public class ROMLoader
    {
        private readonly List<string> coalCycle;
        private readonly int index;
        private readonly TimeSpan loadTime;
        private TimeSpan maxWaitTime;


        public ROMLoader(List<string> coalCycle, TimeSpan maxWaitTime, TimeSpan loadTime)
        {
            this.coalCycle = coalCycle;
            index = 0;
            this.maxWaitTime = maxWaitTime;
            this.loadTime = loadTime;
        }

        public List<string> LoadCoal(DateTime time, List<CoalMovement> movements)
        {
            time = time.Add(loadTime);
            //No gaurentee that movements is sorted when delievered from DB.
            movements.Sort();

            List<string> resultOfMovements = new List<string>();

            bool findMovement = true;

            while (findMovement)
            {
            }

            //Tell the loader to load coal.

            return resultOfMovements;
        }

        public bool CheckIncomingTrucks(DateTime maximumTime, string requiredCoal, List<CoalMovement> movements,
            List<CoalMovement> resultOfMovements)
        {
            if (MovementsContainRequiredCoal(GetNextCoal(), movements))
            {
                foreach (var coalMovement in movements)
                {
                    DateTime minimumTime = maximumTime.Subtract(loadTime);
                    maximumTime = maximumTime.Add(loadTime);

                    if (coalMovement.Coal.Equals(requiredCoal) && coalMovement.PropDateTime < maximumTime &&
                        coalMovement.PropDateTime > minimumTime)
                    {
                        // Add the coal movement to the results of movements list.
                        resultOfMovements.Add(coalMovement);

                        // Remove coal from movements - Cannt be used again.
                        movements.Remove(coalMovement);

                        return true;
                    }
                }
                return false;
            }
            //Coal required not found.  Exit out and load coal with loader.
            return false;
        }

        public string GetNextCoal()
        {
            return coalCycle[coalCycle.Count % (index + 1)];
        }

        public bool MovementsContainRequiredCoal(string coal, List<CoalMovement> movements)
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
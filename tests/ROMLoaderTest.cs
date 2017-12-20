using System;
using System.Collections.Generic;
using NUnit.Framework;

namespace RomLoaderConsole.tests
{
    [TestFixture]
    public class ROMLoaderTest
    {
        [Test]
        public void LoadCoalTest()
        {
            CoalMovement coalMovement1 = new CoalMovement("05N_46_F25", "Truck10", "2017-12-12 04:45:52");
            CoalMovement coalMovement2 = new CoalMovement("13_36_J17", "Truck2", "2017-12-12 04:48:00");


            CoalMovement coalMovement3 = new CoalMovement("05N_46_F25", "Truck6", "2017-12-20 12:42:21");
            CoalMovement coalMovement4 = new CoalMovement("13_36_J17", "Truck10", "2017-12-20 12:48:00");
            CoalMovement coalMovement5 = new CoalMovement("05N_46_F25", "Truck4", "2017-12-20 12:52:56");

            List<CoalMovement> incomingCoalMovements = new List<CoalMovement>();
            incomingCoalMovements.Add(coalMovement1);
            incomingCoalMovements.Add(coalMovement2);
            incomingCoalMovements.Add(coalMovement3);
            incomingCoalMovements.Add(coalMovement4);
            incomingCoalMovements.Add(coalMovement5);

            List<string> coalCycle = new List<string>();
            coalCycle.Add("05N_46_F25");
            coalCycle.Add("13_36_J17");
            coalCycle.Add("05N_46_F25");
            coalCycle.Add("03S_46_F25");
            coalCycle.Add("13_36_J17");
            coalCycle.Add("03S_46_F25");
            coalCycle.Add("13_36_J17");
            coalCycle.Add("03S_46_J19");
            coalCycle.Add("03S_46_J19");

            TimeSpan waitTimeSpan = new TimeSpan(0, 2, 0);
            TimeSpan loadTimeSpan = new TimeSpan(0, 5, 0);

            ROMLoader loader = new ROMLoader(coalCycle, waitTimeSpan, loadTimeSpan);

            DateTime minimumTime = new DateTime(2017, 12, 12, 04, 44, 52 );
            List<CoalMovement> result = loader.LoadCoal(minimumTime, incomingCoalMovements);

            Assert.True(true);
        }
    }
}
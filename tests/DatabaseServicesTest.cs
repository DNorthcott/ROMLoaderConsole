using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using NUnit.Framework.Internal;

namespace RomLoaderConsole.tests
{
    [TestFixture]
    class DatabaseServicesTest
    {


        [Test]
        public async Task GetBlendsTest()
        {
            Directory.SetCurrentDirectory(AppDomain.CurrentDomain.BaseDirectory);
            DatabaseServices database = new DatabaseServices("ConsoleDB.db");
            

            DateTime date = new DateTime(2017, 12, 13);



            Console.WriteLine(Directory.GetCurrentDirectory());
            

            List<Blend> listOfBlends = await database.GetBlends(date);

            Blend blend1 = new Blend("2017-12-13", 1, "03N_46_J16", "03S_46_F25", "05N_46_F25", "03S_46_J19",
                "13_36_J17", "13_34_F23", "13_38_J16", null, null, null);

            Blend blend2 = new Blend("2017-12-13", 2, "12_34_F54", "12_34_F54", "05N_46_F25", "03S_46_F25",
                "13_36_J17", "03S_46_F25", "13_38_J16", null, null, null);

            Blend blend3 = new Blend("2017-12-13", 3, "05N_46_F25", "13_36_J17", "05N_46_F25", "03S_46_F25",
                "13_36_J17", "03S_46_F25", "13_36_J17", "03S_46_J19", "03S_46_J19", null);

            Blend blend4 = new Blend("2017-12-13", 4, "05N_46_F25", "13_36_J17", "05N_46_F25", "03S_46_F25",
                "13_36_J17", "03S_46_F25", "13_36_J17", "03S_46_J19", "03S_46_J19", null);



            Assert.True(listOfBlends.Count == 3);
            Assert.True(listOfBlends.Contains(blend1));
            Assert.True(listOfBlends.Contains(blend2));
            Assert.True(listOfBlends.Contains(blend3));
            Assert.False(listOfBlends.Contains(blend4));

            
        }

        [Test]
        public async Task GetMovements()
        {

            Directory.SetCurrentDirectory(AppDomain.CurrentDomain.BaseDirectory);
            DatabaseServices database = new DatabaseServices("ConsoleDB.db");

            DateTime date = new DateTime(2017, 12, 13, 04, 54, 26);
            DateTime date1 = new DateTime(2017, 12, 13, 04, 55, 28);
            DateTime date3 = new DateTime(2017, 12, 13, 04, 56, 03);
            DateTime date2 = new DateTime(2017, 12, 13, 04, 56, 28);

            CoalMovement movement1 = new CoalMovement("05N_46_F25", "Truck3", "2017-12-13 04:56:28");
            CoalMovement movement2 = new CoalMovement("13_36_J17", "Truck1", "2017-12-13 05:04:00");
            CoalMovement movement3 = new CoalMovement("05N_46_F25", "Truck10", "2017-12-13 05:07:03");
            CoalMovement movement4 = new CoalMovement("05N_46_F25", "Truck1", "2017-12-13 05:17:38");

            // Test for empty movements
            List<CoalMovement> movements1 = await database.GetCoalMovements(date, 1);
            Assert.True(movements1.Count == 0);

            // Test for 0 movements where minimum time matches only movement. 
            List<CoalMovement> movements2 = await database.GetCoalMovements(date2, 1);
            Assert.True(movements2.Count == 0);

            // Test for 1 movements normal case.
            List<CoalMovement> movements3 = await database.GetCoalMovements(date3, 3);

            Assert.True(movements3.Count == 1);
            Assert.True(movements3.Contains(movement1));

            // Test for 1 movements time where movement matches maximum time.
            List<CoalMovement> movements4 = await database.GetCoalMovements(date1, 1);
            Assert.True(movements4.Count == 1);
            Assert.True(movements4.Contains(movement1));

            // Test for 2 movements.
            List<CoalMovement> movements5 = await database.GetCoalMovements(date, 10);
            Assert.True(movements5.Count == 2);
            Assert.True(movements5.Contains(movement1));
            Assert.True(movements5.Contains(movement2));

            // Test for 3 movements.
            List<CoalMovement> movements6 = await database.GetCoalMovements(date, 15);
            Assert.True(movements6.Count == 3);
            Assert.True(movements6.Contains(movement1));
            Assert.True(movements6.Contains(movement2));
            Assert.True(movements6.Contains(movement3));

            // Test for 4 movements.
            List<CoalMovement> movements7 = await database.GetCoalMovements(date, 24);
            Assert.True(movements7.Count == 4);
            Assert.True(movements7.Contains(movement1));
            Assert.True(movements7.Contains(movement2));
            Assert.True(movements7.Contains(movement3));
            Assert.True(movements7.Contains(movement4));


        }

        [Test]
        public async Task GetROMTest()
        {
            Directory.SetCurrentDirectory(AppDomain.CurrentDomain.BaseDirectory);
            DatabaseServices database = new DatabaseServices("ConsoleDB.db");


            DateTime date = new DateTime(2017, 12, 13);

            List<RunOfMine> ROMList = await database.GetRunOfMine(date);

            RunOfMine ROM = new RunOfMine("2017-12-12", 1, "03N_46_J16", null, null, "03S_46_F25", null, null, "03S_46_J19"
                , "13_36_J17", null, null);

            RunOfMine ROM1 = new RunOfMine("2017-12-12", 2, "12_34_F54", "13_36_J17", "15N_25_G253", "03S_46_F25", null, null, "16S_23_G53"
                , "16N_22_F253", "16N_22_F253", null);

            RunOfMine ROM2 = new RunOfMine("2017-12-12", 2, "03S_46_J19", "13_34_F23", null, "03S_46_F25", "05N_46_F25",
                "13_36_J17", "16S_23_G53"
                , "16N_22_F253", "12_34_F25", "13_36_J17");

            Assert.True(ROMList.Contains(ROM));
            Assert.True(ROMList.Contains(ROM1));
            Assert.True(ROMList.Contains(ROM2));
            Assert.True(ROMList.Count == 3);
        }

    }
}

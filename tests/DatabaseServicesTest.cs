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

            Blend blend = new Blend();
        }

    }
}

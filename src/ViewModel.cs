using System;
using System.Collections.Generic;

namespace RomLoaderConsole
{
    public static class ViewModel
    {

        public static async void StartProgram()
        {
            

            List<Blend> listOfBlends;
            List<RunOfMine> listOfStockpiles;
            List<CoalMovement> listOfCoalMovements;
            DatabaseServices database;

       
            //Connect to database.
            database = new DatabaseServices("ConsoleDB.db");
          
            
            listOfBlends = await database.GetBlends(DateTime.Now);
            
            listOfStockpiles = await database.GetRunOfMine(DateTime.Now);

            Console.WriteLine("stop");
           


            Console.WriteLine("======================================");
            Console.WriteLine("Welcome to the ROM loading system");
            Console.WriteLine("======================================");
            Console.WriteLine();
            Console.WriteLine("Select from the following: ");
            Console.WriteLine("1 Todays blend");
            Console.WriteLine("2 Stockpile locations");
            Console.WriteLine("3 Start loading");
  
            


            Console.ReadKey();
        }
    }
}

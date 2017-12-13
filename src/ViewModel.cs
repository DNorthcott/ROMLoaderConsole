using System;
using System.Collections.Generic;
using System.Diagnostics;

namespace RomLoaderConsole
{
    public class ViewModel
    {
        List<Blend> listOfBlends;
        List<RunOfMine> listOfStockpiles;
        List<CoalMovement> listOfCoalMovements;
        DatabaseServices database;

        private RunOfMine primaryROM;
        private Blend primaryBlend;

        public ViewModel()
        {
            //Connect to database.
            database = new DatabaseServices("ConsoleDB.db");
        }

        public async void StartProgram()
        {
            

            listOfBlends = await database.GetBlends(DateTime.Now);
            
            listOfStockpiles = await database.GetRunOfMine(DateTime.Now);

        }

        public void UserIterface()
        {

            char selection = MainScreen();

            switch (selection)
            {
                case '1':
                    BlendInfo();
                    break;
                case '2':
                    StockpileLocations();
                    break;
                case '3':
                    LoadBin();
                    break;
                case '4':
                //close program
                    Console.WriteLine();
                    break;
                default:
                    MainScreen();
                    break;
            }


            UserIterface();




        }

        private void BlendInfo()
        {
            
        }

        private void LoadBin()
        {
            
        }

        private char MainScreen()
        {

            Console.WriteLine();
            Console.WriteLine("Select from the following: ");
            Console.WriteLine("1 Todays blend");
            Console.WriteLine("2 Stockpile locations");
            Console.WriteLine("3 Start loading");
            return Console.ReadKey().KeyChar;
        }

        private void StockpileLocations()
        {
            
        }
    }
}

using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace RomLoaderConsole
{
    public class ViewModel
    {
        private readonly DatabaseServices database;
        private List<Blend> listOfBlends;
        private List<CoalMovement> listOfCoalMovements;
        private List<RunOfMine> listOfROMS;
        private Blend primaryBlend;
        private RunOfMine primaryROM;
        private ROMLoader loader;

        public ViewModel()
        {
            //Connect to database.
            database = new DatabaseServices("ConsoleDB.db");
        }

        public async Task StartProgram()
        {
            Console.WriteLine("======================================");
            Console.WriteLine("Welcome to the ROM loading system");
            Console.WriteLine("======================================");

            // Get blends from db for today.
            listOfBlends = await database.GetBlends(DateTime.Now);

            // Set primary blend;
            primaryBlend = SetPrimaryBlend(listOfBlends);

            // Get the stockpile locations for the ROM for today.
            listOfROMS = await database.GetRunOfMine(DateTime.Now);

            // Set primary ROM.
            primaryROM = SetPrimaryRom(listOfROMS);

            //Set up ROM Loader.

            
        }

        private void SetUpROMLoader()
        {
            Console.WriteLine();
            Console.Write("Please input the time to load a truck in minutes: ");
            int loadingTime = ReadInputMinutes();
            TimeSpan loadingTimeSpan = new TimeSpan(0,0, loadingTime);

            Console.WriteLine();
            Console.WriteLine("Please input the maximum number of a minutes ");
            Console.WriteLine("a haul truck can wait before dumping: ");
            int waitTime = ReadInputMinutes();
            TimeSpan waitTimeSpan = new TimeSpan(0, 0, waitTime);
            loader = new ROMLoader(primaryBlend.Cycle, loadingTimeSpan, waitTimeSpan);
        }

        private int ReadInputMinutes()
        {
            bool loop = true;

            while (true)
            {
                try
                {
                    int minutes = Int32.Parse(Console.ReadLine()); 
                }
                catch (Exception e)
                {
                    Console.WriteLine("Please input correct format.");
                    Console.WriteLine("Input minutes: ");
                }
            }
        }

        private RunOfMine SetPrimaryRom(List<RunOfMine> runOfMines)
        {
            listOfROMS.Sort();
            if (listOfROMS.Count != 0)
            {
                return listOfROMS[listOfROMS.Count - 1];
            }
            else
            {
                ExitProgram("RunOfMine");
                return null;
            }
        }

        private Blend SetPrimaryBlend(List<Blend> blends)
        {
            listOfBlends.Sort();
            if (listOfBlends.Count != 0)
            {

                return listOfBlends[listOfBlends.Count - 1];
            }
            ExitProgram("blend");
            return null;
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
                    LoadBin().Wait();
                    break;
                case '4':
                    //close program
                    Console.WriteLine();
                    //exit method here.
                    break;
                default:
                    MainScreen();
                    break;
            }


            UserIterface();
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
            Console.WriteLine();

            List<Stockpile> stockpiles = primaryROM.Stockpiles;
            stockpiles.Sort();

            foreach (Stockpile pileStockpile in stockpiles)
            {
                Console.WriteLine(pileStockpile.ToString());
            }
        }

        private void BlendInfo()
        {
            Console.WriteLine();

            List<string> cycle = primaryBlend.Cycle;

            for (int i = 0; i < cycle.Count; i++)
            {
                Console.WriteLine("Face " + (i + 1) + ": " + cycle[i]);
            }

            
        }

        private async Task LoadBin()
        {
            List<CoalMovement> movements = await database.GetCoalMovements(DateTime.Now, 30);


        }

        private void ExitProgram(string reason)
        {
            Console.WriteLine("The database does not contain the required data for " + reason);
            Console.WriteLine("Press any key to exit.");
            Console.ReadKey();
            Environment.Exit(0);
        }
    }
}
using System;
using System.Threading;

namespace RomLoaderConsole
{
    class Program
    {
        /// <summary>
        /// Executes the async class that runs this program.
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {

            Console.WriteLine("======================================");
            Console.WriteLine("Welcome to the ROM loading system");
            Console.WriteLine("======================================");

            ViewModel display = new ViewModel();
            display.StartProgram();
            display.UserIterface();
            Console.ReadKey();
        }
    }
}

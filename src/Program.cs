using System.Threading.Tasks;

namespace RomLoaderConsole
{
    internal class Program
    {
        /// <summary>
        ///     Executes the async class that runs this program.
        /// </summary>
        /// <param name="args"></param>
        private static void Main(string[] args)
        {
            MainAsync().Wait();
        }


        private static async Task MainAsync()
        {
            var display = new ViewModel();
            display.StartProgram().Wait();
            display.UserIterface();
        }
    }
}
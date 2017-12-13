namespace RomLoaderConsole
{
    public static class ViewModel
    {

        public static async void StartProgram()
        {
            DatabaseHelpy database = new DatabaseHelpy("CoalMovementsFinal.db");

            // database.InitializeAsync("CoalMovements.db");

            Console.WriteLine("Before entering database");

            //await database.GetItemsNotDoneAsync();

            await database.GetCoalNotDoneAsync();

            await database.GetCoalMovementsNotDoneAsync();

            await database.GetBlendsNotDoneAsync();

            Console.ReadKey();
        }
}

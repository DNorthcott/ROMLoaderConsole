using SQLite;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using RomLoaderConsole.src;

namespace RomLoaderConsole
{
    public class DatabaseServices
    {
        private SQLiteAsyncConnection database;

        public DatabaseServices(string dbPath)
        {
            database = new SQLiteAsyncConnection(dbPath);
            Console.WriteLine("Database connection achieved.");
        }


        public async Task<List<Blend>> GetBlends(DateTime date)
        {

            string sql = "SELECT * FROM blend WHERE date = " +  "'" + date.ToString("yyyy-MM-dd") + "'";
            Console.WriteLine("Reading blend");

            List<Blend> blend = await database.QueryAsync<Blend>(sql);
            Console.WriteLine("Blends have been read.");

            return blend;
        }
    }
}
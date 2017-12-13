using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SQLite;

namespace RomLoaderConsole
{
    public class DatabaseServices
    {
        private SQLiteAsyncConnection database;

        public DatabaseServices(string dbPath)
        {
           
            Console.WriteLine(File.Exists(dbPath) ? "File exists." : "File does not exist.");
            database = new SQLiteAsyncConnection(dbPath);
            //database.CreateTableAsync<Stocks>().Wait();
            Console.WriteLine("Database connection achieved.");
            
        }


        public async Task<List<Blend>> GetBlends(DateTime date)
        {

            Console.WriteLine("blend");
            
            List<Blend> blend1 = await database.QueryAsync<Blend>(("SELECT * FROM blend"));
            string sql = "SELECT * FROM blend WHERE DateOfBlend = " +  "'" + date.ToString("yyyy-MM-dd") + "'";
            Console.WriteLine("Reading blend");
            
            List<Blend> blend = await database.QueryAsync<Blend>(sql);
            Console.WriteLine("Blends have been read.");
           
            return blend;
        }

        public async Task<List<CoalMovement>> GetCoalMovements(DateTime time, int minutes)
        {
            Console.WriteLine("coal");
            
            string currentTime = (time.ToString("yyyy-MM-dd HH:mm:ss"));
            time = time.AddMinutes(minutes);
            string futureTime = time.ToString("yyyy-MM-dd HH:mm:ss");

            currentTime = "'" + currentTime + "'";
            futureTime = "'" + futureTime + "'";


            List<CoalMovement> stuff = await database.QueryAsync<CoalMovement>(("SELECT * FROM coalMovement " +
                   "where DateTimeArrival > " + currentTime + "and DateTimeArrival < " + futureTime));
            stuff.Sort();
            Console.WriteLine();
            Console.WriteLine("coaling complete");
            return stuff;
        }

        public async Task<List<RunOfMine>> GetRunOfMine(DateTime date)
        {

            string sql = "SELECT * FROM RunOfMine WHERE date = " + "'" + date.ToString("yyyy-MM-dd") + "'";
            Console.WriteLine("Reading blend");

            List<RunOfMine> runOfMine = await database.QueryAsync<RunOfMine>(sql);
            Console.WriteLine("Blends have been read.");

            return runOfMine;
        }
    }
}
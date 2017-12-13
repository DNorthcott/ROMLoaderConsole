using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SQLite;

namespace RomLoaderConsole
{
   public class Stocks
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }

        [MaxLength(8)]
        public string Symbol { get; set; }
    }
}

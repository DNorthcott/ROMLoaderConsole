using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RomLoaderConsole
{
    public class Stockpile : IComparable
    {

        private string name;
        private string coal;
        private int stockPileNumber;

        public Stockpile(string name, string coal)
        {
            this.name = name;
            this.coal = coal;

            stockPileNumber = Int32.Parse(name.Substring(9));
        }

        public int StockPileNumber
        {
            get { return stockPileNumber; }
        }

        public override string ToString()
        {
            return "Stockpile " + StockPileNumber + " : " + coal;
        }

        public int CompareTo(object obj)
        {
            Stockpile otherStockpile = (Stockpile)obj;

            if (StockPileNumber > otherStockpile.StockPileNumber)
            {
                return 1;
            }
            else if (StockPileNumber == otherStockpile.StockPileNumber)
            {
                return 0;
            }
            else
            {
                return -1;
            }
        }
    }
}

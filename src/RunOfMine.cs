using System;
using System.Collections.Generic;
using System.Dynamic;

namespace RomLoaderConsole
{
    public class RunOfMine : IComparable
    {
        private string date;
        private int priority;
        private string stockpile1;
        private string stockpile2;
        private string stockpile3;
        private string stockpile4;
        private string stockpile5;
        private string stockpile6;
        private string stockpile7;
        private string stockpile8;
        private string stockpile9;
        private string stockpile10;

        private List<Stockpile> stockpiles;

        public RunOfMine()
        {
            
        }

        public RunOfMine(string date, int priority, string stockpile1, string stockpile2, string stockpile3,
            string stockpile4, string stockpile5, string stockpile6, string stockpile7, string stockpile8
            , string stockpile9, string stockpile10)
        {
            Date = date;
            Priority = priority;
            Stockpile1 = stockpile1;
            Stockpile2 = stockpile2;
            Stockpile3 = stockpile3;
            Stockpile4 = stockpile4;
            Stockpile5 = stockpile5;
            Stockpile6 = stockpile6;
            Stockpile7 = stockpile7;
            Stockpile8 = stockpile8;
            Stockpile9 = stockpile9;
            Stockpile10 = stockpile10;
        }

        public void AddStockpile(string stockpileName, string coal)
        {
            Console.WriteLine("entered thingo");
            if (Stockpiles == null)
            {
                stockpiles = new List<Stockpile>();
            }

            if (coal == null)
            {
                Stockpiles.Add(new Stockpile(stockpileName, "Empty"));
            }
            else
            {
                Stockpiles.Add(new Stockpile(stockpileName, coal));
            }

            
        }

        public string Date
        {
            get { return date; }
            set { date = value; }
        }

        public int Priority
        {
            get { return priority; }
            set { priority = value; }
        }

        public string Stockpile1
        {
            get { return stockpile1; }
            set
            {
                stockpile1 = value;
                AddStockpile("stockpile1", value);
            }
        }

        public string Stockpile2
        {
            get { return stockpile2; }
            set
            {
                stockpile2 = value;
                AddStockpile("stockpile2", value);
            }
        }

        public string Stockpile3
        {
            get { return stockpile3; }
            set
            {
                stockpile3 = value;
                AddStockpile("stockpile3", value);
            }
        }

        public string Stockpile4
        {
            get { return stockpile4; }
            set
            {
                stockpile4 = value;
                AddStockpile("stockpile4", value);
            }
        }

        public string Stockpile5
        {
            get { return stockpile5; }
            set
            {
                stockpile5 = value;
                AddStockpile("stockpile5", value);
            }
        }

        public string Stockpile6
        {
            get { return stockpile6; }
            set
            {
                stockpile6 = value;
                AddStockpile("stockpile6", value);
            }
        }

        public string Stockpile7
        {
            get { return stockpile7; }
            set
            {
                stockpile7 = value;
                AddStockpile("stockpile7", value);
            }
        }

        public string Stockpile8
        {
            get { return stockpile8; }
            set
            {
                stockpile8 = value;
                AddStockpile("stockpile8", value);
            }
        }

        public string Stockpile9
        {
            get { return stockpile9; }
            set
            {
                stockpile9 = value;
                AddStockpile("stockpile9", value);
            }
        }

        public string Stockpile10
        {
            get { return stockpile10; }
            set
            {
                stockpile10 = value;
                AddStockpile("stockpile10", value);
            }
        }

        public List<Stockpile> Stockpiles
        {
            get { return stockpiles; }
        }

        public int CompareTo(object obj)
        {
            RunOfMine otherROM = (RunOfMine)obj;

            if (priority > otherROM.Priority)
            {
                return 1;
            }
            else if (priority == otherROM.Priority)
            {
                return 0;
            }
            else
            {
                return -1;
            }
        }

        public override bool Equals(object obj)
        {

            bool equal = true;

            if (obj == null)
            {
                return false;
            }
            else if (obj.GetType() != GetType())
            {
                return false;
            }

            RunOfMine otherROM = (RunOfMine) obj;

            if (date == otherROM.Date && priority == otherROM.Priority)
            {
                
                List<Stockpile> otherStockpileses = otherROM.Stockpiles;
                foreach (Stockpile s in Stockpiles)
                {
                    if (!(otherStockpileses.Contains(s)))
                    {
                        equal = false;
                    }

                }

               

            }
            return equal;
        }
        }
    }

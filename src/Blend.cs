using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RomLoaderConsole 
{
    public class Blend : IComparable
    {
        private string dateOfBlend;
        private int priority;
        private string coal1;
        private string coal2;
        private string coal3;
        private string coal4;
        private string coal5;
        private string coal6;
        private string coal7;
        private string coal8;
        private string coal9;
        private string coal10;

        private List<string> cycle;


        public Blend()
        {
            
        }

        public Blend(string dateOfBlend, int priority, string coal1, string coal2, string coal3, string coal4,
            string coal5, string coal6, string coal7, string coal8, string coal9, string coal10)
        {
            this.dateOfBlend = dateOfBlend;
            this.priority = priority;
            this.coal1 = coal1;
            this.coal2 = coal2;
            this.coal3 = coal3;
            this.coal4 = coal4;
            this.coal5 = coal5;
            this.coal6 = coal6;
            this.coal7 = coal7;
            this.coal8 = coal8;
            this.coal9 = coal9;
            this.coal10 = coal10;
        }

        public string DateOfBlend
        {
            get { return dateOfBlend; }
            set { dateOfBlend = value; }
        }

        public int Priority
        {
            get { return priority; }
            set { priority = value; }
        }

        public string Coal1
        {
            get { return coal1; }
            set { coal1 = value; }
        }

        public string Coal2
        {
            get { return coal2; }
            set { coal2 = value; }
        }

        public string Coal3
        {
            get { return coal3; }
            set { coal3 = value; }
        }

        public string Coal4
        {
            get { return coal4; }
            set { coal4 = value; }
        }

        public string Coal5
        {
            get { return coal5; }
            set { coal5 = value; }
        }

        public string Coal6
        {
            get { return coal6; }
            set { coal6 = value; }
        }

        public string Coal7
        {
            get { return coal7; }
            set { coal7 = value; }
        }

        public string Coal8
        {
            get { return coal8; }
            set { coal8 = value; }
        }

        public string Coal9
        {
            get { return coal9; }
            set { coal9 = value; }
        }

        public string Coal10
        {
            get { return coal10; }
            set { coal10 = value; }
        }

        public int CompareTo(object obj)
        {
            Blend otherBlend = (Blend)obj;

            if (priority > otherBlend.Priority)
            {
                return 1;
            }
            else if (priority == otherBlend.Priority)
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

            if (obj == null)
            {
                return false;
            }
            else if (obj.GetType() != GetType())
            {
                return false;
            }

            Blend otherBlend = (Blend) obj;

            if (dateOfBlend.Equals(otherBlend.dateOfBlend) && priority == otherBlend.Priority &&
                Coal1 == otherBlend.Coal1 &&
                Coal2 == otherBlend.Coal2 &&
                Coal3 == otherBlend.Coal3 &&
                Coal4 == otherBlend.Coal4 &&
                Coal5 == otherBlend.Coal5 &&
                Coal6 == otherBlend.Coal6 &&
                Coal7 == otherBlend.Coal7 &&
                Coal8 == otherBlend.Coal8 &&
                Coal9 == otherBlend.Coal9 &&
                Coal10 == otherBlend.Coal10)
            {
                return true;
            }
            return false;
        }
    }

}

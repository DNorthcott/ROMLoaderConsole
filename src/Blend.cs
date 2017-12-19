using System;
using System.Collections.Generic;

namespace RomLoaderConsole
{
    public class Blend : IComparable
    {
        private List<string> cycle;


        public Blend()
        {
        }

        public Blend(string dateOfBlend, int priority, string coal1, string coal2, string coal3, string coal4,
            string coal5, string coal6, string coal7, string coal8, string coal9, string coal10)
        {
            DateOfBlend = dateOfBlend;
            Priority = priority;
            Coal1 = coal1;
            Coal2 = coal2;
            Coal3 = coal3;
            Coal4 = coal4;
            Coal5 = coal5;
            Coal6 = coal6;
            Coal7 = coal7;
            Coal8 = coal8;
            Coal9 = coal9;
            Coal10 = coal10;
        }

        public string DateOfBlend { get; set; }

        public int Priority { get; set; }

        public string Coal1 { get; set; }

        public string Coal2 { get; set; }

        public string Coal3 { get; set; }

        public string Coal4 { get; set; }

        public string Coal5 { get; set; }

        public string Coal6 { get; set; }

        public string Coal7 { get; set; }

        public string Coal8 { get; set; }

        public string Coal9 { get; set; }

        public string Coal10 { get; set; }



        public int CompareTo(object obj)
        {
            var otherBlend = (Blend) obj;

            if (Priority > otherBlend.Priority)
                return 1;
            if (Priority == otherBlend.Priority)
                return 0;
            return -1;
        }

        public override bool Equals(object obj)
        {
            if (obj == null)
                return false;
            if (obj.GetType() != GetType())
                return false;

            var otherBlend = (Blend) obj;

            if (DateOfBlend.Equals(otherBlend.DateOfBlend) && Priority == otherBlend.Priority &&
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
                return true;
            return false;
        }
    }
}
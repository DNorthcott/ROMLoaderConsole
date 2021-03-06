﻿using System;
using System.Collections.Generic;

namespace RomLoaderConsole
{
    public class Blend : IComparable
    {
        private List<string> cycle;


        public Blend()
        {
            cycle = new List<string>();
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

        public string Coal1 { set { AddCoalToCycle(0, value); } }

        public string Coal2 { set { AddCoalToCycle(2, value); } }

        public string Coal3 { set { AddCoalToCycle(3, value); } }

        public string Coal4 { set { AddCoalToCycle(4, value); } }

        public string Coal5 { set { AddCoalToCycle(5, value); } }

        public string Coal6 { set { AddCoalToCycle(6, value); } }

        public string Coal7 { set { AddCoalToCycle(7, value); } }

        public string Coal8 { set { AddCoalToCycle(8, value); } }

        public string Coal9 { set { AddCoalToCycle(9, value); } }

        public string Coal10 { set { AddCoalToCycle(10, value); } }

        public List<string> Cycle
        {
            get { return cycle; }
        }

        public void AddCoalToCycle(int cycleNum, string coal)
        {
            if (coal == null)
            {
                return;
            }
            if (cycle == null)
            {
                cycle = new List<string>();
            }
            
            cycle.Add(coal);
            
            
        }

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

            List<string> otherCycle = otherBlend.Cycle;

            if (DateOfBlend.Equals(otherBlend.DateOfBlend) && Priority == otherBlend.Priority)
            {
                if (otherCycle.Count == cycle.Count)
                {
                    for (int i = 0; i < cycle.Count; i++)
                    {
                        if (otherCycle[i] != cycle[i])
                        {
                            return false;
                        }
                    }
                    return true;
                }
            }
               
            return false;
        }
    }
}
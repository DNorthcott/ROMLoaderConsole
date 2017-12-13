﻿using System;
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
    }
}

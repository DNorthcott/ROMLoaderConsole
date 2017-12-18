using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RomLoaderConsole
{
    /// <summary>
    /// <p>
    /// A coal movement is the movement of coal from pit to ROM.  It contains the name of the truck, type of coal 
    /// and tonnage.
    /// </p>
    /// </summary>
    public class CoalMovement : IComparable
    {
        private string coal;
        private string truck;
        private string dateTimeArrival;
        private DateTime propDateTime;
        private string endLocation;

        /// <summary>
        /// Creates a new CoalEntry class.
        /// </summary>
        /// <param name="coal">The type of coal this wrapper contains.</param>
        /// <param name="truckName">The name of the truck that is moving the coal.</param>
        /// <param name="arrivalTime">The expected time of arrival of the truck in the ROM.</param>

        public CoalMovement()
        {

        }

        public CoalMovement(String coal, string truck, string dateTimeArrival)
        {
            this.coal = coal;
            this.truck = truck;
            DateTimeArrival = dateTimeArrival;
        }

        public string Truck
        {
            get { return truck; }
            set { truck = value; }
        }

        public string Coal
        {
            get { return coal; }
            set { coal = value; }
        }

        public string DateTimeArrival
        {
            get { return dateTimeArrival; }
            set
            {
                dateTimeArrival = value;
                propDateTime = Convert.ToDateTime(value);

            }
        }

        public DateTime PropDateTime
        {
            get { return propDateTime; }
        }

        /// <summary>
        /// Compares the trucks based on arrival time.  Eg earlier times are first and later times second.
        /// </summary>
        /// <param name="obj"></param>
        /// <returns>Less than 0 if the current instance precededs the object specified, same if 0 and greater than 1 if greater than.</returns>
        public int CompareTo(object obj)
        {
            CoalMovement otherCoalMovement = (CoalMovement)obj;

            return PropDateTime.CompareTo(otherCoalMovement.PropDateTime);
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

            CoalMovement otherMovement = (CoalMovement) obj;

            if (coal == otherMovement.Coal && truck == otherMovement.Truck &&
                propDateTime.Equals(otherMovement.PropDateTime))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}

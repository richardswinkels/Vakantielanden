using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfVakantieEindopdracht.Classes
{
    public class CustomerCountry
    {

        private int id;
        private int customerId;
        private int countryId;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public int CustomerId
        {
            get { return customerId; }
            set { customerId = value; }
        }
        public int CountryId
        {
            get { return countryId; }
            set { countryId = value; }
        }
    }
}

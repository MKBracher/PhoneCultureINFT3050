using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;

namespace PhoneCulture.Classes
{
    public class Product
    {
        public string productID { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public decimal unitPrice { get; set; }
        public string phoneType { get; set;  }
        public string imageFile { get; set; }
        public string type { get; set; }

    }


}
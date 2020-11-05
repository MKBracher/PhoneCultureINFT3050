using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace PhoneCulture.Classes
{
    public class conString
    {
        public static SqlConnection con;

        static conString()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);
        }

        public static ConnectionState State { get; internal set; }
    }
}
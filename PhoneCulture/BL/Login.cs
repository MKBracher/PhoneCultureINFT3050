using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PhoneCulture
{
    public class Login
    {
        private string _Email;
        private string _Password;

        DAL objDAL = new DAL();

        public string Email { get => _Email; set => _Email = value; }
        public string Password { get => _Password; set => _Password = value; }


        public bool UserLogin()
        {
            return objDAL.UserLogin(_Email, _Password);
        }

        public bool AdminLogin()
        {
            return objDAL.AdminLogin(_Email, _Password);
        }

    }
}
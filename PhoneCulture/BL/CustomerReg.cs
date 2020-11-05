using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PhoneCulture
{
    public class CustomerReg
    {
        private string _Email;
        private string _Password;
        private string _firstName;
        private string _lastName;
        private int _phoneNumber;

        DAL objDAL = new DAL();

        public string Email { get => _Email; set => _Email = value; }
        public string Password { get => _Password; set => _Password = value; }
        public string firstName { get => _firstName; set => _firstName = value; }
        public string lastName { get => _lastName; set => _lastName = value; }
        public int phoneNumber { get => _phoneNumber; set => _phoneNumber = value; }

        public bool Save()
        {
            try
            {
                DAL obj = new DAL();

                //obj.RegisterMemberData(_Email, _Password, _firstName, _lastName, _phoneNumber);
                return true;
            }
            
            catch(Exception ex)
            {
                throw new Exception("Not executed");
            }
        }

        public bool InsertUser()
        {
            try
            {
                objDAL.InsertUser(Email, Password, firstName, lastName, phoneNumber);
                return true;
            }
            
            catch (Exception ex)
            {
                throw new Exception("Not Executed");
            }


        }

        public object SelectUser()
        {
            return objDAL.SelectUser();
        }

    }
}
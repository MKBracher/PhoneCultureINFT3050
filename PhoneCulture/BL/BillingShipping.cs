using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PhoneCulture
{
    public class BillingShipping
    {
        private string _Email;
        private string _firstName;
        private string _lastName;
        private int _phoneNumber;
        private string _bAddress;
        private string _bState;
        private string _bCity;
        private int _bPostCode;
        private string _sAddress;
        private string _sState;
        private string _sCity;
        private int _sPostCode;

        DAL objDAL = new DAL();

        public string Email { get => _Email; set => _Email = value; }
        public string FirstName { get => _firstName; set => _firstName = value; }
        public string LastName { get => _lastName; set => _lastName = value; }
        public int PhoneNumber { get => _phoneNumber; set => _phoneNumber = value; }
        public string BAddress { get => _bAddress; set => _bAddress = value; }
        public string BState { get => _bState; set => _bState = value; }
        public string BCity { get => _bCity; set => _bCity = value; }
        public int BPostCode { get => _bPostCode; set => _bPostCode = value; }
        public string SAddress { get => _sAddress; set => _sAddress = value; }
        public string SState { get => _sState; set => _sState = value; }
        public string SCity { get => _sCity; set => _sCity = value; }
        public int SPostCode { get => _sPostCode; set => _sPostCode = value; }
    }
}
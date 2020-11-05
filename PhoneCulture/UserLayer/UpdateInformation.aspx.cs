using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace PhoneCulture
{
    public partial class WebForm6 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //This is to save data to variables to then put into the database
            String email, fName, lName, bAddress, bCity, bState, sAddress, sCity, sState;
            int phNumber, bPostCode, sPostCode;
            
            //if the page validates
            if (IsValid)
            {
                //insert into variables
                email = txtEmail1.Text;
                fName = txtFirstName.Text;
                lName = txtLastName.Text;
                phNumber = Convert.ToInt32(txtPhone.Text);
                bAddress = txtAddress.Text;
                bCity = txtCity.Text;
                bState = dropState.Text;
                bPostCode = Convert.ToInt32(txtPostCode.Text);

                //if the billing and shipping are the same address
                if (cbxShipping.Checked)
                {
                    sAddress = bAddress;
                    sCity = bCity;
                    sState = bState;
                    sPostCode = bPostCode;
                }

                else
                {
                    sAddress = txtAddress2.Text;
                    sCity = txtCity2.Text;
                    sState = dropState2.Text;
                    sPostCode = Convert.ToInt32(txtPostCode2.Text);
                }
            }
        }


        protected void cbxShipping_CheckedChanged(object sender, EventArgs e)
        {
            if (cbxShipping.Checked){
                //Disabling the fields so the user doesn't have to enter duplicate data.
                txtAddress2.Enabled = false;
                txtCity2.Enabled = false;
                dropState2.Enabled = false;
                txtPostCode2.Enabled = false;

                //Disabling the RFV 
                rfvAddress2.Enabled = false;
                rfvCity2.Enabled = false;
                rfvState2.Enabled = false;
                rfvPostCode2.Enabled = false;
            }

            else //Re enabling if they unclick the checkbox
            {
                txtAddress2.Enabled = true;
                txtCity2.Enabled = true;
                dropState2.Enabled = true;
                txtPostCode2.Enabled = true;

                rfvAddress2.Enabled = true;
                rfvCity2.Enabled = true;
                rfvState2.Enabled = true;
                rfvPostCode2.Enabled = true;

            }

            
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
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
            BillingShipping billingShipping = new BillingShipping();

            string bAddress = txtAddress.Text;
            string bCity = txtCity.Text;
            string bState = dropState.Text;
            int bPostCode = Convert.ToInt32(txtPostCode.Text);

            //if the page validates
            if (IsValid)
            {


                //insert into variables

                billingShipping.BAddress = bAddress;
                billingShipping.BCity = bCity;
                billingShipping.BState = bState;
                billingShipping.BPostCode = bPostCode;


                //if the billing and shipping are the same address
                if (cbxShipping.Checked)
                {
                    billingShipping.SAddress = bAddress;
                    billingShipping.SCity = bCity;
                    billingShipping.SState = bState;
                    billingShipping.SPostCode = bPostCode;
                }

                else
                {
                    billingShipping.SAddress = txtAddress2.Text;
                    billingShipping.SCity = txtCity2.Text;
                    billingShipping.SState = dropState2.Text;
                    billingShipping.SPostCode = Convert.ToInt32(txtPostCode2.Text);
                }
            }

            Response.Redirect("Payment.aspx");
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

        protected void btnBack_Click(object sender, EventArgs e)
        {

            Response.Redirect("Cart.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace PhoneCulture
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {


            CustomerReg CustReg = new CustomerReg();
            try
            {

                CustReg.Email = txtEmail1.Text;
                CustReg.Password = txtPassword.Text;
                CustReg.firstName = txtFirstName.Text;
                CustReg.lastName = txtLastName.Text;
                CustReg.phoneNumber = Convert.ToInt32(txtPhone.Text.ToString());

                #region saving the values

                bool status = CustReg.InsertUser();

                if (status)
                {
                    MessageBox.Show("You have successfully registered!");
                }
                else
                {
                    MessageBox.Show("Failed to Register");
                }

                #endregion
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }

            //CustomerReg CustReg = new CustomerReg();

            //CustReg.InsertUser(txtEmail1.Text, txtPassword.Text, txtFirstName.Text, txtLastName.Text, Convert.ToInt32(txtPhone.Text.ToString()));

            GridView1.DataSource = CustReg.SelectUser();
            GridView1.DataBind();
        }
    }
}
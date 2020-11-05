using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace PhoneCulture
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            {
                Login log = new Login();

                log.Email = txtEmail1.Text;
                log.Password = txtPassword.Text;
                bool status = log.AdminLogin();

                if (status)
                {
                    MessageBox.Show("Logged In");
                    Session["role"] = "admin";
                    Response.Redirect("index.aspx");
                }

            }
        }
    }
}
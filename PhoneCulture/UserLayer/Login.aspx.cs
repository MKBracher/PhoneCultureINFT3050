using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace PhoneCulture
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Login log = new Login();

            log.Email = txtEmail1.Text;
            log.Password = txtPassword.Text;
            bool status = log.UserLogin();

            if (status)
            {
                MessageBox.Show("Logged In");
                Session["role"] = "user";
                Response.Redirect("index.aspx");
            }


        }

    }
}
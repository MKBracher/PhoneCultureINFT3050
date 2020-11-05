using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneCulture
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (Session["role"].Equals(""))
                {
                    lbLogin.Visible = true;
                    lbRegister.Visible = true;
                    lbAdminLogin.Visible = true;
                    lbLogout.Visible = false;
                }

                else if (Session["role"].Equals("user"))
                {
                    lbLogin.Visible = false;
                    lbRegister.Visible = false;
                    lbAdminLogin.Visible = false;
                    lbLogout.Visible = true;
                }

                else if (Session["role"].Equals("admin"))
                {
                    lbLogin.Visible = false;
                    lbRegister.Visible = false;
                    lbAdminLogin.Visible = false;
                    lbLogout.Visible = true;
                }


            }

            catch (Exception ex)
            {

            }

        }

        protected void lbAboutUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

        protected void lbContactUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs.aspx");
        }

        protected void lbAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }

        protected void lbCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void lbLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void lbRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            Session["role"] = "";
            Response.Redirect("index.aspx");
        }

        protected void lbEditItems_Click(object sender, EventArgs e)
        {
            Response.Redirect("editItems.aspx");
        }
    }
}
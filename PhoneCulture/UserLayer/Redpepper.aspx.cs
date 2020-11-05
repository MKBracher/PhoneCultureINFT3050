using PhoneCulture.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneCulture
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Product redpepper = new Product();
            redpepper.name = "Redpepper";
            redpepper.description = "These cases are great quality protective cases. They have ip68 water and dust resistance which means you can drop them in the pool and not worry!";
            redpepper.unitPrice = 70;
            redpepper.type = dropPhone.Text;


            CartItemList cart = CartItemList.GetCart();
            CartItem cartItem = cart[0];

            if (cartItem == null)
            {
                cart.AddItem(redpepper, Convert.ToInt32(dropQuantity.Text));
            }

            Response.Redirect("~/Cart.aspx");


        }
    }
}
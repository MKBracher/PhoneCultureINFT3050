using PhoneCulture.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneCulture
{
    public partial class WebForm11 : System.Web.UI.Page
    {

        private CartItemList cart;

        protected void Page_Load(object sender, EventArgs e)
        {
            //retrieve cart object from session state on every postback
            cart = CartItemList.GetCart();
            //on initial page load, art cart items to list control
            if (IsPostBack) this.DisplayCart();
        }

        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            // if cart has items, clear both cart and list control
            if (cart.Count > 0)
            {
                cart.Clear();
                firstCart.Items.Clear();
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            //if cart contains items and user has selected an item
            if (cart.Count > 0)
            {
                if(firstCart.SelectedIndex > -1)
                {
                    //remove selected item from cart and re-display cart 
                    cart.RemoveAt(firstCart.SelectedIndex);
                    this.DisplayCart();
                }

                else // if no item is selected, notify user 
                {
                    lblMessage.Text = "Please select the item to remove.";
                }
            }
        }
        private void DisplayCart()
        {
            //remove all current items from list control
            firstCart.Items.Clear();

            //loop through cart and add each item's display value to the list
            for (int i=0; i<cart.Count; i++)
            {
                firstCart.Items.Add(cart[i].Display());
            }
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Payment.aspx");
        }
    }
}
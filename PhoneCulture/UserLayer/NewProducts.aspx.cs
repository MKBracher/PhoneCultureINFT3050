using PhoneCulture.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneCulture
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PhoneCulture_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Product selectedProduct = GetSelectedProduct();
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.productID];

                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct, Convert.ToInt32(txtQuantity.Text));
                };
            }
        }

        private Product GetSelectedProduct()
        {
            DataView productsTable = (DataView)
                SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            DataRowView row = productsTable[0];

            Product p = new Product();
            p.productID = row["productID"].ToString();
            p.name = row["name"].ToString();
            p.shortDescription = row["shortDescription"].ToString();
            p.description = row["description"].ToString();
            p.unitPrice = (decimal)row["price"];
            p.imageFile = row["image"].ToString();
            return p;
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {

        }
    }
}
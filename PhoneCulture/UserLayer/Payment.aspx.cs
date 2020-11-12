using INFT3050.PaymentSystem;
using PhoneCulture.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneCulture
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        private CartItemList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            cart = CartItemList.GetCart();
            decimal totalPrice = Convert.ToDecimal(Session["TotalPrice"]);
            lblTotalPrice.Text = "Total Price: " + Convert.ToString(totalPrice);
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            IPaymentSystem paymentSystem = INFT3050PaymentFactory.Create();

            PaymentRequest payment = new PaymentRequest();

            payment.CardName = txtCardName.Text;
            payment.CardNumber = txtCardNumber.Text;
            payment.CVC = Convert.ToInt32(txtCVC.Text);
            payment.Expiry = DateTime.Parse(txtExpiryDate.Text);
            payment.Amount = 200;
            payment.Description = "test";
            var task = paymentSystem.MakePayment(payment);

            if (task.IsCompleted)
            {
                //showTransactionResult(task.Result);
            }

            cart.Clear();
            Response.Redirect("Confirmation.aspx");
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}
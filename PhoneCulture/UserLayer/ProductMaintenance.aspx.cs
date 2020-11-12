using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoneCulture
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void grdProducts_PreRender(object sender, EventArgs e)
        {
            try
            {
                grdProducts.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            catch (Exception ex)
            {

            }
            


        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {

                var parameters = SqlDataSource1.InsertParameters;
                parameters["name"].DefaultValue = txtName.Text;
                parameters["shortDescription"].DefaultValue = txtShortDescription.Text;
                parameters["description"].DefaultValue = txtDescription.Text;
                parameters["price"].DefaultValue = txtPrice.Text;
                parameters["image"].DefaultValue = txtImage.Text;
                try
                {
                    SqlDataSource1.Insert();
                    txtName.Text = "";
                    txtShortDescription.Text = "";
                    txtDescription.Text = "";
                    txtPrice.Text = "";
                    txtImage.Text = "";
                }
                catch(Exception ex)
                {
                    lblError.Text = DatabaseErrorMessage(ex.Message);
                }
            }
        }

        protected void grdProducts_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblError.Text = DatabaseErrorMessage(e.Exception.Message);
                e.ExceptionHandled = true;
                e.KeepInEditMode = true;
            }

            else if(e.AffectedRows == 0)
            {
                lblError.Text = ConcurrencyErrorMessage();
            }
        }

        protected void grdProducts_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblError.Text = DatabaseErrorMessage(e.Exception.Message);
                e.ExceptionHandled = true;
            }

            else if (e.AffectedRows == 0)
            {
                lblError.Text = ConcurrencyErrorMessage();
            }
        }

        private string DatabaseErrorMessage(string errorMsg)
        {
            return $"<b> A database error has occurred:</b> {errorMsg}";
        }

        private string ConcurrencyErrorMessage()
        {
            return "Another user may have updated that product. " + "Please try again";
        }

    }
}
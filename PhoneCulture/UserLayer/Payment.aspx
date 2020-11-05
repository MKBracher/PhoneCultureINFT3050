<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="PhoneCulture.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2>Payment</h2>

        <h3>Total Cost:</h3>

        <div class="form-group">
            <label class="control-label col-sm-3">
                Card Number
            </label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control" TextMode="SingleLine">
                </asp:TextBox>
            </div>

        </div>

        <div class="form-group">
            <label class="control-label col-sm-3">Expiry Date</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="form-control" TextMode="SingleLine">
                </asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3">CVV</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtCVV" runat="server" CssClass="form-control" TextMode="SingleLine">
                </asp:TextBox>
            </div>
        </div>


        <div class="form-group">
            <asp:Button ID="btnPayment" runat="server" Text="Pay" OnClick="btnPayment_Click" />
            </div>

</asp:Content>

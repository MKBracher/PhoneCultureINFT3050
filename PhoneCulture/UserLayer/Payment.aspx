<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="PhoneCulture.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 41.666667%;
            flex: 0 0 41.666667%;
            max-width: 41.666667%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Payment</h2>

    <h3><asp:Label ID="lblTotalPrice" runat="server"></asp:Label></h3>

    <div class="form-group">
        <label class="control-label col-sm-3">
            Card Name
        </label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtCardName" runat="server" CssClass="form-control" TextMode="SingleLine">
            </asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvCardName" runat="server" ErrorMessage="Card Name"
                CssClass="text-danger" Display="Dynamic" ControlToValidate="txtCardName">Required</asp:RequiredFieldValidator>
         </div>

    </div>
    <div class="form-group">
        <label class="control-label col-sm-3">
            Card Number
        </label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control" TextMode="SingleLine">
            </asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ErrorMessage="Card Number"
                CssClass="text-danger" Display="Dynamic" ControlToValidate="txtCardNumber">Required</asp:RequiredFieldValidator>
         </div>

    </div>

    <div class="form-group">
        <label class="control-label col-sm-3">Expiry Date</label>
        <div class="auto-style1">
            <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvExpiryDate" runat="server" ErrorMessage="Expiry Date"
                CssClass="text-danger" Display="Dynamic" ControlToValidate="txtExpiryDate">Required</asp:RequiredFieldValidator>
         </div>
    </div>


    <div class="form-group">
        <label class="control-label col-sm-3">CVC</label>
        <div class="col-sm-5">
            <asp:TextBox ID="txtCVC" runat="server" CssClass="form-control" TextMode="SingleLine">
            </asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="rfvCVC" runat="server" ErrorMessage="CVC"
                CssClass="text-danger" Display="Dynamic" ControlToValidate="txtCVC">Required</asp:RequiredFieldValidator>
         </div>
    </div>


    <div class="form-group">
        <asp:Button ID="btnPayment" runat="server" Text="Pay" OnClick="btnPayment_Click" />
        <asp:Button ID="btnCart" runat="server" Text="Back to Cart" OnClick="btnCart_Click" />
        </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="PhoneCulture.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-sm=12"><h1>Your Shopping Cart</h1></div>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="col=col-sm-12">
                        <asp:ListBox ID="cart1" runat="server" CssClass="form-control"></asp:ListBox>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:Button ID="btnRemove" runat="server" Text="Remove Item" Class="btn btn-outline-danger" OnClick="btnRemove_Click" />
                    </div>
                    <div class="col-sm-12">
                        <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" Class="btn btn-danger" OnClick="btnEmpty_Click" />
                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="form-group">
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="false" CssClass="text-info col-sm-12">
                    </asp:Label>
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:Button ID="btnContinue" runat="server" 
                            PostBackUrl="~/Products.aspx" Text="Continue Shopping" Class="btn btn-secondary" />
                        <asp:Button ID="btnCheckout" runat="server" Text="Check Out" class="btn btn-primary" OnClick="btnCheckout_Click" />
                    </div>
                </div>
            </div>
        </div>

</asp:Content>

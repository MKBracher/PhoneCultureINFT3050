<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="PhoneCulture.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-sm-12"><h1>Your shopping cart</h1></div>
        <div class="col-sm-6">
            <div class="form-group">
                <div class="col-sm-12">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                    <asp:ListBox ID= "firstCart" runat="server" CssClass="form-control"></asp:ListBox>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:Button ID="btnRemove" runat="server" Text="Remove Item"
                            OnClick="btnRemove_Click" CssClass="btn" />
                    </div>
                    <div class="col-sm-12"><asp:Button ID="btnEmpty"
                        runat="server" Text="Empty Cart" OnClick="btnEmpty_Click"
                        CssClass="btn" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="form-group">
                <asp:Label ID="lblMessage" runat="server"
                    EnableViewState="false"
                    CssClass="text-info col-sm-12"></asp:Label>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <asp:Button ID="btnContinue" runat="server"
                        PostBackUrl="~/UserLayer/NewProducts.aspx"
                        Text="Continue Shopping" CssClass="btn" />
                    <asp:Button ID="btnCheckOut" runat="server"
                        Text="Check Out" OnClick="btnCheckout_Click"
                        CssClass="btn" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EditItems.aspx.cs" Inherits="PhoneCulture.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-sm=12"><h1>Your Shopping Cart</h1></div>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="col=col-sm-12">
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                        <br />
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:Button ID="btnAddItem" runat="server" Text="Add Item" Class="btn btn-outline-success" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnEditItem" runat="server" Text="Edit Item" Class="btn btn-outline-info" OnClick="btnEdit_Click" />
                        <asp:Button ID="btnRemove" runat="server" Text="Remove Item" Class="btn btn-outline-danger" OnClick="btnRemove_Click" />
                    </div>
                    <div class="col-sm-12">
                    </div>

                </div>
            </div>
        </div>

</asp:Content>
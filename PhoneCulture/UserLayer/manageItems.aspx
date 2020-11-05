<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="manageItems.aspx.cs" Inherits="PhoneCulture.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form runat="server">
    <h2>Manage Items</h2>


    <div class="form-group">
        <asp:Button ID="btnDeleteItem" runat="server" Text="Delete An Item"  class="btn btn-danger" OnClick="deleteItem_Click" />
        <asp:Button ID="btnManageItem" runat="server" Text="View Transactions" class="btn btn-info" OnClick="btnManageItem_Click" />
        <asp:Button ID="btnAddItem" runat="server" Text="Activate" class="btn btn-success" OnClick="btnAddItem_Click" />
    </div>

    <div class="form-group">

    </div>
    


</form>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="userAccounts.aspx.cs" Inherits="PhoneCulture.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <h3>User Accounts</h3>
        <h4>*Active User Account*</h4>

    <div class="form-group">
        <asp:Button ID="btnSuspend" runat="server" Text="Suspend" OnClick="btnSuspend_Click" class="btn btn-danger" />
        <asp:Button ID="btnTransactions" runat="server" Text="View Transactions" class="btn btn-info" />
        <asp:Button ID="btnActivate" runat="server" Text="Activate" class="btn btn-success" />
    </div>

    <div class="form-group">

    </div>
    


</form>
</asp:Content>

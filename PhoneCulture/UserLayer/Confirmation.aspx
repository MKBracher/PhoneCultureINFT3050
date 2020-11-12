<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="PhoneCulture.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:Label ID="lblSuccess" runat="server" Text="You have successfully paid!"></asp:Label>
    </div>

    <div>
        <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
    </div>


</asp:Content>

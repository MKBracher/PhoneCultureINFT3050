<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PhoneCulture.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3>User Login</h3>
        <div class="form-group">
            <label class="control-label col-sm-3">
                Email Address:
            </label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control" TextMode="Email">
                </asp:TextBox>
            </div>

        </div>

        <div class="form-group">
            <label class="control-label col-sm-3">Password:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password">
                </asp:TextBox>
            </div>
        </div>


        <div class="form-group">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
            </div>
</asp:Content>

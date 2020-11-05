<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PhoneCulture.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3>Register</h3>
        <div class="form-group">
            <label class="control-label col-sm-3">
                Email Address:
            </label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control" TextMode="Email">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvEmail1" runat="server" ErrorMessage="Email address"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtEmail1">Required</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail1" runat="server" ErrorMessage="Email address"
                    CssClass="text-danger" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtEmail1">
                    Must be a valid email address
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">
                Email Re-entry:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtEmail2" runat="server" CssClass="form-control" TextMode="Email">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvEmail2" runat="server" ErrorMessage="Email re-entry"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtEmail2">Required</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvEmail2" runat="server" ErrorMessage="Email re-entry" CssClass="text-danger"
                    Display="Dynamic" ControlToValidate="txtEmail2" ControlToCompare="txtEmail1">Must match first email address</asp:CompareValidator>
            </div>
        </div>
        
        <div class="form-group">
            <label class="control-label col-sm-3">First Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" TextMode="SingleLine">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="First Name"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtFirstName">Required</asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3">Last Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" TextMode="SingleLine">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Last Name"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtLastName">Required</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Phone Number:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="SingleLine">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Phone Number"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtPhone">Required</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Phone Number"
                    CssClass="text-danger" Display="Dynamic" ValidationExpression="\d{10}"
                    ControlToValidate="txtPhone">
                    Enter a 10 digit number
                </asp:RegularExpressionValidator>

            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Password:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtPassword">Required</asp:RequiredFieldValidator>
            </div>
        </div>
                <div class="form-group">
            <label class="control-label col-sm-3">Password:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtPassword2" runat="server" CssClass="form-control" TextMode="Password">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvPassword2" runat="server" ErrorMessage="Confirm Password"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtPassword2">Required</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="Confirm Password" CssClass="text-danger"
                    Display="Dynamic" ControlToValidate="txtPassword2" ControlToCompare="txtPassword">Passwords must match!</asp:CompareValidator>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </div>
        </div>


        <div class="form-group">
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click"/>
            </div>

</asp:Content>

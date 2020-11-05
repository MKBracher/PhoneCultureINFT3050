<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UpdateInformation.aspx.cs" Inherits="PhoneCulture.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 278px;
        }
        .auto-style2 {
            width: 278px;
            height: 29px;
        }
        .auto-style3 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <h1 style='text-align:center; padding-top:5%;'>Update Information</h1>
        <h3>Contact Information</h3>
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
        <h3>Billing Address</h3>
        <div class="form-group">
            <label class="control-label col-sm-3">Address</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="SingleLine">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtAddress">Required</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">City</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" TextMode="SingleLine">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Address"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtCity">Required</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">State</label>
            <div class="col-sm-5">
                <asp:DropDownList ID="dropState" runat="server" CssClass="form-control" TextMode="SingleLine">
                <asp:ListItem Enabled="true" Text="Select State"></asp:ListItem>
                <asp:ListItem Text="NSW" Value="1"></asp:ListItem>
                <asp:ListItem Text="Queensland" Value="2"></asp:ListItem>
                <asp:ListItem Text="Victoria" Value="3"></asp:ListItem>
                <asp:ListItem Text="South Australia" Value="4"></asp:ListItem>
                <asp:ListItem Text="Western Australia" Value="5"></asp:ListItem>
                <asp:ListItem Text="Northern Territory" Value="6"></asp:ListItem>
                <asp:ListItem Text="Tasmania" Value="7"></asp:ListItem>
                <asp:ListItem Text="Canberra" Value="8"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="Please select a state "
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="dropState"
                    InitialValue="Select State">Required</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Post Code</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtPostCode" runat="server" CssClass="form-control" TextMode="SingleLine">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvPostCode" runat="server" ErrorMessage="Address"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtPostCode">Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Post Code"
                    CssClass="text-danger" Display="Dynamic" ValidationExpression="\d{4}"
                    ControlToValidate="txtPostCode">
                    Enter a valid post code
                </asp:RegularExpressionValidator>
            </div>

        </div>
        <h3>Shipping Address</h3> <asp:CheckBox ID="cbxShipping" runat="server" Text="Same as billing address?" AutoPostBack="True" OnCheckedChanged="cbxShipping_CheckedChanged" />

        <div class="form-group">
            <label class="control-label col-sm-3">Address</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvAddress2" runat="server" ErrorMessage="Address"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtAddress2">Required</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">City</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtCity2" runat="server" CssClass="form-control" TextMode="SingleLine">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvCity2" runat="server" ErrorMessage="Address"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtCity2">Required</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">State</label>
            <div class="col-sm-5">
                <asp:DropDownList ID="dropState2" runat="server" CssClass="form-control">
                <asp:ListItem Selected="True" Text="Select State"></asp:ListItem>
                <asp:ListItem Text="NSW" Value="1"></asp:ListItem>
                <asp:ListItem Text="Queensland" Value="2"></asp:ListItem>
                <asp:ListItem Text="Victoria" Value="3"></asp:ListItem>
                <asp:ListItem Text="South Australia" Value="4"></asp:ListItem>
                <asp:ListItem Text="Western Australia" Value="5"></asp:ListItem>
                <asp:ListItem Text="Northern Territory" Value="6"></asp:ListItem>
                <asp:ListItem Text="Tasmania" Value="7"></asp:ListItem>
                <asp:ListItem Text="Canberra" Value="8"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvState2" runat="server" ErrorMessage="Please select a state "
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="dropState2"
                    InitialValue="Select State">Required</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Post Code</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtPostCode2" runat="server" CssClass="form-control" TextMode="SingleLine">
                </asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvPostCode2" runat="server" ErrorMessage="Address"
                    CssClass="text-danger" Display="Dynamic" ControlToValidate="txtPostCode2">Required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Post Code"
                    CssClass="text-danger" Display="Dynamic" ValidationExpression="\d{4}"
                    ControlToValidate="txtPostCode">
                    Enter a valid post code
                </asp:RegularExpressionValidator>
            </div>

        </div>

        <div class="form-group">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"/>
            </div>

    </form>
</asp:Content>

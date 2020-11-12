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

        <h1 style='text-align:center; padding-top:5%;'>Update Information</h1>
        
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
            <asp:Button ID="btnUpdate" runat="server" Text="Checkout" OnClick="btnUpdate_Click"/>
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" CausesValidation="False" />
            </div>


</asp:Content>

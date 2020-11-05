<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="NewProducts.aspx.cs" Inherits="PhoneCulture.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="PhoneCulture" runat="server" ConnectionString="<%$ ConnectionStrings:DB %>" SelectCommand="SELECT * FROM [product] ORDER BY [name]" OnSelecting="PhoneCulture_Selecting"></asp:SqlDataSource>


    <div class="row"> <%-- row 1: Drop-DropDownList list --%>
        <div class="col-sm-6">
            <label class="col-sm-">Please select a product:</label>
            <div class="col-sm-6">
                <asp:DropDownList ID="ddlProducts" runat="server"
                    AutoPostBack="true" DataSourceID="SqlDataSource1"
                    DataTextField="Name" DataValueField="productID"
                    CssClass="form-control">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB %>"
                    SelectCommand="SELECT * FROM [product] ORDER BY [name]"></asp:SqlDataSource>
            </div>
        </div>
    </div> <%-- End of row 1 --%>

    <div class="row"><%-- Row2: FormView Control --%>
        <asp:FormView ID="FormView1" runat="server"
            DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <div class="col-sm-12">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4>
                                <asp:Label Text='<%# Eval("Name") %>'
                                    runat="server" /></h4></div></div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4>
                                <asp:Label Text='<%# Eval("ShortDescription") %>'
                                    runat="server" /></h4></div></div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4>
                                <asp:Label Text='<%# Eval("description") %>'
                                    runat="server" /></h4></div></div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label ID="lblUnitPrice" ClientIDMode="Static"
                                Text='<%# Eval("price", "{0:c} each") %>'
                                runat="server" />
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <asp:Image ID="imgProduct" runat="server"
                            ImageUrl='<%# Eval("image", "../Images/{0}") %>' />
                    </div>
                </div>
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB %>"
                    SelectCommand="SELECT * FROM [product] WHERE (ProductID = @ProductID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlProducts" Name="ProductID"
                            PropertyName="SelectedValue" Type="String">
                        </asp:ControlParameter>
                    </SelectParameters>
        </asp:SqlDataSource>
    </div> <%--End of row 2 --%>

    <div class="row"> <%-- row 3: quantity, buttons --%>
        <div class="col-sm-12">
            <div class="form-group">
                <label class="col-sm-1">Quantity</label>
                <div class="col-sm-3">
                    <asp:TextBox ID="txtQuantity" runat ="server"
                        CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        CssClass="text-danger" runat="server"
                        ControlToValidate="txtQuantity" Display="Dynamic"
                        ErrorMessage="Quantity is a required field.">
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server"
                        CssClass="text-danger"
                        ControlToValidate="txtQuantity" Display="Dynamic"
                        ErrorMessage="Quantity must range from 1-10"
                        MaximumValue="10" MinimumValue="1" Type="Integer">
                    </asp:RangeValidator>
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:Button ID="btnAdd" runat="server" Text="Add To Cart"
                            onclick="btnAdd_Click" CssClass="btn btn-default" />
                        <asp:Button ID="btnCart" runat="server" Text="Go to Cart" 
                            PostBackUrl="~/UserLayer/Cart.aspx" CausesValidation="false"
                            CssClass="btn btn-default" OnClick="btnCart_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div> <%-- End of row 3  --%>

</asp:Content>

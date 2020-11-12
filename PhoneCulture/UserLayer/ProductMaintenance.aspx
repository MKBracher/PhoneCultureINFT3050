<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ProductMaintenance.aspx.cs" Inherits="PhoneCulture.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xs-12 table-responsive">
        <h1>Product Maintenance</h1>
        <asp:GridView ID="grdProducts" runat="server"
            AutoGenerateColumns="false" DataKeyNames="productID"
            DataSourceID="SqlDataSource1"
            CssClass="table table-bordered table-condensed table-hover"
            OnPreRender="grdProducts_PreRender"
            OnRowDeleted="grdProducts_RowDeleted"
            OnRowUpdated="grdProducts_RowUpdated">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ID"
                    ReadOnly="true">
                    <ItemStyle CssClass="col-xs-1" />
                </asp:BoundField>
                <asp:BoundField DataField="name"
                    HeaderText ="Name"
                    SortExpression="name">
                    <ItemStyle CssClass="col-xs-3" />
                </asp:BoundField>
                <asp:BoundField DataField="shortDescription"
                    HeaderText ="Short Description"
                    SortExpression="shortDescription">
                    <ItemStyle CssClass="col-xs-3" />
                </asp:BoundField>
                <asp:BoundField DataField="description"
                    HeaderText ="Description"
                    SortExpression="description">
                    <ItemStyle CssClass="col-xs-3" />
                </asp:BoundField>
                <asp:BoundField DataField="price"
                    HeaderText ="Price"
                    SortExpression="price">
                    <ItemStyle CssClass="col-xs-3" />
                </asp:BoundField>
                <asp:BoundField DataField="image"
                    HeaderText ="Image Link"
                    SortExpression="image">
                    <ItemStyle CssClass="col-xs-3" />
                </asp:BoundField>
                <asp:CommandField CausesValidation="false"
                    ShowEditButton="true">
                    <ItemStyle CssClass="col-xs-1 text-danger" />
                </asp:CommandField>
                <asp:CommandField CausesValidation="false"
                    ShowDeleteButton="true">
                    <ItemStyle CssClass="col-xs-1 text-danger" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:DB %>"
            ConflictDetection="CompareAllValues"
            OldValuesParameterFormatString="original_{0}"
            SelectCommand="SELECT * FROM [product]"
            DeleteCommand="DELETE FROM [product] 
            WHERE [productID] = @original_productID"
            InsertCommand ="INSERT INTO [product]
            VALUES(@name,  @shortDescription, @description, @price, @image)"
            UpdateCommand ="UPDATE [product]
            SET [name] = @name, 
            [shortDescription] = @shortDescription,
            [description] = @description,
            [price] = @price,
            [image] = @image
            WHERE [productID] = @original_productID">
            <DeleteParameters>
                <asp:Parameter Name="orignal_productID" Type="String" />
                <asp:Parameter Name="orignal_name" Type="String" />
                <asp:Parameter Name="orignal_shortDescription" Type="String" />
                <asp:Parameter Name="orignal_description" Type="String" />
                <asp:Parameter Name="orignal_price" Type="Decimal" />
                <asp:Parameter Name="orignal_image" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="productID" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="shortDescription" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="original_productID" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="shortDesciption" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="image" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="col-xs-12">
            <p>To create a new product, enter the product information and click Add New Product</p>
            <p><asp:Label ID="lblError" runat="server" EnableViewState="false"
                CssClass="text-danger"></asp:Label></p>
            <div class="form-group">
                <label for="txtName" class="col-sm-2">Name</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtName" runat="server"
                        MaxLength="20" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-offset-2 col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvName"
                        runat="server" ControlToValidate="txtName"
                        CssClass="text-danger"
                        ErrorMessage="Name is a required field">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="txtShortDescription" class="col-sm-2">Short Description</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtShortDescription" runat="server"
                        MaxLength="50" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-offset-2 col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvShortDescription"
                        runat="server" ControlToValidate="txtShortDescription"
                        CssClass="text-danger"
                        ErrorMessage="Short Description is a required field">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="txtDescription" class="col-sm-2">Description</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtDescription" runat="server"
                        MaxLength="100" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-offset-2 col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvDescription"
                        runat="server" ControlToValidate="txtDescription"
                        CssClass="text-danger"
                        ErrorMessage="Description is a required field">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="txtPrice" class="col-sm-2">Price</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtPrice" runat="server"
                        MaxLength="20" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-offset-2 col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvPrice"
                        runat="server" ControlToValidate="txtPrice"
                        CssClass="text-danger"
                        ErrorMessage="Price is a required field">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="txtImage" class="col-sm-2">Image Link</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtImage" runat="server"
                        MaxLength="50" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-offset-2 col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvImage"
                        runat="server" ControlToValidate="txtImage"
                        CssClass="text-danger"
                        ErrorMessage="Image is a required field">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <asp:Button ID="btnAdd" runat="server" Text="Add New Product"
                CssClass="btn" OnClick="btnAdd_Click" />

        </div>
            
            
            
    </div>




</asp:Content>

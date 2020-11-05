<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CanvasDiary.aspx.cs" Inherits="PhoneCulture.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form class="form-inline my-2 my-lg-0 justify-content-center">
      <h2 class="productSearch">Products</h2>

    </form>
<ul class="nav nav-pills justify-content-center">
  <li class="nav-item">
    <a class="nav-link active" href="CanvasDiary.aspx">Canvas Diary
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Redpepper.aspx">Redpepper</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="iFace.aspx">iFace</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="X-Doria.aspx">X-Doria Defense</a>
  </li>
</ul>


<div class="container carouselProduct">
    <div class="row">
        <div class="col-sm-6">
            <div id="carouselExampleControls" class="carousel slide" data-interval="false">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-100" src="../Images/CanvasDiaryBlue.jpeg" alt="First slide"/>
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="../Images/CanvasDiaryGrey.jpeg" alt="Second slide"/>
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="../Images/CanvasDiaryRed.jpeg" alt="Third slide"/>
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
        </div>
        <div class="col-sm-6">
                <h3>Canvas Diary</h3>
                <p>A stylish flip case that can stand up by itself! You can also talk with it closed!</p>
                <h2>Price: $35.00</h2>

                <div class="form-group">
                    <label class="control-label col-sm-6">
                            Phone:
                    </label>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="dropPhone" runat="server" CssClass="form-control" TextMode="SingleLine" AutoPostBack="true">
                        <asp:ListItem Enabled="true" Text="Select Phone"></asp:ListItem>
                        <asp:ListItem Text="iPhone 8" Value="1"></asp:ListItem>
                        <asp:ListItem Text="iPhone 11" Value="2"></asp:ListItem>
                        <asp:ListItem Text="iPhone 11 Pro" Value="3"></asp:ListItem>
                        <asp:ListItem Text="iPhone 11 Pro Max" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Samsung s20" Value="5"></asp:ListItem>
                        <asp:ListItem Text="Samsung s20+" Value="6"></asp:ListItem>
                        <asp:ListItem Text="Samsung note20" Value="7"></asp:ListItem>
                        <asp:ListItem Text="Samsung note20 Ultra" Value="8"></asp:ListItem>


                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-4">
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Please select a phone "
                            CssClass="text-danger" Display="Dynamic" ControlToValidate="dropPhone"
                            InitialValue="Select Phone">Required</asp:RequiredFieldValidator>
                     </div>

                </div>


                <div class="form-group">
                    <label class="control-label col-sm-6">
                        Colour:
                    </label>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="dropColour" runat="server" CssClass="form-control" TextMode="SingleLine" AutoPostBack="true">
                        <asp:ListItem Enabled="true" Text="Select Colour"></asp:ListItem>
                        <asp:ListItem Text="Black" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Grey" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Blue" Value="3"></asp:ListItem>
                        <asp:ListItem Text="White" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Pink" Value="5"></asp:ListItem>

                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="rfvColour" runat="server" ErrorMessage="Please select a colour "
                        CssClass="text-danger" Display="Dynamic" ControlToValidate="dropColour"
                        InitialValue="Select Colour">Required</asp:RequiredFieldValidator>
                     </div>

                </div>

                <div class="form-group">
                    <label class="control-label col-sm-6">Quantity:</label>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="dropQuantity" runat="server" CssClass="form-control" TextMode="SingleLine" AutoPostBack="true">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>

                        </asp:DropDownList>
                    </div>
                </div>


                <div class="form-group">
                    <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" />
                    </div>


        </div>
    </div>
</div>

</asp:Content>

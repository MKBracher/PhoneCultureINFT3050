<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="PhoneCulture.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <img class="card-img-top" src="../Images/CanvasDiaryCollection2.jpg" alt="Canvas Diary Image"/>
        <h5 class="card-title">Canvas Diary</h5>
        <p class="card-text">A flip case for any occasion.</p>
        <a href="CanvasDiary.aspx" class="btn btn-primary">Check them out!</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <img class="card-img-top" src="../Images/RedpepperCollection.jpeg" alt="Redpepper Image"/>
        <h5 class="card-title">Redpepper</h5>
        <p class="card-text">Drop your phone in water often?
        </p>
        <a href="Redpepper.aspx" class="btn btn-primary">Check them out!</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <img class="card-img-top" src="../Images/iFaceColleciton.jpeg" alt="iFace Image"/>
        <h5 class="card-title">iFace</h5>
        <p class="card-text">Simple and stylish.</p>
        <a href="iFace.aspx" class="btn btn-primary">Check them out!</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <img class="card-img-top" src="../Images/XDoriaIridescent.jpeg" alt="X-Doria Image"/>
        <h5 class="card-title">X-Doria Defense</h5>
        <p class="card-text">They have defense in the name.</p>
        <a href="X-Doria.aspx" class="btn btn-primary">Check them out!</a>
      </div>
    </div>
  </div>
</div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PhoneCulture.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
    <div class="row">
      <div class="col-sm-6">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">View our list of products</h5>
            <p class="card-text">We supply a wide range of phone cases and accessories! Click here to check them out.</p>
            <a href="products.aspx" class="btn btn-info">Products</a>
          </div>
        </div>
      </div>
      <div class="col-sm-6">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">About Us</h5>
            <p class="card-text">We're not just interested in sales, we're interested in quality! Want to hear more about us?</p>
            <a href="aboutUs.aspx" class="btn btn-info">About Us</a>
          </div>
        </div>
      </div>
    </div>
</div>


</asp:Content>

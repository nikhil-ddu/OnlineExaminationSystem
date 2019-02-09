<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="OnlineExaminationSystem.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
<link rel="stylesheet" href="css/animate.min.css"/>
    <link rel="stylesheet" href="css/animate.css"/>
    <link rel="stylesheet" href="css/StyleSheet1.css" />
    <link rel="stylesheet" href="~/Content/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="w3.css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="css/theme.css" />
    <link rel="stylesheet" href="css/signin.css"  />
    <link rel="stylesheet" href="css/abc.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="form-group co">
    <p class="featurette-heading text-muted">Call us at</p>
        <asp:Image ID="Image1" runat="server" CssClass="img-responsive" ImageUrl="images/logo2.jpg"/>
  </div>
    <div class="form-group">
        <p class="lead">
   +911234567890
        </p></div>
    
    <div class="form-group co">
    <p class="featurette-heading text-muted">Send us email at</p>
        <asp:Image ID="Image2" runat="server" CssClass="img-responsive" ImageUrl="images/logo3.jpg"/>
  </div>
    <div class="form-group">
        <p class="lead">
   Query:-onlineexaminationsystemd1@gmail.com
        </p></div>
        

</asp:Content>

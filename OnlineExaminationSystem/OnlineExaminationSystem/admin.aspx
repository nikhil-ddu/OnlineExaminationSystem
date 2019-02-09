<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="OnlineExaminationSystem.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="featurette-heading">Welcome<asp:Label ID="Label1" runat="server" Text="Label"/></h2>
    <p class="lead">Here You can,</p>
    <p class="lead">Add questionpaper</p>
    <p class="lead">Update questionpaper</p>
    <p class="lead">Delete questionpaper</p><br/>

    <h2 class="featurette-heading">Select operation you want to perform</h2>
    <div class="form-group">
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown btn-lg">
        <asp:ListItem Text="ADD" Value="add"></asp:ListItem>
        <asp:ListItem Text="UPDATE" Value="update"></asp:ListItem>
        <asp:ListItem Text="DELETE" Value="delete"></asp:ListItem>
    </asp:DropDownList>
        </div>
    
    <asp:Button ID="Button1" runat="server" Text="Perform" CssClass="btn btn-lg" BackColor="#23C238" OnClick="Button1_Click"/>



</asp:Content>

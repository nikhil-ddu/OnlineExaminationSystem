<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="information.aspx.cs" Inherits="OnlineExaminationSystem.information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h1 class="featurette-heading"> <asp:Label ID="Label1" runat="server" Text="Label" CssClass="featurette-heading"></asp:Label> Examination</h1>
   <div class="form-group" style="height:300px">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:AdRotator ID="AdRotator1" runat="server"/>
                <asp:Timer ID="Timer1" runat="server" Interval="1000">
                </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>


      <div class="form-group">
    <h2 class="featurette-heading">Information about<asp:Label ID="Label2" runat="server" CssClass="featurette-heading"></asp:Label></h2>
  </div>
    <div class="form-group">
        <p class="lead">
            <asp:Label ID="Label3" runat="server" Text="Label" CssClass="lead"></asp:Label>
    
        </p></div>

</asp:Content>

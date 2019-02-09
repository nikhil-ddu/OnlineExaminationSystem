<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="adminhistory.aspx.cs" Inherits="OnlineExaminationSystem.adminhistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
</script>

<link rel="stylesheet" href="css/animate.min.css"/>
    <link rel="stylesheet" href="css/animate.css"/>
    <link rel="stylesheet" href="css/StyleSheet1.css" />
    <link rel="stylesheet" href="~/Content/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="w3.css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="css/theme.css" />
    <link rel="stylesheet" href="css/signin.css"  />
    <link rel="stylesheet" href="css/abc.css" /> 
    <link rel="stylesheet" href="css/grid.css" />
    <script src="Content/js/jquery-3.1.1.min.js" ></script>
    <script src="Content/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="featurette-heading">Your history</h2>
    <asp:GridView ID="GridView1" runat="server" CssClass="myGridStyle" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
            <asp:BoundField DataField="exam_name" HeaderText="exam_name" SortExpression="exam_name" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db1ConnectionString %>" SelectCommand="SELECT * FROM [update_exam] WHERE ([username] = @username2)">
        <SelectParameters>
            <asp:SessionParameter Name="username2" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userhistory.aspx.cs" Inherits="OnlineExaminationSystem.userhistory" %>
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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PagerStyle-CssClass="pager" CssClass="myGridStyle" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">



        <Columns>
            <asp:BoundField DataField="exam_id" HeaderText="exam_id" SortExpression="exam_id" />
            <asp:BoundField DataField="exam_name" HeaderText="exam_name" SortExpression="exam_name" />
            <asp:BoundField DataField="exam_date" HeaderText="exam_date" SortExpression="exam_date" />
            <asp:BoundField DataField="marks_obtained" HeaderText="marks_obtained" SortExpression="marks_obtained" />
            <asp:BoundField DataField="right_que" HeaderText="right_que" SortExpression="right_que" />
            <asp:BoundField DataField="wrong_que" HeaderText="wrong_que" SortExpression="wrong_que" />
            <asp:BoundField DataField="total_marks" HeaderText="total_marks" SortExpression="total_marks" />
        </Columns>
<PagerStyle CssClass="pager"></PagerStyle>
    </asp:GridView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db1ConnectionString %>" SelectCommand="SELECT [exam_id], [exam_name], [exam_date], [marks_obtained], [right_que], [wrong_que], [total_marks] FROM [gives_exam] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

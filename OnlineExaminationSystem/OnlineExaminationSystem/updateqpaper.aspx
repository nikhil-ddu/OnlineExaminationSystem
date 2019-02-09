<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateqpaper.aspx.cs" Inherits="OnlineExaminationSystem.updateqpaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <script src="Content/js/jquery-3.1.1.min.js" ></script>
    <script src="Content/js/bootstrap.min.js"></script>

</head>
<body>
     <div  style="align-content:center;margin-left:250px;margin-right:250px;margin-top:50px;" >
    <form id="form1" runat="server" class="form-horizontal">
      
        
                     <p class="lead">Select exam type</p>
        

        <div class="form-group">
             <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown form-control" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"/>
        </div>
       
        <p class="lead">Select exam Name</p>
       
        <div class="form-group">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown form-control" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"/>
        </div>

        <p class="lead"> UPDATE QUESTIONPAPER INFO</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="exam_id" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="exam_id" HeaderText="exam_id" InsertVisible="False" ReadOnly="True" SortExpression="exam_id" />
                <asp:BoundField DataField="exam_type" HeaderText="exam_type" SortExpression="exam_type" />
                <asp:BoundField DataField="exam_name" HeaderText="exam_name" SortExpression="exam_name" />
                <asp:BoundField DataField="exam_info" HeaderText="exam_info" SortExpression="exam_info" />
                <asp:BoundField DataField="timelimit" HeaderText="timelimit" SortExpression="timelimit" />
                <asp:BoundField DataField="marks_onright" HeaderText="marks_onright" SortExpression="marks_onright" />
                <asp:BoundField DataField="marks_onwrong" HeaderText="marks_onwrong" SortExpression="marks_onwrong" />
                <asp:BoundField DataField="total_que" HeaderText="total_que" SortExpression="total_que" ReadOnly="true" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db1ConnectionString %>" DeleteCommand="DELETE FROM [exam_master] WHERE [exam_id] = @exam_id" InsertCommand="INSERT INTO [exam_master] ([exam_type], [exam_name], [exam_info], [timelimit], [marks_onright], [marks_onwrong], [total_que]) VALUES (@exam_type, @exam_name, @exam_info, @timelimit, @marks_onright, @marks_onwrong, @total_que)" SelectCommand="SELECT * FROM [exam_master] WHERE ([exam_id] = @exam_id)" UpdateCommand="UPDATE [exam_master] SET [exam_type] = @exam_type, [exam_name] = @exam_name, [exam_info] = @exam_info, [timelimit] = @timelimit, [marks_onright] = @marks_onright, [marks_onwrong] = @marks_onwrong WHERE [exam_id] = @exam_id" OnUpdated="SqlDataSource1_Updated">
            <DeleteParameters>
                <asp:Parameter Name="exam_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="exam_type" Type="String" />
                <asp:Parameter Name="exam_name" Type="String" />
                <asp:Parameter Name="exam_info" Type="String" />
                <asp:Parameter Name="timelimit" Type="Int32" />
                <asp:Parameter Name="marks_onright" Type="Double" />
                <asp:Parameter Name="marks_onwrong" Type="Double" />
                <asp:Parameter Name="total_que" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="exam_id" SessionField="exam_id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="exam_type" Type="String" />
                <asp:Parameter Name="exam_name" Type="String" />
                <asp:Parameter Name="exam_info" Type="String" />
                <asp:Parameter Name="timelimit" Type="Int32" />
                <asp:Parameter Name="marks_onright" Type="Double" />
                <asp:Parameter Name="marks_onwrong" Type="Double" />
                <asp:Parameter Name="total_que" Type="Int32" />
                <asp:Parameter Name="exam_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <p class="lead"> UPDATE QUESTION PAPER</p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="que_id,exam_id" DataSourceID="SqlDataSource2" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="que_id" HeaderText="que_id" ReadOnly="True" SortExpression="que_id" />
                <asp:BoundField DataField="que" HeaderText="que" SortExpression="que" />
                <asp:BoundField DataField="op1" HeaderText="op1" SortExpression="op1" />
                <asp:BoundField DataField="op2" HeaderText="op2" SortExpression="op2" />
                <asp:BoundField DataField="op3" HeaderText="op3" SortExpression="op3" />
                <asp:BoundField DataField="op4" HeaderText="op4" SortExpression="op4" />
                <asp:BoundField DataField="right_answer" HeaderText="right_answer" SortExpression="right_answer" />
                <asp:BoundField DataField="exam_id" HeaderText="exam_id" ReadOnly="True" SortExpression="exam_id" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db1ConnectionString %>" SelectCommand="SELECT * FROM [question_master] WHERE ([exam_id] = @exam_id)" DeleteCommand="DELETE FROM [question_master] WHERE [que_id] = @que_id AND [exam_id] = @exam_id" InsertCommand="INSERT INTO [question_master] ([que_id], [que], [op1], [op2], [op3], [op4], [right_answer], [exam_id]) VALUES (@que_id, @que, @op1, @op2, @op3, @op4, @right_answer, @exam_id)" UpdateCommand="UPDATE [question_master] SET [que] = @que, [op1] = @op1, [op2] = @op2, [op3] = @op3, [op4] = @op4, [right_answer] = @right_answer WHERE [que_id] = @que_id AND [exam_id] = @exam_id" OnUpdated="SqlDataSource2_Updated">
            <DeleteParameters>
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="exam_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="que" Type="String" />
                <asp:Parameter Name="op1" Type="String" />
                <asp:Parameter Name="op2" Type="String" />
                <asp:Parameter Name="op3" Type="String" />
                <asp:Parameter Name="op4" Type="String" />
                <asp:Parameter Name="right_answer" Type="String" />
                <asp:Parameter Name="exam_id" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="exam_id" SessionField="exam_id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="que" Type="String" />
                <asp:Parameter Name="op1" Type="String" />
                <asp:Parameter Name="op2" Type="String" />
                <asp:Parameter Name="op3" Type="String" />
                <asp:Parameter Name="op4" Type="String" />
                <asp:Parameter Name="right_answer" Type="String" />
                <asp:Parameter Name="que_id" Type="Int32" />
                <asp:Parameter Name="exam_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <a class="lead" href="admin.aspx">Go to Home</a>
    </form>
</body>
</html>

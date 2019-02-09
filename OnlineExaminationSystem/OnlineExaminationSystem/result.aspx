<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="OnlineExaminationSystem.result" %>

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
    <link rel="stylesheet" href="css/grid.css" />
    <script src="Content/js/jquery-3.1.1.min.js" ></script>
    <script src="Content/js/bootstrap.min.js"></script>

  
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
    <div style="align-content:center;margin-left:450px;margin-right:450px;margin-top:100px;">
    <h2 class="featurette-heading">RESULT</h2>
        <table class="table-responsive">
        <tr class="row">
            <td class="lead">Exam_type:-</td>
            <td><asp:Label ID="Label1" runat="server" CssClass="lead"/></td>
        </tr>
        <tr class="row">
            <td class="lead">Exam_name:-</td>
            <td><asp:Label ID="Label2" runat="server" CssClass="lead"/></td>
        </tr>
        <tr class="row">
            <td class="lead">Total questions:-</td>
            <td><asp:Label ID="Label3" runat="server" CssClass="lead"/></td>
        </tr>

        <tr class="row">
            <td class="lead">RightAnswers:-</td>
            <td><asp:Label ID="Label4" runat="server" CssClass="lead"/></td>
        </tr>        
         <tr class="row">
            <td class="lead">Wrong Answers:-</td>
            <td><asp:Label ID="Label5" runat="server" CssClass="lead"/></td>
        </tr>        
        <tr class="row">
            <td class="lead">Not attempted</td>
            <td><asp:Label ID="Label6" runat="server" CssClass="lead"/></td>
        </tr>        
        <tr class="row">
            <td class="lead">Your score:-</td>
            <td><asp:Label ID="Label7" runat="server" ForeColor="Red" CssClass="lead"/></td>
        </tr>        
        </table>

        <p class="lead">Want to know right answers??
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" CssClass="lead"/></p>
        <asp:GridView ID="GridView1" runat="server" CssClass="myGridStyle"></asp:GridView>

    </div>
          <div class="form-group" style="align-content:center;margin-left:450px;margin-right:450px;margin-top:100px;">      
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="home.aspx" CssClass="link lead">Go to home</asp:HyperLink>
             </div>
       
    </form>
</body>
</html>

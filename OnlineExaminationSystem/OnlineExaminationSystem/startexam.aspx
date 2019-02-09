<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startexam.aspx.cs" Inherits="OnlineExaminationSystem.startexam" %>

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
    <div  style="align-content:center;margin-left:250px;margin-right:250px;margin-top:50px;" >
    <form id="form1" runat="server" class="form-horizontal">
    <div class="form-group">
        <asp:GridView ID="GridView1" runat="server" CssClass="myGridStyle"></asp:GridView>
        </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Don't refresh or Don't Press back button during exam othewise you will lose your data" ForeColor="Red" CssClass="lead" />
        </div>
        <div class="form-group" style="margin-left:275px;">
        <asp:Button ID="Button1" runat="server" Text="StartExam" CssClass="btn btn-lg" BackColor="#23C238" OnClick="Button1_Click"/>
            </div>
        </form>
    </div>
    
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteqpaper.aspx.cs" Inherits="OnlineExaminationSystem.deleteqpaper" %>

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
    <div  style="align-content:center;margin-left:450px;margin-right:450px;margin-top:100px;" >
    <form id="form1" runat="server" class="form-horizontal">
        <h2 class="featurette-heading">Delete Qustionpaper</h2>
            <p class="lead">Select exam type</p>
        <div class="form-group">
             <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown form-control" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"/>
        </div>
        <p class="lead">Select exam Name</p>
        <div class="form-group">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown form-control"/>
        </div>
        
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click"  OnClientClick="if(!confirm('Are you sure you want to delete qpaper?')) return false;" CssClass="btn btn-lg btn-danger btn-block" />
        </div>

        <div class="form-group">
            <a class="lead" href="admin.aspx">Go to Home</a>
        </div>
    </form>
        </div>
</body>
</html>

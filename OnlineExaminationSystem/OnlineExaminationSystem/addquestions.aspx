<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addquestions.aspx.cs" Inherits="OnlineExaminationSystem.addquestions" %>

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
    <div style="align-content:center;margin-left:450px;margin-right:450px;margin-top:100px;">
    <form id="form1" runat="server" class="form-horizontal">
    <div>
      <h2 class="featurette-heading">Enter question details</h2>  
        <div class="form-group">
            <p class="lead">Question no <asp:Label ID="Label1" runat="server" CssClass="lead" ForeColor="Red"></asp:Label></p>
        </div>

        <div class="form-group">
            <asp:MultiView ID="MultiView1" runat="server"></asp:MultiView><br />
         </div>

       <div class="form-group">
            <asp:Button ID="Button2" runat="server" Text="PREV" OnClick="Button2_Click1" CssClass="btn btn-lg"/><asp:Button ID="Button1" runat="server" Text="NEXT" OnClick="Button1_Click1" CssClass="btn btn-lg" />
       </div>
        <div class="form-group">
            <asp:Button ID="Button3" runat="server" Text="Save questions" CssClass="btn btn-lg btn-block" BackColor="#23C238" OnClick="Button3_Click"/>
        </div>
        
        <div class="form-group">
            <asp:Button ID="Button4" runat="server" Text="Cancel" CssClass="btn btn-lg btn-block" OnClientClick="if(!confirm('All data will be lost!!!Are you sure?')) return false;" BackColor="#23C238" OnClick="Button4_Click"/>
        </div>
        <asp:Label ID="Label2" runat="server" ForeColor="Red" ></asp:Label>
    </form>
        </div>
</body>
</html>

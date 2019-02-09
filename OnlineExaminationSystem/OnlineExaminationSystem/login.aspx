<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineExaminationSystem.login" %>

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
    
  <div  style="align-content:center;margin-left:450px;margin-right:450px;margin-top:100px;" >
      <form id="form1" runat="server" class="form-horizontal">
        
             <h2 class="animated infinite bounce" style="font-weight:100;font-family:Verdana;align-content:center;">LOGIN PAGE</h2>
        
          <div class="form-group">  
            <h5> Username:-</h5>
       
              <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
       
        <div class="form-group">
            <h5> 
        Password:-</h5>
                     <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
       </div>
          <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"></asp:Label>
         </div>
          <div class="form-group">
          <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn btn-lg btn-block" BackColor="#23C238"/>
           </div>   
         <div class="form-group">      
        Don't have account?<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="createaccount.aspx" CssClass="link">Create new one</asp:HyperLink>
             </div>
            
          <div class="form-group">
                Forgot your password?<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="resetpassword.aspx" CssClass="link" >Reset here</asp:HyperLink>
              </div>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</div>
</body>
</html> 

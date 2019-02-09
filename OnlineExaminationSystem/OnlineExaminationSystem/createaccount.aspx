<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createaccount.aspx.cs" Inherits="OnlineExaminationSystem.createaccount" %>

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
    <form id="form1" runat="server" class="form-horizontal">
    <div style="align-content:center;margin-left:450px;margin-right:450px;margin-top:100px;">
        <h2 class="animated bounce" style="font-weight:100;font-family:Verdana;align-content:center;">Create Account</h2>

          <div class="form-group">  
            <h5> Username:-</h5>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
              <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"/>
        </div>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter USername" ControlToValidate="TextBox1" ForeColor="Red"/>

        <div class="form-group">
            <h5>Enter Password:-</h5>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
       </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter Password" ControlToValidate="TextBox2" ForeColor="Red"/>
        
        <div class="form-group">
            <h5>Renter Password:-</h5>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
       </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Renter password" ControlToValidate="TextBox3" ForeColor="Red"/>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="passwords should be match" ControlToCompare="TextBox2" ControlToValidate="TextBox3"/>
        
        <div class="form-group">
            <h5>Email:-</h5>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Red"></asp:Label>
       </div>

        <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Enter email address" ControlToValidate="TextBox4" ForeColor="Red"/>-->
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid email address" ControlToValidate="Textbox4" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
        <div class="form-group">
            <h5>Select sequrity question</h5>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
       </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Select the question" ControlToValidate="DropDownList1" ForeColor="Red"/>
       
         <div class="form-group">
            <h5>Enter sequrity answer:-</h5>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
       </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Enter Sequrity answer" ControlToValidate="TextBox5" ForeColor="Red"/>


        

       <div class="form-group">
    <asp:Button ID="Button1" runat="server" Text="Signup" CssClass="btn btn-lg btn-block" BackColor="#23C238" OnClick="Button1_Click" />
           </div> 
          <div class="form-group">      
        Already have an account?<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="login.aspx" CssClass="link">Login here</asp:HyperLink>
             </div>
            

    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addqpaper.aspx.cs" Inherits="OnlineExaminationSystem.addqpaper" %>

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
    <div  style="align-content:center;margin-left:450px;margin-right:450px;margin-top:50px;" >
    <form id="form1" runat="server" class="form-horizontal">
        <h2 class="featurette-heading">Add Qustionpaper</h2>
          <div class="form-group">
            Enter Exam type:-<asp:TextBox ID="TextBox1"  runat="server" placeholder="gate,gre,cat etc" CssClass="form-control"/>
          </div>

        <div class="form-group">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Enter exam type" ControlToValidate="TextBox1" ForeColor="Red" CssClass="form-control"/>
        </div>

        
           <div class="form-group">
                Enter exam_name:-<asp:TextBox ID="TextBox2"  runat="server" CssClass="form-control"/>

            </div>
        
              <asp:Label ID="Label1" runat="server" ForeColor="Red"/><br />
        
        
        <div class="form-group">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter exam name" ControlToValidate="TextBox2" ForeColor="Red" CssClass="form-control"/>
        </div>

        <div class="form-group">
            Enter Examinfo:-  <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"/>
         </div>   

        <div class="form-group">
              Enter timelimit:-    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="In minutes"/>
        </div>

        <div class="form-group">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter timelimit" ControlToValidate="TextBox4" ForeColor="Red" CssClass="form-control" />
           </div>
        
        <div class="form-group">
              How many marks on right answer?<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"/>
        </div>
        
        <div class="form-group">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Enter detail" ControlToValidate="TextBox4" ForeColor="Red" CssClas="form-control"/>
        </div>
         
        <div class="form-group">     
               How many negetive marks on wrong answer?    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"/>
        </div>

        <div class="form-group">
        
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter detail" ControlToValidate="TextBox5" ForeColor="Red" CssClass="form-control"/>
        </div>

        <div class="form-group">
         Total no. of questions:- <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"/>
            </div>
        <div class="form-group">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Enter total no of questions " ControlToValidate="TextBox6" ForeColor="Red" CssClass="form-control"/>
        </div>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Questionpaper" CssClass="btn btn-block btn-lg" BackColor="#23C238"/>
        
        <a class="lead" href="admin.aspx">Go to Home</a>

    
    </form>
        </div>
</body>
</html>

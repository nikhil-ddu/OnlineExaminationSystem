<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resetpassword.aspx.cs" Inherits="OnlineExaminationSystem.resetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link rel="stylesheet" href="css/animate.min.css"/>
    <link rel="stylesheet" href="css/animate.css"/>
    <link rel="stylesheet" href="css/StyleSheet1.css" />
    <link rel="stylesheet" href="~/Content/css/bootstrap.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
   <div style="align-content:center;margin-left:450px;margin-right:450px;margin-top:100px;">
        <h2 class="animated bounce" style="font-weight:100;font-family:Verdana;align-content:center;">forgot password</h2>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="view1" runat="server">Enter Username:-<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>
                            <br />
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label><br />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter USername" ControlToValidate="TextBox1" ForeColor="Red"/><br />
                        </asp:View>
           
                        <asp:View ID="view2" runat="server">sequrity question:-<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></asp:TextBox>
                                        <br />
                                        Sequrity Answer:-<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" ></asp:TextBox>
                                        <br />
                                        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter seurity_answer" ControlToValidate="TextBox5" ForeColor="Red"/><br />

                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link" OnClick="LinkButton1_Click">Can't remember answer?Mail me a new password</asp:LinkButton>


                        </asp:View>
                        <asp:View ID="view3" runat="server">Enter Password:-<asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label4" runat="server" ForeColor="Red" ></asp:Label>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Enter password" ControlToValidate="TextBox3" ForeColor="Red"/><br />
                            Re-Enter Password:-<asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Reenter password" ControlToValidate="TextBox4" ForeColor="Red"/>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="passwords should be match" ControlToCompare="TextBox3" ControlToValidate="TextBox4"/>

                            <br />
                            <asp:Label ID="Label5" runat="server" ></asp:Label>

                        </asp:View>




        </asp:MultiView>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit"  CssClass="btn btn-lg btn-block" BackColor="#23C238"/>
    
    
    </div>
    </form>
</body>
</html>

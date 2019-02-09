<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="takeexam.aspx.cs" Inherits="OnlineExaminationSystem.takeexam" %>

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
    <style>
        #maindv{
            margin-left:3%;
            margin-top:5%;
            margin-right:3%;
        }
        #rep{
            
        }
        #questions{
            margin-left:30%;
            margin-top:1%;
            margin-bottom:1%;
        }
        #options{
            margin-left:1%;
           
        }
        #tm{
margin-left:30%;
         }
        .b1
        {
            margin-left:35%;
        }

    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div id="maindv">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" ViewStateMode="Enabled">
            <ContentTemplate>
                <div id="tm">
                <asp:Label ID="Label1" runat="server"  Text="TimeLeft:" CssClass="lead"></asp:Label>
                <asp:Label ID="Label2" runat="server" CssClass="lead" ForeColor="Red"/>

                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"/>
            </Triggers>
        </asp:UpdatePanel>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
    </div>


    <div id="rep">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                
            </HeaderTemplate>
            <ItemTemplate>
                <div id="questions">
                        <div id="que">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("que_id") %>' CssClass="lead"/>
                         <asp:Label ID="Label2" runat="server" Text='<%# Eval("que") %>' CssClass="lead"/>
                            </div>  
                        <div id="options">
                       <div style="margin:2%;width:25%;display:inline;"><asp:RadioButton ID="RadioButton1" runat="server" Text='<%# Eval("op1") %>' GroupName="gr" EnableViewState="true"/></div>
                       <div style="margin:2%;width:25%;display:inline;"> <asp:RadioButton ID="RadioButton2" runat="server" Text='<%# Eval("op2") %>' GroupName="gr" EnableViewState="true"/></div>
                       <div style="margin:2%;width:25%;display:inline;"> <asp:RadioButton ID="RadioButton3" runat="server" Text='<%# Eval("op3") %>' GroupName="gr" EnableViewState="true"/></div>
                        <div style="margin:2%;width:25%;display:inline;"><asp:RadioButton ID="RadioButton4" runat="server" Text='<%# Eval("op4") %>' GroupName="gr" EnableViewState="true"/></div>
                        </div>   
                </div>
            </ItemTemplate>

            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
       </div> 
        <div class="b1">
        
            <asp:Button ID="Button1" runat="server" Text="End Exam" CssClass="btn btn-lg" BackColor="#23C238" OnClick="Button1_Click" OnClientClick="if(!confirm('Are you sure you want to end exam?')) return false;" />
        
        </div>
       
    </div>      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db1ConnectionString %>" SelectCommand="SELECT [que_id], [que], [op1], [op2], [op3], [op4] FROM [question_master] WHERE ([exam_id] = @exam_id)">
            <SelectParameters>
                <asp:SessionParameter Name="exam_id" SessionField="exam_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>



  
        
        
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="OnlineExaminationSystem.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        var image1 = new Image()
        image1.src = "images/exam8.png"

        var image2 = new Image()
        image2.src = "images/exam1.jpg"

        var image3 = new Image()
        image3.src = "images/exam2.png"

        var image4 = new Image()
        image4.src = "images/exam3.png"

        var image5 = new Image()
        image5.src = "images/exam4.png"

        var image6 = new Image()
        image6.src = "images/exam5.jpg"

        var image7 = new Image()
        image7.src = "images/exam6.png"

        var image8 = new Image()
        image8.src = "images/exam7.jpg"

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="form-group">
        <h2 class="featurette-heading text-muted"><strong>EXAM CENTER</strong></h2>
        <p class="lead" style="font-style:italic">because every examination matters....</p>
    </div>
    <div class="form-group">
        <img alt="" class="img-rounded" id="img" name="img" height="300px" width="700px" src="images/exam8.png" />
        <script>
            var step = 1
            function slideImages()
            {
                if(!document.images)
                {
                    return
                }
                document.images.img.src = eval("image" + step + ".src")
                if(step<8)
                {
                    step++
                }
                else
                {
                    step = 1;
                }
                setTimeout("slideImages()",1000)
            }
            slideImages()
        </script>
    </div>



    <div class="form-group">
    <h2 class="featurette-heading text-muted">Are you thinking of online exam?</h2>
  </div>
    <div class="form-group">
        <p class="lead">
    Give rest to your thinking because you are at the right place. Exam center is a web based online exam software, which enables educators,students & survey organizers to manage their questions & conduct online exams.
        </p></div>

    <div class="form-group">
          <h2 class="featurette-heading text-muted">About us</h2>
    </div>
    <div class="form-group">
        <p class="lead">
           Examcenter web application is for students, institutes or school who want to prepare for competitive exams, organize exams.
            </p>
        <p class="lead">
             Examcenter web application is educational web application that allows users to improve their skills and take online examinations in particular course.
            </p>
        
    </div>
    <div class="form-group">
        <h2 class="featurette-heading">Test Your Self</h2>
    </div>

        <p class="lead">Select exam type</p>
        <div class="form-group">
             <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown btn-lg" Width="200px" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"/>
        </div>
        <p class="lead">Select exam type</p>
        <div class="form-group">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown btn-lg" Width="200px"/>
        </div>
        
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="Test Your Self" OnClick="Button1_Click"  CssClass="btn btn-lg" BackColor="#23C238" />
        </div>



        


    
    
</asp:Content>

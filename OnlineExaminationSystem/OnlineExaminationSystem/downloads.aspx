<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="downloads.aspx.cs" Inherits="OnlineExaminationSystem.downloads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="GRE" CssClass="btn btn-lg " BackColor="#23C238" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="GATE" CssClass="btn btn-lg" BackColor="#23C238" OnClick="Button2_Click"/>
        <asp:Button ID="Button3" runat="server" Text="CAT" CssClass="btn btn-lg" BackColor="#23C238" OnClick="Button3_Click"/>
     <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="view1" runat="server">
                            <p class="featurette-heading">Free Practice Test for GRE</p>
                            <p class="lead">
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">GRE Reading Comprehension Practice Test :</asp:LinkButton></p>
                            <p>This test has 7 reading comprehension passages with answers and explanation.</p>

                            <p class="lead">
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">GRE Quantitative Reasoning Practice Test:</asp:LinkButton></p>
                            <p>This test has several multiple choice questions ,numeric entry questions and quantitative comparison questions with explanation and answers.</p>

                            <p class="lead">
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">GRE Quantitative Reasoning Practice Test2:</asp:LinkButton></p>
                            <p>This test has 30 multiple choice questions ,numeric entry questions and quantitative comparison questions with explanation and answers.</p>

                            <p class="lead">
                                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">GRE Verbal Reasoning Practice Test – 1 :</asp:LinkButton></p>
                            <p>This verbal reasoning practice test has 20 Text completion question with answer & explanation.</p>

                            <p class="lead">
                                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">GRE Verbal Reasoning Practice Test – 2 :</asp:LinkButton></p>
                            <p>This verbal reasoning practice test has 10 Sentence Equivalence question with answer & explanation.</p>
                        </asp:View>

                        <asp:View ID="view2" runat="server">
                            <p class="featurette-heading">Previous years papers for GATE(CS)</p>
                            <p class="lead">
                                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">GATE CS 2011 paper :</asp:LinkButton></p>
                            

                            <p class="lead">
                                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">GATE CS 2012 paper :</asp:LinkButton></p>
                            

                            <p class="lead">
                                <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">GATE CS 2013 paper :</asp:LinkButton></p>
                            
                    </asp:View>


                    <asp:View ID="view3" runat="server">
                            <p class="featurette-heading">Previous years papers for CAT</p>
                            <p class="lead">
                                <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">CAT 2006 paper :</asp:LinkButton></p>
                            

                            <p class="lead">
                                <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">CAT 2007 paper :</asp:LinkButton></p>
                            

                            <p class="lead">
                                <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">CAT 2008 paper :</asp:LinkButton></p>
                            
                    </asp:View>
   </asp:MultiView>
</asp:Content>

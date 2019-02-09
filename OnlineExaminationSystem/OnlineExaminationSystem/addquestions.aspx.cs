using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationSystem
{
    public partial class addquestions : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender,EventArgs e)
        {
            if (!(Session["username"] != null && Session["admin"] != null && (int)Session["admin"] == 1))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please login first');window.location ='login.aspx';", true);
            }
            int total_que=0,temp;
            DataClasses2DataContext dcd = new DataClasses2DataContext();
            try
            {


                var query = from t1 in dcd.exam_masters where t1.exam_name == Session["qname"].ToString() select t1;
                foreach (var i in query)
                {
                    total_que = i.total_que;

                    Session["totalque"] = total_que;

                }
                for (int i = 0; i < total_que; i++)
                {
                    Label l1 = new Label();
                    l1.Text = " Enter Question";
                    TextBox tb1 = new TextBox();
                    temp = i * 6 + 1;
                    tb1.ID = "TextBox" + temp;

                    Label l2 = new Label();
                    l2.Text = " Enter Option1";
                    TextBox tb2 = new TextBox();
                    temp = i * 6 + 2;
                    tb2.ID = "TextBox" + temp;

                    Label l3 = new Label();
                    l3.Text = " Enter Option2";
                    TextBox tb3 = new TextBox();
                    temp = i * 6 + 3;
                    tb3.ID = "TextBox" + temp;

                    Label l4 = new Label();
                    l4.Text = " Enter Option3";
                    TextBox tb4 = new TextBox();
                    temp = i * 6 + 4;
                    tb4.ID = "TextBox" + temp;

                    Label l5 = new Label();
                    l5.Text = " Enter Option4";
                    TextBox tb5 = new TextBox();
                    temp = i * 6 + 5;
                    tb5.ID = "TextBox" + temp;

                    Label l6 = new Label();
                    l6.Text = " Enter right answer";
                    TextBox tb6 = new TextBox();
                    temp = i * 6 + 6;
                    tb6.ID = "TextBox" + temp;


                    tb1.CssClass = "form-control";
                    tb2.CssClass = "form-control";
                    tb3.CssClass = "form-control";
                    tb4.CssClass = "form-control";
                    tb5.CssClass = "form-control";
                    tb6.CssClass = "form-control";

                    View v1 = new View();
                    v1.Controls.Add(l1);
                    v1.Controls.Add(tb1);
                    v1.Controls.Add(l2);
                    v1.Controls.Add(tb2);
                    v1.Controls.Add(l3);
                    v1.Controls.Add(tb3);
                    v1.Controls.Add(l4);
                    v1.Controls.Add(tb4);
                    v1.Controls.Add(l5);
                    v1.Controls.Add(tb5);
                    v1.Controls.Add(l6);
                    v1.Controls.Add(tb6);

                    MultiView1.Views.Add(v1);
                }
                MultiView1.ActiveViewIndex = 0;
                Button2.Visible = false;
                Button1.Visible = true;
                if (total_que == 1)
                {
                    Button3.Visible = true;
                    Button1.Visible = false;
                }
                else
                {

                    Button3.Visible = false;
                }
                Label1.Text = (MultiView1.ActiveViewIndex + 1).ToString() + "/" + total_que;
            }
            catch(Exception ee)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Something went wrong!please try again!!!');window.location ='admin.aspx';", true);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
             
        }
        
       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int flag = 0;
            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = false;
            if (MultiView1.ActiveViewIndex == (int)Session["totalque"] - 2)
            {
                Button1.Visible = false;
                Button3.Visible = true;
            }
            
            int index = MultiView1.ActiveViewIndex;
            for (int i= 1;i <= 6;i++)
            {
                if (((TextBox)form1.FindControl("TextBox"+(index*6+i))).Text=="")
                   {
                    flag = 1;
                }
            }

            if(flag==1)
            {
                if(MultiView1.ActiveViewIndex==0)
                {
                    Button2.Visible = false;
                }
                Label2.Text="*all fileds required!!";
            }
            else
            {
                Label2.Text = "";
                Label1.Text = (MultiView1.ActiveViewIndex + 2).ToString() + "/" + Session["totalque"];
                MultiView1.ActiveViewIndex = MultiView1.ActiveViewIndex + 1;

            }
            

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Label2.Text = "";
            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = false;
            if (MultiView1.ActiveViewIndex ==1)
            {
                Button2.Visible = false;
            }
            Label1.Text = (MultiView1.ActiveViewIndex ).ToString() + "/" + Session["totalque"];
            MultiView1.ActiveViewIndex = MultiView1.ActiveViewIndex - 1;


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int flag = 0;
            for (int i = 1; i <= 6; i++)
            {
                if (((TextBox)form1.FindControl("TextBox" + (((((int)Session["totalque"])-1) * 6 + i)))).Text == "")
                {
                    flag = 1;
                }
            }

            if (flag == 1)
            {
                
                Label2.Text = "*all fileds required!!";
            }
            else
            {
                Label2.Text = "";
                //Label1.Text = (MultiView1.ActiveViewIndex + 2).ToString() + "/" + Session["totalque"];
                //MultiView1.ActiveViewIndex = MultiView1.ActiveViewIndex + 1;

                int exam_id = 0, temp;
                String strtemp;
                DataClasses2DataContext dc = new DataClasses2DataContext();
                var query = from t1 in dc.exam_masters where t1.exam_name == Session["qname"].ToString() select t1.exam_id;
                foreach (var i in query)
                {
                    exam_id = i;
                }
                for (int i = 1; i <= (int)Session["totalque"]; i++)
                {
                    question_master qm = new question_master();
                    qm.que_id = i;
                    qm.exam_id = exam_id;

                    temp = (i - 1) * 6 + 1;
                    strtemp = "Textbox" + temp;
                    qm.que = ((TextBox)form1.FindControl(strtemp)).Text;

                    temp = (i - 1) * 6 + 2;
                    strtemp = "Textbox" + temp;
                    qm.op1 = ((TextBox)form1.FindControl(strtemp)).Text;

                    temp = (i - 1) * 6 + 3;
                    strtemp = "Textbox" + temp;
                    qm.op2 = ((TextBox)form1.FindControl(strtemp)).Text;

                    temp = (i - 1) * 6 + 4;
                    strtemp = "Textbox" + temp;
                    qm.op3 = ((TextBox)form1.FindControl(strtemp)).Text;

                    temp = (i - 1) * 6 + 5;
                    strtemp = "Textbox" + temp;
                    qm.op4 = ((TextBox)form1.FindControl(strtemp)).Text;

                    temp = (i - 1) * 6 + 6;
                    strtemp = "Textbox" + temp;
                    qm.right_answer = ((TextBox)form1.FindControl(strtemp)).Text;
                    dc.question_masters.InsertOnSubmit(qm);


                }

                try
                {
                    dc.SubmitChanges();
                    update_exam ue = new update_exam();
                    ue.date = System.DateTime.Now;
                    ue.description = "added";

                    ue.exam_name = Session["qname"].ToString();
                    ue.username = Session["username"].ToString();
                    dc.update_exams.InsertOnSubmit(ue);
                    dc.SubmitChanges();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Questionpaper with questions added Successfully!!!');window.location ='admin.aspx';", true);
                }
                catch (Exception ee)
                {
                    var query1 = from t1 in dc.exam_masters where t1.exam_name == Session["qname"].ToString() select t1;

                    foreach (var i in query1)
                    {
                        dc.exam_masters.DeleteOnSubmit(i);
                    }

                    dc.SubmitChanges();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Something went wrong!please try again!!!');window.location ='admin.aspx';", true);
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            DataClasses2DataContext dc = new DataClasses2DataContext();
            var query = from t1 in dc.exam_masters where t1.exam_name == Session["qname"].ToString() select t1;

            foreach (var i in query)
            {
                dc.exam_masters.DeleteOnSubmit(i);
            }
            dc.SubmitChanges();
            Response.Redirect("admin.aspx");
        }
    }
}
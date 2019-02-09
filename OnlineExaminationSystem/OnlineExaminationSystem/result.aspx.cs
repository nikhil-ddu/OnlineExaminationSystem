using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationSystem
{
    public partial class result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["username"] != null && Session["admin"] != null && (int)Session["admin"] == 0))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please login first');window.location ='login.aspx';", true);
            }

            int right, wrong;
            DataClasses2DataContext dc = new DataClasses2DataContext();
            try
            {
                if (!IsPostBack)
                {
                    right = (int)Session["right"];
                    wrong = (int)Session["wrong"];
                    //wrong = Int32.Parse(Request.QueryString["wrong"]);
                    var query = from t1 in dc.exam_masters where t1.exam_id == (int)Session["exam_id"] select t1;
                    foreach (var temp in query)
                    {

                        Label1.Text = temp.exam_type;
                        ViewState["l1"] = Label1.Text;
                        Label2.Text = temp.exam_name;
                        ViewState["l2"] = Label2.Text;
                        Label3.Text = temp.total_que.ToString();
                        ViewState["l3"] = Label3.Text;
                        Label4.Text = right.ToString();
                        ViewState["l4"] = Label4.Text;
                        Label5.Text = wrong.ToString();
                        ViewState["l5"] = Label5.Text;
                        Label6.Text = (temp.total_que - right - wrong).ToString();
                        ViewState["l6"] = Label6.Text;
                        Label7.Text = (right * temp.marks_onright - wrong * temp.marks_onwrong).ToString() + "/" + temp.total_que * temp.marks_onright;
                        
                        ViewState["l7"] = Label7.Text;


                        gives_exam ge = new gives_exam();
                        ge.username = Session["username"].ToString();
                        ge.exam_id = (int)Session["exam_id"];
                        ge.exam_date = System.DateTime.Now;
                        ge.marks_obtained = right * temp.marks_onright - wrong * temp.marks_onwrong;
                        if(ge.marks_obtained<0)
                        {
                            ge.marks_obtained = 0;
                        }
                        ge.total_marks = temp.total_que * temp.marks_onright;
                        ge.right_que = right;
                        ge.wrong_que = wrong;
                        ge.exam_name = temp.exam_name;
                        dc.gives_exams.InsertOnSubmit(ge);
                        dc.SubmitChanges();
                    }


                }
                else
                {
                    Label1.Text = ViewState["l1"].ToString();
                    Label2.Text = ViewState["l2"].ToString();
                    Label3.Text = ViewState["l3"].ToString();
                    Label4.Text = ViewState["l4"].ToString();
                    Label5.Text = ViewState["l5"].ToString();
                    Label6.Text = ViewState["l6"].ToString();
                    Label7.Text = ViewState["l7"].ToString();
                    if (CheckBox1.Checked)
                    {

                        var query = from t1 in dc.question_masters where t1.exam_id == (int)Session["exam_id"] select new { t1.que_id, t1.que, t1.right_answer };

                        GridView1.DataSource = query;
                        GridView1.DataBind();
                        GridView1.Visible = true;
                    }
                    else
                    {
                        GridView1.Visible = false;
                    }
                }
            }
            catch (Exception ee)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Something went wrong');window.location ='home.aspx';", true);
            }
        }
    }
}
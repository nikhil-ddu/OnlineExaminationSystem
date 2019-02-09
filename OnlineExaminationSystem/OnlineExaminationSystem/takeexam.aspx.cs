using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationSystem
{
    public partial class takeexam : System.Web.UI.Page
    {
        static int hh, mm, ss;

        static double TimeAllSecondes;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null && Session["admin"] != null && (int)Session["admin"] == 0)
                {
                    //TimeAllSecondes = double.Parse(Request.QueryString["timelimit"]) * 60;
                    TimeAllSecondes = (int)Session["timelimit"] * 60;
                }
                else
                {
                    
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('please login first');window.location ='login.aspx';", true);
                    
                }
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (TimeAllSecondes > 0)
            {
                TimeAllSecondes = TimeAllSecondes - 1;
                TimeSpan time_Span = TimeSpan.FromSeconds(TimeAllSecondes);
                hh = time_Span.Hours;
                mm = time_Span.Minutes;
                ss = time_Span.Seconds;

                Label2.Text = "  " + hh + ":" + mm + ":" + ss;

            }
            else
            {
                List<String> lst = new List<string>();

                foreach (RepeaterItem item in Repeater1.Items)
                {
                    int j;
                    for (j = 1; j <= 4; j++)
                    {
                        RadioButton rdb = (RadioButton)item.FindControl("RadioButton" + j);
                        if (rdb.Checked == true)
                        {
                            lst.Add(rdb.Text);
                            break;
                        }
                    }
                    if (j == 5)
                    {
                        lst.Add("notselected");
                    }

                }

                string[] useranswerarr = lst.ToArray();
             //   GridView1.DataSource = lst;
               // GridView1.DataBind();
                DataClasses2DataContext dc = new DataClasses2DataContext();
                var query = from t1 in dc.question_masters where t1.exam_id == (int)Session["exam_id"] select t1;

                int i = 0;
                int right = 0, wrong = 0;
                foreach (var temp in query)
                {
                    if (useranswerarr[i].Equals(temp.right_answer))
                    {
                        right++;
                    }
                    else if (!useranswerarr[i].Equals("notselected"))
                    {
                        wrong++;
                    }
                    i++;
                }


                //string exam_id = Request.QueryString["exam_id"];
                Session["right"] = right;
                Session["wrong"] = wrong;
                //string redirectstring = "result.aspx?exam_id=" + exam_id + "&right=" + right + "&wrong=" + wrong;

                 ScriptManager.RegisterStartupScript(this, this.GetType(),"alert","alert('ExamOver. Know your result');window.location ='result.aspx';",true);

            }


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            List<String> lst = new List<string>();
            
            foreach (RepeaterItem item in Repeater1.Items)
            {
                int j;
                for ( j = 1; j <= 4; j++)
                {
                    RadioButton rdb = (RadioButton)item.FindControl("RadioButton" + j);
                    if (rdb.Checked == true)
                    {
                        lst.Add(rdb.Text);
                        break;
                    }
                }
                if(j==5)
                {
                    lst.Add("notselected");
                }
                
            }

            string[] useranswerarr = lst.ToArray();
            //GridView1.DataSource =lst;
            //GridView1.DataBind();
            DataClasses2DataContext dc = new DataClasses2DataContext();
            var query = from t1 in dc.question_masters where t1.exam_id == (int)Session["exam_id"] select t1;

            int i = 0;
            int right = 0, wrong = 0;
            foreach (var temp in query)
            {
                if (useranswerarr[i].Equals(temp.right_answer))
                {
                    right++;
                }
                else if(!useranswerarr[i].Equals("notselected"))
                {
                    wrong++;
                }
                i++;
            }
           // string exam_id =;
            Session["right"] = right;
            Session["wrong"] = wrong;

            string redirectstring = "result.aspx";
            Response.Redirect(redirectstring);
        }
    }
}
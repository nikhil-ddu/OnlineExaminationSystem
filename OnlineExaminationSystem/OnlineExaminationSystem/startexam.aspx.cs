 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
namespace OnlineExaminationSystem
{
    public partial class startexam : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["admin"] != null && (int)Session["admin"] == 0)
            {
                try
                {


                    DataClasses2DataContext dc = new DataClasses2DataContext();
                    var query = from t1 in dc.exam_masters where t1.exam_id == (int)Session["exam_id"] select t1;
                    if(query.Count()==0)
                    {
                        throw new Exception();
                    }
                    GridView1.DataSource = query;
                    GridView1.DataBind();
                }
                catch(Exception ee)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Something went wrong');window.location ='home.aspx';", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please login first');window.location ='login.aspx';", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataClasses2DataContext dc = new DataClasses2DataContext();
            var query = from t1 in dc.exam_masters where t1.exam_id == (int)Session["exam_id"] select t1.timelimit;
            foreach(var i in query)
            {
                Session["timelimit"] = i;
                //Response.Redirect("takeexam.aspx?exam_id=" + Request.QueryString["exam_id"] + "&timelimit=" +i);
                Response.Redirect("takeexam.aspx");
            }
            
        }
    }
}
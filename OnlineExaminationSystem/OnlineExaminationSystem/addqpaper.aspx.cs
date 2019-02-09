using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationSystem
{
    public partial class addqpaper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!(Session["username"] != null && Session["admin"] != null && (int)Session["admin"] == 1))
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please login first');window.location ='login.aspx';", true);
                }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int flag = 0;
            DataClasses2DataContext dcd = new DataClasses2DataContext();
            var query = from t1 in dcd.exam_masters where t1.exam_name == TextBox2.Text select t1;
            if (query.Count() > 0)
            {
                flag = 1;
                Label1.Text = "exam_name is already in use";
            }

            if (flag == 0)
            {
               
                exam_master em = new exam_master();
                
                em.exam_type = TextBox1.Text;
                em.exam_name = TextBox2.Text;
                em.exam_info = TextBox3.Text;
                em.timelimit = Int32.Parse(TextBox4.Text);
                em.marks_onright = Double.Parse(TextBox5.Text);
                em.marks_onwrong =Double.Parse(TextBox6.Text);
                em.total_que = Int32.Parse(TextBox7.Text);
                dcd.exam_masters.InsertOnSubmit(em);
                try
                {
                    dcd.SubmitChanges();
                    Session["qname"] = TextBox2.Text;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Add questions!!!!');window.location ='addquestions.aspx';", true);
                }
                catch (Exception ee)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Something went wrong!please try again!!!');window.location ='addqpaper.aspx';", true);
                }
                
            }
        }
    }
}
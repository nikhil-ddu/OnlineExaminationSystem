using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationSystem
{
    public partial class deleteqpaper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["admin"] != null && (int)Session["admin"] == 1)
            {
                
                if (!IsPostBack)
                {
                    DataClasses2DataContext dc = new DataClasses2DataContext();
                    try
                    {


                        var query = from t1 in dc.exam_masters group t1 by t1.exam_type into gr select gr.Key;
                        DropDownList1.DataSource = query;
                        DropDownList1.DataBind();
                        var query1 = from t2 in dc.exam_masters where t2.exam_type == DropDownList1.SelectedValue select t2.exam_name;
                        DropDownList2.DataSource = query1;
                        DropDownList2.DataBind();
                        if(query.Count()==0||(query1.Count()==0))
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('No exam available!!go to home');window.location ='admin.aspx';", true);
                        }
                    }
                    catch (Exception ee)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Something went wrong');window.location ='admin.aspx';", true);
                    }

                }

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please login first');window.location ='login.aspx';", true);
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            int exam_id=0;
            try
            {
                DataClasses2DataContext dc = new DataClasses2DataContext();
                var query = from t1 in dc.exam_masters where t1.exam_name == DropDownList2.SelectedItem.Text select t1;
            
                foreach (var i in query)
                {
                    exam_id = i.exam_id;
                    dc.exam_masters.DeleteOnSubmit(i);
                }
                 


                update_exam ue = new update_exam();
                ue.date = System.DateTime.Now;
                ue.description = "deleted";
                
                ue.exam_name = DropDownList2.SelectedValue;
                ue.username = Session["username"].ToString();
                dc.update_exams.InsertOnSubmit(ue);
                dc.SubmitChanges();





                dc.SubmitChanges();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Questionpaper deleted successfully');window.location ='admin.aspx';", true);
               // var query1 = from t1 in dc.exam_masters group t1 by t1.exam_type into gr select gr.Key;
               // DropDownList1.DataSource = query1;
               // DropDownList1.DataBind();
               // var query2 = from t2 in dc.exam_masters where t2.exam_type == DropDownList1.SelectedValue select t2.exam_name;
               // DropDownList2.DataSource = query2;
               // DropDownList2.DataBind();

            }
            catch (Exception ee)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Something went wrong!try again!!');window.location ='admin.aspx';", true);
       
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataClasses2DataContext dc = new DataClasses2DataContext();
            
            var query1 = from t2 in dc.exam_masters where t2.exam_type == DropDownList1.SelectedValue select t2.exam_name;
            DropDownList2.DataSource = query1;
            DropDownList2.DataBind();

        }
    }
}
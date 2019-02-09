using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationSystem
{
    public partial class updateqpaper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["admin"] != null && (int)Session["admin"] == 1)
            {

                if (!IsPostBack)
                {
                    try
                    {


                        DataClasses2DataContext dc = new DataClasses2DataContext();
                        var query = from t1 in dc.exam_masters group t1 by t1.exam_type into gr select gr.Key;
                        DropDownList1.DataSource = query;
                        DropDownList1.DataBind();
                        var query1 = from t2 in dc.exam_masters where t2.exam_type == DropDownList1.SelectedValue select t2.exam_name;
                        DropDownList2.DataSource = query1;
                        DropDownList2.DataBind();
                        var query2 = from t2 in dc.exam_masters where t2.exam_name == DropDownList2.SelectedItem.Text select t2.exam_id;

                        foreach (var i in query2)
                        {
                            Session["exam_id"] = i;

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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            DataClasses2DataContext dc = new DataClasses2DataContext();

            var query1 = from t2 in dc.exam_masters where t2.exam_type == DropDownList1.SelectedValue select t2.exam_name;
            DropDownList2.DataSource = query1;
            DropDownList2.DataBind();
            var query = from t2 in dc.exam_masters where t2.exam_name == DropDownList2.SelectedItem.Text select t2.exam_id;
            foreach (var i in query)
            {
                Session["exam_id"] = i;

            }
            GridView2.DataBind();
            GridView1.DataBind();


        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataClasses2DataContext dc = new DataClasses2DataContext();
            var query = from t2 in dc.exam_masters where t2.exam_name == DropDownList2.SelectedItem.Text select t2.exam_id;
            foreach (var i in query)
            {
                Session["exam_id"] = i;

            }
            GridView1.DataBind();
            GridView2.DataBind();

        }

        
        protected void SqlDataSource2_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            DataClasses2DataContext dc = new DataClasses2DataContext();
            update_exam ue = new update_exam();
            ue.date = System.DateTime.Now;
            ue.description = "updated";
            
            ue.exam_name = DropDownList2.SelectedValue;
            ue.username = Session["username"].ToString();
            dc.update_exams.InsertOnSubmit(ue);
            dc.SubmitChanges();

        }


        protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            DataClasses2DataContext dc = new DataClasses2DataContext();
            
            update_exam ue = new update_exam();
            ue.date = System.DateTime.Now;
            ue.description = "updated";
            
            ue.exam_name = DropDownList2.SelectedValue;
            ue.username = Session["username"].ToString();
            dc.update_exams.InsertOnSubmit(ue);
            dc.SubmitChanges();

        }
    }
}
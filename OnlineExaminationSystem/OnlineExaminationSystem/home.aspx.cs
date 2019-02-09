using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineExaminationSystem;
namespace OnlineExaminationSystem
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((Session["username"]== null) || (Session["admin"] != null && (int)Session["admin"] == 1))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please login first');window.location ='login.aspx';", true);
            }
            if (!IsPostBack)
            {
                DataClasses2DataContext dc = new DataClasses2DataContext();
                var query = from t1 in dc.exam_masters group t1 by t1.exam_type into gr select gr.Key;
                DropDownList1.DataSource = query;
                DropDownList1.DataBind();
                var query1 = from t2 in dc.exam_masters where t2.exam_type == DropDownList1.SelectedValue select t2.exam_name;
                DropDownList2.DataSource = query1;
                DropDownList2.DataBind();

            }

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataClasses2DataContext dc = new DataClasses2DataContext();

            var query1 = from t2 in dc.exam_masters where t2.exam_type == DropDownList1.SelectedValue select t2.exam_name;
            DropDownList2.DataSource = query1;
            DropDownList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataClasses2DataContext dc = new DataClasses2DataContext();
            var query = from t1 in dc.exam_masters where t1.exam_name == DropDownList2.SelectedValue select t1;
            foreach(var i in query)
            {
                Session["exam_id"] = i.exam_id;
                //Response.Redirect("startexam.aspx?exam_id=" + i.exam_id);
                Response.Redirect("startexam.aspx");
            }
        }

    }
}
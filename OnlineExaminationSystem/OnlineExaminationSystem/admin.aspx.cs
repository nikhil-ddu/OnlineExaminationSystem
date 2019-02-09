using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationSystem
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null || Session["admin"] == null || (int)Session["admin"] != 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please login first');window.location ='login.aspx';", true);
            }
            else
            {


                Label1.Text = "  " + Session["username"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue=="add")
            {
                Response.Redirect("addqpaper.aspx");
            }
            else if(DropDownList1.SelectedValue=="update")
            {
                Response.Redirect("updateqpaper.aspx");
            }
            else if(DropDownList1.SelectedValue=="delete")
            {
                Response.Redirect("deleteqpaper.aspx");
            }
        }
    }
}
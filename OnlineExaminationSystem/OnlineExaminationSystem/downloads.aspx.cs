using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExaminationSystem
{
    public partial class downloads : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["username"] == null) || (Session["admin"] != null && (int)Session["admin"] == 1))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please login first');window.location ='login.aspx';", true);
            }

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=GRE-Reading-Comprehension-Practice-Test.pdf");
            Response.TransmitFile(Server.MapPath("~/pdf/GRE-Reading-Comprehension-Practice-Test.pdf"));
            Response.End();
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=GRE-Quantitative-Reasoning-Practice-Test.pdf");
            Response.TransmitFile(Server.MapPath("~/pdf/GRE-Quantitative-Reasoning-Practice-Test.pdf"));
            Response.End();
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=GRE-Quantitative-Reasoning-Practice-Test-2.pdf");
            Response.TransmitFile(Server.MapPath("~/pdf/GRE-Quantitative-Reasoning-Practice-Test-2.pdf"));
            Response.End();
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=GRE-Verbal-Reasoning-Practice-Test-1.pdf");
            Response.TransmitFile(Server.MapPath("~/pdf/GRE-Verbal-Reasoning-Practice-Test-1.pdf"));
            Response.End();
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=GRE-Verbal-Reasoning-Practice-Test-2.pdf");
            Response.TransmitFile(Server.MapPath("~/pdf/GRE-Verbal-Reasoning-Practice-Test-2.pdf"));
            Response.End();
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=GATE_CS_2011.pdf");
            Response.TransmitFile(Server.MapPath("~/pdf/GATE_CS_2011.pdf"));
            Response.End();
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=GATE_CS_2012.pdf");
            Response.TransmitFile(Server.MapPath("~/pdf/GATE_CS_2012.pdf"));
            Response.End();
        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=GATE_CS_2013.pdf");
            Response.TransmitFile(Server.MapPath("~/pdf/GATE_CS_2013.pdf"));
            Response.End();
        }
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=CAT_2006_Questions.pdf");
            Response.TransmitFile(Server.MapPath("~/pdf/CAT_2006_Questions.pdf"));
            Response.End();
        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=CAT_2007_Questions.pdf");
            Response.TransmitFile(Server.MapPath("~/pdf/CAT_2007_Questions.pdf"));
            Response.End();
        }
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=CAT_2008_Questions.pdf");
            Response.TransmitFile(Server.MapPath("~/pdf/CAT_2008_Questions.pdf"));
            Response.End();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Helpers;
namespace OnlineExaminationSystem
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Response.Redirect("home.aspx");
            DataClasses2DataContext cd = new DataClasses2DataContext();
            string crypted = Crypto.Hash(TextBox2.Text);
            var query = from t1 in cd.user_masters
                        where t1.username == TextBox1.Text
                        where t1.password == crypted
                        select t1;
          
            Label1.Text = query.Count().ToString();
            
            if (query.Count() == 0)
            {

                
                Label1.Text = "Provide valid details";

            }
            else
            {
                foreach (var i in query)
                {
                    if (i.role_name=="admin")
                    {
                        Session["username"] = i.username;
                        Session["admin"] = 1;
                        Response.Redirect("admin.aspx");
                    }
                    else if (i.role_name=="user")
                    {
                        Session["username"] = i.username;
                        Session["admin"] = 0;
                        Response.Redirect("home.aspx");
                    }

                }


            }

        }
    }
}
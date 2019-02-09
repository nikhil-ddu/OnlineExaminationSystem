using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Helpers;
namespace OnlineExaminationSystem
{
    public partial class signupadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            Label2.Text = "";
            DropDownList1.Items.Add("What is your pet's name?");
            DropDownList1.Items.Add("What is the name of your childhood teacher?");
            DropDownList1.Items.Add("In which city or town your nearest sibling live?");
            DropDownList1.Items.Add("What primary school did you attend?");
            DropDownList1.Items.Add("What time of the day were you born?(hh:mm)");
            DropDownList1.Items.Add("What is the name of your oldest child?");

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int flag = 0;
            DataClasses2DataContext dcd = new DataClasses2DataContext();
            var query = from t1 in dcd.user_masters where t1.username == TextBox1.Text select t1;
            if (query.Count() > 0)
            {
                flag = 1;
                Label1.Text = "Username is already in use";
            }
            var query1 = from t1 in dcd.user_masters where t1.email == TextBox4.Text select t1;
            if (query1.Count() > 0)
            {
                flag = 1;
                Label2.Text = "Email address is already in use";
            }

            if (flag == 0)
            {
                user_master us = new user_master();
                us.username = TextBox1.Text;
                us.password = Crypto.Hash(TextBox2.Text);
                us.email = TextBox4.Text;
                us.sequrity_que = DropDownList1.SelectedItem.Text;
                us.sequrity_ans = TextBox5.Text;
                us.role_name = "admin";
                dcd.user_masters.InsertOnSubmit(us);
                try
                {
                    dcd.SubmitChanges();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Account created successfully!!login here');window.location ='login.aspx';", true);
                }
                catch (Exception ee)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('try again');window.location ='signupadmin.aspx';", true);
                }
            }
        }
    }
}
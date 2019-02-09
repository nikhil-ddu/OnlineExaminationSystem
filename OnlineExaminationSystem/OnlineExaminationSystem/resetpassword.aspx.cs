using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineExaminationSystem;
using System.Web.Helpers;
using System.Net.Mail;
namespace OnlineExaminationSystem
{
    public partial class resetpassword : System.Web.UI.Page
    {
        int flag = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
            Label3.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataClasses2DataContext cd = new DataClasses2DataContext();
            if (MultiView1.ActiveViewIndex == 0)
            {
                
                var query = from t1 in cd.user_masters
                            where t1.username == TextBox1.Text
                            select t1;
                if (query.Count() == 0)
                {


                    Label1.Text = "Enter valid username";

                }
                else
                {
                    var query1 = from t1 in cd.user_masters
                                 where t1.username == TextBox1.Text
                                 select t1;
                    foreach (var i in query1)
                    {
                        Label6.Text = i.sequrity_que;
                    }
                    MultiView1.ActiveViewIndex = 1;
                }
            }
            else if (MultiView1.ActiveViewIndex == 1)
            {

                var query1 = from t1 in cd.user_masters
                             where t1.username == TextBox1.Text
                             select t1;

                if (TextBox5.Text == null)
                {
                    Label2.Text = "enter answer";

                }
                else
                {
                    foreach (var i in query1)
                    {
                        if (TextBox5.Text == i.sequrity_ans)
                        {
                            MultiView1.ActiveViewIndex = 2;
                        }

                        if (TextBox5.Text != i.sequrity_ans && TextBox5.Text != "")
                        {
                            TextBox5.Text = "";
                            Label2.Text = "enter right answer again";
                        }


                    }
                }
            }
           else if (MultiView1.ActiveViewIndex == 2)
            {
                
                user_master us = new user_master();
                if (TextBox3.Text == TextBox4.Text && TextBox3.Text != "" && TextBox4.Text != "")
                {

                    flag = 1;
                    var qu = from t1 in cd.user_masters where t1.username == TextBox1.Text select t1;

                    foreach (var i in qu)
                    {
                        
                        i.password = Crypto.Hash(TextBox4.Text);
                        cd.SubmitChanges();

                    }
                }
                if (flag == 1)
                {
                    
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password chnaged successfully!please login again');window.location ='login.aspx';", true);
                   
                }
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string email="";
            try
            {
                
                var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
                var stringChars = new char[10];
                var random = new Random();
                for (int i = 0; i < stringChars.Length; i++)
                {
                    stringChars[i] = chars[random.Next(chars.Length)];
                }
                var finalString = new String(stringChars);
                DataClasses2DataContext dc = new DataClasses2DataContext();
                var qu = from t1 in dc.user_masters where t1.username == TextBox1.Text select t1;

                foreach (var i in qu)
                {
                   
                    i.password = Crypto.Hash(finalString);
                    email = i.email;
                    dc.SubmitChanges();
                }
                MailMessage message = new MailMessage();
                message.From = new MailAddress("onlineexaminationsystemd1@gmail.com");
                message.To.Add(new MailAddress(email));
                message.Subject = "New Password for your account";
                message.Body = "Login with your new password.Username:" + TextBox1.Text + " ,Password:" + finalString;
                message.IsBodyHtml = true;

                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.UseDefaultCredentials = true;
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("onlineexaminationsystemd1@gmail.com", "nikhilkrishna");
                client.Send(message);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Email has been sent!Please login with new password...');window.location ='login.aspx';", true);
            }
            catch(Exception ee)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Something went wrong');window.location ='login.aspx';", true);
            }
        }
    }
}
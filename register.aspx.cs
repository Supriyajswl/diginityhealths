using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using System.Net;
using System.Net.Mail;
using System.IO;



public partial class register : System.Web.UI.Page
{
    string cn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }
    //protected void register_Click(object sender, EventArgs e)
    //{
    //    Register_Mail();
    //    Clear_Control();
    //}


    protected void register_user_Click(object sender, EventArgs e)
    {
        Register_Mail();
        Clear_Control();
    }
    //protected void register_Click(object sender, EventArgs e)
    //{
    //    Register_Mail();
    //    Clear_Control();
    //}

    protected void Register_Mail()
    {
        try
        {
            SqlConnection con = new SqlConnection(cn);

            Random rand = new Random();
            int value = rand.Next(100001, 999999);
            string send_from = "tanyadec21@gmail.com";
            string send_to = emailAddress.Text;
            string sub = "Welcome Mr./Mrs." + fullName.Text;
            string dis = "This is One Time Password On Registered Email" + emailAddress.Text + "\t\n This is Registration number " + value + "\t\n Do'nt Share it keep Safe";


            if (string.IsNullOrEmpty(send_to))
            {
                emailAddress.Focus();
                Label1.Text = "Please Enter Email.....";
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                string check_query = "select * from Register1 where email=@email and contact=@contact";
                SqlCommand cmd = new SqlCommand(check_query, con);
                cmd.Parameters.AddWithValue("@email", emailAddress.Text);
                cmd.Parameters.AddWithValue("@contact", contact.Text);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Text = "Entered Email Id Already Exist !!!";
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Red;
                    con.Close();
                }
                else
                {
                    con.Close();
                    string insert_query = "insert into Register1 values(@name,@email,@reg,@contact,@age,@gender,@city,@add,@pass)";
                    SqlCommand cmd1 = new SqlCommand(insert_query, con);
                    cmd1.Parameters.AddWithValue("@name", fullName.Text);
                    cmd1.Parameters.AddWithValue("@email", emailAddress.Text);
                    cmd1.Parameters.AddWithValue("@reg", value);
                    cmd1.Parameters.AddWithValue("@contact", contact.Text);
                    cmd1.Parameters.AddWithValue("@age", age.Text);
                    cmd1.Parameters.AddWithValue("@gender", DropDownList2.SelectedValue);
                    cmd1.Parameters.AddWithValue("@city", DropDownList1.SelectedValue);
                    cmd1.Parameters.AddWithValue("@add", address.Text);
                    cmd1.Parameters.AddWithValue("@pass", Password1.Text);
                    con.Open();

                    int x = cmd1.ExecuteNonQuery();


                    using (MailMessage mm = new MailMessage(send_from, send_to))
                    {
                        mm.Subject = sub;
                        mm.Body = dis;
                        mm.IsBodyHtml = false;
                        SmtpClient smtpClient = new SmtpClient();
                        smtpClient.Send(mm);

                        Session["name"] = fullName.Text;
                        Session["reg_no"] = value;
                        Session["user_email"] = emailAddress.Text;
                        Response.Redirect("Login.aspx");
                        //Label1.Text = "Email Sent Successfully !!!!!";
                       // Label1.Visible = true;
                       // Label1.ForeColor = System.Drawing.Color.Green;
                       Response.Write("<script>alert('Your Details is Successfully Send Please Check Your Email Address for registration Number!!')</script>");
                        Clear_Control();
                    }
                    con.Close();


                }
            }


        }
        catch (Exception ex)
        {
            //Label1.Text = ex.Message;
            //Label1.Visible = true;
            //Label1.ForeColor = System.Drawing.Color.Red;
            Response.Write("<script>alert('Your Details is not Successfully Send Please Try Again!!')</script>");
        }








    }
    protected void Clear_Control()
    {
        fullName.Text = emailAddress.Text = age.Text = contact.Text = address.Text = Password1.Text = " ";
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
    }







}
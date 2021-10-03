using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_appointment : System.Web.UI.Page
{
    string cn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(cn);
        cnn.Open();
        string date = DateTime.UtcNow.ToString();
        string s = "insert into appointment(name,contact,age,gender,diseases,date,appdate) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + date + "','" + Appdate.Value + "')";
        SqlCommand cmd = new SqlCommand(s, cnn);
        int x = cmd.ExecuteNonQuery();
        if(x>0)
        {
            Response.Write("<script>alert('Successfully')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
        else
        {
            Response.Write("<script>alert('unsuccessfull')</script>");
        }
    }
}
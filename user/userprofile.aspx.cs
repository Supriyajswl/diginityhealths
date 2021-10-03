using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class user_userprofile : System.Web.UI.Page
{
    string cn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void send_Click(object sender, EventArgs e)
    {
        string qu = "update Register1 set name='" + TextBox1.Text + "',contact='" + TextBox2.Text + "',age='" + TextBox3.Text + "',pass='"+TextBox5.Text+"' where reg='" + TextBox4.Text + "'";

        SqlConnection cnn = new SqlConnection(cn);
        cnn.Open();
        SqlCommand cmd = new SqlCommand(qu,cnn);
        int k = cmd.ExecuteNonQuery();
        if (k > 0)
        {
            Response.Write("<script>alert('Your Details is Successfully Updated!!')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }
        else
        {
            Response.Write("<script>alert('Your Details is not Successfully Updated!!')</script>");
        }



    }
}
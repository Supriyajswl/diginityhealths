using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
{
    string cn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(cn);
        cnn.Open();
        string s = "select id,password from AdminLogin where id='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";
        SqlCommand cmd = new SqlCommand(s, cnn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["id"] = TextBox1.Text;
            
            Response.Redirect("~/admin/ahome.aspx");
        }
        else
        {
            Response.Write("<script>alert('invalid id and password!!')</script>");
        }
    }
}
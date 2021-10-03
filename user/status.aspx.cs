using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_status : System.Web.UI.Page
{
    string cn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(cn);
        cnn.Open();
        string s = "select * from appointment where name='" + TextBox1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(s, cnn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('invalid Patient name..!!')<script>");
            TextBox1.Text = "";
        }
    }
}
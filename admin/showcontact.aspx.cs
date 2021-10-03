using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_showcontact : System.Web.UI.Page
{
    string cn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(cn);
        cnn.Open();
        string s = "select Id,name,email,contact,age,gender,city,caddress from Register1";
        SqlDataAdapter da = new SqlDataAdapter(s, cnn);
        DataTable dt = new System.Data.DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

}
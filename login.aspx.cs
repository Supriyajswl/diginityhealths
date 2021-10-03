using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{

    string cn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Data_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(cn);
        cnn.Open();
        string s = "select reg,pass from Register1 where  reg='" + regNumber.Text + "'and pass='" + password.Text + "'";
        SqlCommand cmd = new SqlCommand(s, cnn);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            Session["RegNo"] = regNumber.Text;
            
            Response.Redirect("~/user/phome.aspx");
        }
        else
        {
            Response.Write("<script>alert('invalid id and password!!')</script>");
        }
    }
}
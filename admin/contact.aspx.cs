using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_contact : System.Web.UI.Page
{
    string cn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(cn);
        cnn.Open();
        string s = "select id,name,email,mobile from contact";
        SqlDataAdapter da = new SqlDataAdapter(s, cnn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection cnn = new SqlConnection(cn);
        cnn.Open();
        string id = GridView1.Rows[e.RowIndex].Cells[0].Text;
        string del = "delete from contact where id='" + id + "'";
        SqlCommand cmd = new SqlCommand(del, cnn);
        int x = cmd.ExecuteNonQuery();
        if(x>0)
        {
            Response.Write("<script>alert('Remove Record!!')</script>");
            string s = "select id,name,email,mobile from contact";
            SqlDataAdapter da = new SqlDataAdapter(s, cnn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('Doesnot Remove Record!!')</script>");
        }
    }
}
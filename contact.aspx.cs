using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class contact : System.Web.UI.Page
{
    string cn = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void send_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(cn);
        cnn.Open();
     /*   string q = "insert into contact values(name=@name,email=@email,mobile=@mobile,subject=@subject,message=@message)";
            SqlCommand cmd = new SqlCommand(q, cnn);
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@email", TextBox2.Text);
        cmd.Parameters.AddWithValue("@mobile", TextBox3.Text);
        cmd.Parameters.AddWithValue("@message", TextBox4.Text);
        cmd.Parameters.AddWithValue("@subject", DropDownList1.SelectedValue);*/
        string q = "insert into contact values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox4.Text + "')";
            SqlCommand cmd = new SqlCommand(q, cnn);
        int x = cmd.ExecuteNonQuery();
        if(x>0)
        {
            Response.Write("<script>alert('Your Details is Successfully Send!!')</script>");

        }
        else
        {
            Response.Write("<script>alert('Your Details is not Successfully Send!!')</script>");
        }
    }
}
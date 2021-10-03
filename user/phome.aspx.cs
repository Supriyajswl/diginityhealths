using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_phome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RegNo"]!=null)
        {
            Response.Write("'" + Session["RegNo"] + "'");
        }
        else
        {
            Response.Redirect("~/login.aspx");
        }
    }
}
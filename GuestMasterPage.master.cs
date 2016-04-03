using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GuestMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Label1.Text = "Login"; 
            Label2.Text = "Sign Up";
        }
        else
        {
            Label1.Text = "Hello " + Session["id"].ToString().TrimEnd();
            Label2.Text = "";
            Label3.Text = "Logout";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/Home.aspx");
    }
}

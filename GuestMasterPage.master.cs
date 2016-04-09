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

    protected void LinkButtonLaptop_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButtonMobiles_Click(object sender, EventArgs e)
    {
        Session["CategoryId"] = "Electronic";
        Response.Redirect("~/Products.aspx");
    }

    protected void LinkButtonAudioDevices_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButtonFiction_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButtonNonFiction_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButtonBestsellers_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButtonCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ShoppingCart.aspx");
    }

    protected void LinkButtonCart_Load(object sender, EventArgs e)
    {
        if(Session["id"] == null)
        {
            LinkButtonCart.Text = "Shopping Cart";
        }
    }
}

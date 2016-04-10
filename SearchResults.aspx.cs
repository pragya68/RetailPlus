using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchResults : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    // SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
        LabelSearch.Text = "Search Results for " + Session["SearchKey"].ToString();
        Search();
    }
    void Search()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Products where ProductName LIKE '%"+Session["SearchKey"] +"%'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListViewPopularProducts.DataSource = dt;
            ListViewPopularProducts.DataBind();

        }
        catch (Exception ex)
        {
        }
        finally
        {
            con.Close();
        }
    }
    protected void LinkButtonProductLink_Command(object sender, CommandEventArgs e)
    {
        Session["ProductId"] = e.CommandArgument.ToString();
        Response.Redirect("~/ProductView.aspx?ProductId='" + Session["ProductId"].ToString() + "'");
    }

    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("~/login/login.aspx");
        }

        else
        {
            Session["OrderId"] = e.CommandArgument.ToString();
            Response.Redirect("~/AddtoCart.aspx");
        }
    }
}
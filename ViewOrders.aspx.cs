using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewOrders : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        bindData();
    }

    void bindData()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Orders where username = '" + Session["id"].ToString()+ "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewShoppingCart.DataSource = dt;
            GridViewShoppingCart.DataBind();
            
        }
        catch
        {
        }
        finally
        {
            con.Close();
        }
    }


    protected void linkdelete_Command(object sender, CommandEventArgs e)
    {
        int OrderID = Convert.ToInt32(e.CommandArgument.ToString());
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Orders where OrderID =" + OrderID + " ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindData();
        }
        catch (Exception ex)
        {
        }
        finally
        {


        }
    }
}
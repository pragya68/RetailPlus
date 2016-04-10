using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCart : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        bindData();
    }
    int value;

    void bindData()
    {
        value = Convert.ToInt32(Session["OId"]);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select ProductName, Quantity, TotalPrice, Tax, Discount from OrderDetails where OrderId = "+ value +" ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewShoppingCart.DataSource = dt;
            GridViewShoppingCart.DataBind();
            String finalValue = checkOutPrice();
            con.Close();
            Label1.Text = finalValue;
        }
        catch
        {
        }
        finally
        {
            con.Close();
        }
    }

    String checkOutPrice()
    {
        SqlCommand cmd = new SqlCommand("select sum(TotalPrice) as TIO from OrderDetails where OrderId = " + value + " ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt.Rows[0]["TIO"].ToString();
    }




    protected void linkdelete_Command(object sender, CommandEventArgs e)
    {
        string id = (e.CommandArgument).ToString();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from OrderDetails where ProductName ='" + id.ToString() + "' ", con);
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Payment.aspx");
    }
}
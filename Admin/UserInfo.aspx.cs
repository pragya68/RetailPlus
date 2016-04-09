using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ProductView : System.Web.UI.Page
{
    //SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        bindData();
    }
    void bindData()
    {
        try
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("select * from Customers ", connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewUserInfo.DataSource = dt;
            GridViewUserInfo.DataBind();
            connection.Close();
        }
        catch
        {
        }
        finally
        {
            connection.Close();
        }
    }



    protected void linkdelete_Command(object sender, CommandEventArgs e)
    {
        string id =(e.CommandArgument).ToString();
        try
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("delete from Customers where CustomerID ='" + id + "' ", connection);
            cmd.ExecuteNonQuery();
            bindData();
        }
        catch (Exception ex)
        {
        }
        finally
        {
            connection.Close();
        }
    }
}
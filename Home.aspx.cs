using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from Products", con);
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
}
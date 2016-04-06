using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
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

    protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}


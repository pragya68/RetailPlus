using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductView : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    String ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        bindData();
        Label1.Text = Session["ProductID"].ToString();
    }
    void bindData()
    {
        //int pid;
        //if(Session["ProductID"] != null)
           // pid = Int32.Parse(Session["ProductID"].ToString());
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Products where ProductID = '" + Int32.Parse(Session["ProductID"].ToString()) + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListViewImg.DataSource = dt;
            ListViewImg.DataBind();
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
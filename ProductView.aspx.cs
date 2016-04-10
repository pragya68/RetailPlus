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
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    String ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        bindimg();
        bindData();
    }
    void bindimg()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Products where ProductID = " + Convert.ToInt32(Session["ProductID"]) + " ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable imgdt = new DataTable();
            da.Fill(imgdt);
            ListViewImg.DataSource = imgdt;
            ListViewImg.DataBind();
        }
        catch (Exception ex)
        {
        }
        finally
        {
            
        }
    }

    void bindData() {
        try
        {
            
            SqlCommand cmd = new SqlCommand("select * from Products where ProductID = " + Convert.ToInt32(Session["ProductID"]) + " ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListViewProductList.DataSource = dt;
            ListViewProductList.DataBind();
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

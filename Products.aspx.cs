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
    String Value;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CategoryId"] != null)
        {
            bindData();      
        }
    }
    void bindData()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Products where ProductType = '" + Session["CategoryID"].ToString() + "'", con);
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

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void LinkButtonHL_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Products where ProductType = '" + Session["CategoryID"].ToString() + "' order by MSRP desc ", con);
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

    protected void LinkButtonLH_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Products where ProductType = '" + Session["CategoryID"].ToString() + "' order by MSRP asc ", con);
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
}


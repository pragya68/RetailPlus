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
   // SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
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
            SqlCommand cmd= new SqlCommand("select * from Products where ProductType = '" + Session["CategoryID"].ToString() + "'", con);
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

    
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String text="'";
        int check = 0; 
        for(int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            
            if (CheckBoxList1.Items[i].Selected)
            {
                if (check > 0)
                {
                    text += "' OR Colour ='";
                }
                text += CheckBoxList1.Items[i].Text;
                check++;
            }
        }
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Products where ProductType = '" + Session["CategoryID"].ToString() + "' and ( Colour = "+ text +"') ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListViewPopularProducts.DataSource = dt;
            ListViewPopularProducts.DataBind();
        }
        catch (Exception)
        {
        }
        finally
        {
            con.Close();
        }
    }

    protected void LinkButtonHL_Click(object sender, EventArgs e)
    {
        try{
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Products where ProductType = '" + Session["CategoryID"].ToString() + "' order by MSRP desc ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListViewPopularProducts.DataSource = dt;
            ListViewPopularProducts.DataBind();
        }
        catch (Exception)
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

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Products where ProductType = '" + Session["CategoryID"].ToString() + "' and Discount between 0 and 25 ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ListViewPopularProducts.DataSource = dt;
        ListViewPopularProducts.DataBind();
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Products where ProductType = '" + Session["CategoryID"].ToString() + "' and Discount between 25 and 50 ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ListViewPopularProducts.DataSource = dt;
        ListViewPopularProducts.DataBind();
    }

    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Products where ProductType = '" + Session["CategoryID"].ToString() + "' and Discount between 50 and 75 ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ListViewPopularProducts.DataSource = dt;
        ListViewPopularProducts.DataBind();
    }

    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Products where ProductType = '" + Session["CategoryID"].ToString() + "' and Discount between 75 and 100 ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ListViewPopularProducts.DataSource = dt;
        ListViewPopularProducts.DataBind();
    }
}


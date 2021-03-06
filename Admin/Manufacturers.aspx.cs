﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindData();
    }
    //SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    protected void Save_Click(object sender, EventArgs e)
    {
        ins();
    }

    void ins()
    {
        try
        {
           connection.Open();
           SqlCommand cmd = new SqlCommand("insert into Manufacturers values('" + name.Text + "','" + MobileNo.Text + "','" + EmailID.Text + "','" + WebsiteURL.Text + "','" + Address.Text + "','" + COD.Text + "')", connection);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lbl.Text = "Saved!!";
            }
            else
            {
                lbl.Text = "Please! Try again";
            }

        }
        catch { }
        finally { connection.Close(); }
    }
    void bindData()
    {
        try
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("select * from Manufacturers ", connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewProductInfo.DataSource = dt;
            GridViewProductInfo.DataBind();
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
        int id = Convert.ToInt32(e.CommandArgument);
        try
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("delete from Manufacturers where ManufacturerID =" + id + " ", connection);
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

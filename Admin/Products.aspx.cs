using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;

public partial class Admin_Products : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        bindData();
    }

    protected void save_Click(object sender, EventArgs e)
    {
        con.Open();
        if (ImageUpload.HasFile)
        {
            string file_name = Path.GetFileName(ImageUpload.PostedFile.FileName);
            string extention = Path.GetExtension(ImageUpload.PostedFile.FileName);
            ImageUpload.SaveAs(Server.MapPath("/product_images/"+file_name.Trim()+ProductName.Text.Trim()+extention.Trim()));
            string image = "/product_images/"+file_name.Trim()+ProductName.Text.Trim()+extention.Trim();
            
            SqlCommand cmd = new SqlCommand("insert into Products values('" + ManufacturerID.Text + "','" + ProductName.Text + "','" + Description.Text + "','" + Weight.Text + "','" + Colour.Text + "','" + AvailableUnits.Text + "','" + MSRP.Text + "','" + Discount.Text + "','" + image.ToString() + "','" + ProductType.Text + "')", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblmsg.Text = "Saved!";
            }
            else
            {
                lblmsg.Text = "Try again";
            }

            con.Close();
            
        }
    }
    void bindData()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Products ORDER BY ProductType", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewProductInfo.DataSource = dt;
            GridViewProductInfo.DataBind();
            con.Close();
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
        int id = Convert.ToInt32(e.CommandArgument);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Products where ProductID =" + id + " ", con);
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
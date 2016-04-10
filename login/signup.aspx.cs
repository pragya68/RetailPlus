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


public partial class login_signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\Test1\App_Data\Database.mdf;Integrated Security = True; Connect Timeout = 30");
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void save_Click(object sender, EventArgs e)
    {
        insert();
        clear();
    }
    void insert()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Customers values('" + name.Text + "','" + gender.Text + "','" + email.Text + "','" + username.Text + "','" + password.Text + "','" + address.Text + "','" + mobile.Text + "','" + "User" + "')", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblmsg.Text = "Successfully Signed Up";
                for (i = 0; i < 50000; i++) ;
                Response.Redirect("../Home.aspx");
            }
            else
            {
                lblmsg.Text = "Try Again!!";
            }
            con.Close();
        }
        catch (Exception ex)
        {

        }
        finally
        {
            con.Close();
        }
    }
    void clear()
    {
        name.Text = " ";
        gender.Text = " ";
        username.Text = " ";
        email.Text = " ";
        address.Text = " ";
        mobile.Text = " ";
        password.Text=" ";
    }

    protected void username_TextChanged1(object sender, EventArgs e)
    {
        try
        {
            lblmsg.Text = "";
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Customers where username ='" + username.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                lblmsg.Text = "User Name Already Exits..";
                username.Text = "";
                username.Focus();
            }
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
}

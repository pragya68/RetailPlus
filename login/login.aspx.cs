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

public partial class login_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\Test1\App_Data\Database.mdf;Integrated Security = True; Connect Timeout = 30");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        bind_tbl();
    }
    void bind_tbl()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Customers where Username='" + username.Text + "' and Password='" + password.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "Wri1!!";
                string type = dt.Rows[0]["Type"].ToString();
                
                if (type == "Admin")
                {
                    Session["id"] = dt.Rows[0]["Username"].ToString();
                    Response.Redirect("../Admin/AdminHome.aspx");
                }
                if (type == "User")
                {
                    Session["id"] = dt.Rows[0]["Username"].ToString();
                    Response.Redirect("/Home.aspx");
                    Label1.Text = "Wri!!";
                }
            }
            else
            {
                Label1.Text = "Wrong!!";
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
}  
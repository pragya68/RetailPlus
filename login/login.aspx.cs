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
    SqlConnection con = new SqlConnection("Data Source=HP\\LOCALHOST;Initial Catalog=newsPaper;User ID=sa;Password=master");
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
            SqlCommand cmd = new SqlCommand("Select * from login_table where username='" + username.Text + "' and password='" + password.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string type = dt.Rows[0]["Type"].ToString();
                if (type == "Admin")
                {
                    Session["id"] = dt.Rows[0]["username"].ToString();
                    Response.Redirect("Admin/home.aspx");
                }
                if (type == "User")
                {
                    Session["id"] = dt.Rows[0]["username"].ToString();
                    Response.Redirect("~/User/home.aspx");
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
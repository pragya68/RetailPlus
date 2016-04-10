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

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");

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
                string type = dt.Rows[0]["Type"].ToString();
                
                if (type == "Admin")
                {
                    Session["id"] = dt.Rows[0]["Username"].ToString();
                    Response.Redirect("../Admin/AdminHome.aspx");
                }
                if (type == "User")
                {
                    Session["id"] = dt.Rows[0]["Username"].ToString();
                              
                    
                    cart();
                    //Label2.Text = "ujujits working";
                    Response.Redirect("../Home.aspx");
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
    void cart()
    {
        SqlCommand nCmd = new SqlCommand("Select TOP 1 * from OrderDetails order by OrderID desc", con);
        SqlDataAdapter nDa = new SqlDataAdapter(nCmd);
        DataTable nDt = new DataTable();
        nDa.Fill(nDt);
        Label2.Text = "Test";
        if (nDt.Rows.Count > 0)
        {
            Session["OId"] = nDt.Rows[0]["OrderID"];
            int v = Convert.ToInt32(Session["OId"]);
            Session["OId"] = v + 1;
            int itemNo = 0;
            Session["ItemNO"] = itemNo;
           // Label2.Text = Session["OId"].ToString();
        }
        con.Close();
    }

}  
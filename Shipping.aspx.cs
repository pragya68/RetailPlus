using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shipping : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        bindUserData();
        bindOrderData();
    }
    void bindUserData()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Name,Address from Customers where username='"+Session["id"].ToString()+"'",con);
        SqlDataAdapter A = new SqlDataAdapter(cmd);
        DataTable D = new DataTable();
        A.Fill(D);
        Name.Text = D.Rows[0]["Name"].ToString();
        Address.Text = D.Rows[0]["Address"].ToString();
        con.Close();
     }
    void bindOrderData()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select ShippingDate from Orders where OrderID='" + Session["OId"].ToString() + "'", con);
        SqlDataAdapter A = new SqlDataAdapter(cmd);
        DataTable D = new DataTable();
        A.Fill(D);
        String date = D.Rows[0]["ShippingDate"].ToString();
        ShippingDate.Text = date.Substring(0,date.IndexOf(' '));
        con.Close();
    }
}
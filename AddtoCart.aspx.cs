using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddtoCart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        int tmp;
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Products where ProductID = "+ Convert.ToInt32(Session["OrderId"]) + " ",con);
        int value = Convert.ToInt32(Session["OrderId"]);
        int finalID = Convert.ToInt32(Session["OId"]);
       
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            string ProductName = dt.Rows[0]["ProductName"].ToString();
            int MSRP = Convert.ToInt32(dt.Rows[0]["MSRP"]);
            double Tax = 14;
            int qty=1; 
            int Discount = Convert.ToInt32(dt.Rows[0]["Discount"]);

            SqlCommand cmdn = new SqlCommand("Insert into OrderDetails values("+ finalID  +" , " + value + ",'" + ProductName + "',"+ qty +","+ MSRP + "," + Tax + "," + Discount +")", con);

            int i = cmdn.ExecuteNonQuery();
            if (i > 0)
            {
                tmp = Convert.ToInt32(Session["ItemNO"]);
                tmp++;
                Session["ItemNO"] = tmp; 
             }
            else { }
               

        }
        con.Close();

        if (Session["CategoryId"] != null)
            Response.Redirect("~/Products.aspx");

        else Response.Redirect("~/Home.aspx"); 
    }
}
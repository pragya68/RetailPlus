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
    protected void Page_Load(object sender, EventArgs e)
    {
        int ItemNo,curId,preID,finalID;
        String fakeId;
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Products where ProductID = "+ Convert.ToInt32(Session["OrderId"]) + " ",con);
        int value = Convert.ToInt32(Session["OrderId"]);
        int ID = Convert.ToInt32(Session["OId"]);curId = ID / 100;
        int previousID = Convert.ToInt32(Session["Previous"]);preID = previousID / 100;
        if (curId == preID)
        {
            finalID = ID++;
        }
        else
        {
            fakeId = curId.ToString()+"00";
            finalID = Convert.ToInt32(fakeId) + 1;
            Session["ItemNo"] = finalID % 100;
        }
        
        
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
                Label1.Text = "Success!";
                
            }
            else
                Label1.Text = "Fail!";

        }
        con.Close();

        if (Session["CategoryId"] != null)
            Response.Redirect("~/ProductList.aspx");

        else Response.Redirect("~/Home.aspx");
    }
}
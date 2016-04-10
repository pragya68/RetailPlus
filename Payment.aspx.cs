using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\pragya\Documents\SEM_4\DBMS_Project\RetailPlus\App_Data\Database.mdf;Integrated Security=True");
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sushant\Documents\GitHub\RetailPlus\App_Data\Database.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void PayNow_Click(object sender, EventArgs e)
    {
        pay();
        Response.Redirect("~/Shipping.aspx");
    }

    void pay()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into PaymentDetails Values('"+ Payx.Value.ToString() +"','"+ CardNo.Text +"','" + BankName.Text + "') ", con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            addToOrder();
        }
    }

       
    protected void Cash_CheckedChanged(object sender, EventArgs e)
    {
        if (Cash.Checked)
            Payx.Value = "COD"; 
    }

    protected void Card_CheckedChanged(object sender, EventArgs e)
    {
        if (Cash.Checked)
            Payx.Value = "Card";
    }

    void addToOrder()
    {
        int val = getPaymentID();
        SqlCommand cmd = new SqlCommand("Insert into Orders(OrderID,Username,Fulfilled,PaymentID) Values('"+ Convert.ToInt32(Session["OId"]) +"' , '"+ Session["id"].ToString() +"' , '"+ "N" +"' , "+ val +")", con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
                
        }
    }

    int getPaymentID()
    {
        int value = 0 ;
        SqlCommand nCmd = new SqlCommand("Select TOP 1 * from PaymentDetails order by PaymentID desc", con);
        SqlDataAdapter nDa = new SqlDataAdapter(nCmd);
        DataTable nDt = new DataTable();
        nDa.Fill(nDt);
        if (nDt.Rows.Count > 0)
        {
         value = Convert.ToInt32(nDt.Rows[0]["PaymentID"].ToString());
        }
        return value;
    }
}
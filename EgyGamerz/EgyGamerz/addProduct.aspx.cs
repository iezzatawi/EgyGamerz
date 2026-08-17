using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EgyGamerz
{
    public partial class addProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminHomePage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|myDB.mdf;Integrated Security=True";
                string insertData = "INSERT INTO PRODUCT VALUES(@product_Id, @product_Name, @product_Quantity,@product_Price)";
                SqlCommand cmdInsert = new SqlCommand(insertData, connection);
                try
                {
                    cmdInsert.Parameters.AddWithValue("@product_Id", idText.Text);
                    cmdInsert.Parameters.AddWithValue("@product_Name", pNameText.Text);
                    cmdInsert.Parameters.AddWithValue("@product_Quantity", pQuantityText.Text);
                    cmdInsert.Parameters.AddWithValue("@product_Price", priceText.Text);

                    connection.Open();
                    cmdInsert.ExecuteNonQuery();
                    connection.Close();

                    lblMsg.Text = "Product has been added!";
                    Response.Redirect("~/adminHomePage.aspx");

                }
                catch
                {
                    lblMsg.Text = "Database Error, try again later.";
                }
            }
            catch (SqlException err)
            {
                lblMsg.Text = "Unexpected Error, try again later.";

            }
        }
    }
}

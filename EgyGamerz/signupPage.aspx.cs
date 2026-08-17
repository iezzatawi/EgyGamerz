using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EgyGamerz
{
    public partial class signupPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|myDB.mdf;Integrated Security=True";
                string insertData = "INSERT INTO CUSTOMER VALUES(@cust_FName, @cust_LName,@cust_Email,@cust_Address, @cust_Password)";
                SqlCommand cmdInsert = new SqlCommand(insertData, connection);
                try
                {

                    cmdInsert.Parameters.AddWithValue("@cust_FName", txtFName.Text);
                    cmdInsert.Parameters.AddWithValue("@cust_LName", txtLName.Text);
                    cmdInsert.Parameters.AddWithValue("@cust_Email", txtEmail.Text);
                    cmdInsert.Parameters.AddWithValue("@cust_Address", txtAddress.Text);
                    cmdInsert.Parameters.AddWithValue("@cust_Password", txtPassword.Text);

                    connection.Open();
                    cmdInsert.ExecuteNonQuery();
                    connection.Close();

                    lblMsg.Text = "Your account has been created!";
                    Response.Redirect("~/unloggedHomePage.aspx");

                }
                catch (SqlException err)
                {
                    if (err.Number == 2627)
                    {
                        lblMsg.Text = "Email already exist!";
                    }
                    else
                    {
                        lblMsg.Text = "Database Error, try again.";
                    }

                }

            }
            catch
            {
                lblMsg.Text = "Unexpected Error, try again later.";
            }

        }
    }
}
   
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EgyGamerz
{
    public partial class deleteUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                if (CheckBox1.Checked)
                {
                    SqlConnection connection = new SqlConnection();
                    connection.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|myDB.mdf;Integrated Security=True";
                    string deleteData = "DELETE FROM CUSTOMER WHERE cust_Email = '" + delUserIdTxt.Text + "'";
                    SqlCommand deleteUser = new SqlCommand(deleteData, connection);
                    SqlDataReader deleteReader;
                    connection.Open();
                    deleteReader = deleteUser.ExecuteReader();
                    Label2.Text = "User Deleted!";
                    connection.Close();
                    Response.Redirect("~/adminHomePage.aspx");

                }
                else
                {
                    Label2.Text = "Confirm before deletion!";

                }
                
            } catch
            {
                Label2.Text = "Database Error, try again later.";
            }
        }
    }
}
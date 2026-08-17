using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EgyGamerz
{
    public partial class loginPage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|myDB.mdf;Integrated Security=True";

                string selectData = "SELECT * FROM CUSTOMER WHERE cust_Email = '" + txtEmail.Text + "' AND cust_Password = '" + txtPassword.Text + "'";
                SqlCommand cmdSelect = new SqlCommand(selectData, connection);
                SqlDataReader reader; ;


                string adminData = "SELECT * FROM ADMIN WHERE admin_Email = '" + txtEmail.Text + "' AND admin_Password = '" + txtPassword.Text + "'";
                SqlCommand adminSelect = new SqlCommand(adminData, connection);
                SqlDataReader adminReader;
                connection.Open();
                adminReader = adminSelect.ExecuteReader();

                try
                {
                    if (adminReader.Read())
                    {
                        string FName = (string)adminReader.GetValue(1);
                        string LName = (string)adminReader.GetValue(2);

                        HttpCookie cookie = new HttpCookie("adminCookie");
                        cookie.Values.Add("admin_Email", txtEmail.Text);
                        cookie.Values.Add("admin_Password", txtPassword.Text);
                        cookie.Values.Add("admin_FName", FName);
                        cookie.Values.Add("admin_LName", LName);
                        cookie.Expires = DateTime.Now.AddDays(1);
                        Response.Cookies.Add(cookie);
                        Response.Redirect("~/adminHomePage.aspx");

                    }
                    connection.Close();
                    try
                    {
                        connection.Open();
                        reader = cmdSelect.ExecuteReader();
                        if (reader.Read())
                        {
                            string FName = (string)reader.GetValue(0);
                            string LName = (string)reader.GetValue(1);

                            HttpCookie cookie = new HttpCookie("userCookie");
                            cookie.Values.Add("cust_Email", txtEmail.Text);
                            cookie.Values.Add("cust_Password", txtPassword.Text);
                            cookie.Values.Add("cust_FName", FName);
                            cookie.Values.Add("cust_LName", LName);
                            cookie.Expires = DateTime.Now.AddDays(1);
                            Response.Cookies.Add(cookie);
                            Response.Redirect("~/loggedHomePage.aspx");

                        }
                        else
                        {
                            lblMsg.Text = "Incorrect Email/Password";
                            connection.Close();
                        }
                    }
                    catch
                    {

                    }
                }
                catch (SqlException err)
                {
                    lblMsg.Text = "Unexpect Error, try again later.";
                    connection.Close();
                }

            }
            catch
            {

            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EgyGamerz
{
    public partial class loginMasterTemplate : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = "";
            string fName = "";
            string lName = "";

            if (Request.Cookies["userCookie"] != null)
            {
                email = Request.Cookies["userCookie"].Values["cust_Email"];
                fName = Request.Cookies["userCookie"].Values["cust_FName"];
                lName = Request.Cookies["userCookie"].Values["cust_LName"];
            }

            lblMsg.Text = "Welcome, " + fName + " " + lName;
        }

        protected void homeBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/loggedHomePage.aspx");
        }
        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/unloggedHomePage.aspx");
        }
    }
}
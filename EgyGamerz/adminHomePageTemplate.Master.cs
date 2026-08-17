using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EgyGamerz
{
    public partial class adminHomePageTemplate : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = "";
            string fName = "";
            string lName = "";

            if (Request.Cookies["adminCookie"] != null)
            {
                email = Request.Cookies["adminCookie"].Values["admin_Email"];
                fName = Request.Cookies["adminCookie"].Values["admin_FName"];
                lName = Request.Cookies["adminCookie"].Values["admin_LName"];
            }

            lblMsg.Text = "Welcome Admin, " + fName + " " + lName;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/addProduct.aspx");
        }

        protected void addUserBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/addUser.aspx");
        }

        protected void viewProductsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/viewProducts.aspx");
        }

        protected void viewOrdersBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/viewOrders.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/deleteOrder.aspx");
        }
    }
}
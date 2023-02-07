using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine("**********     PAGE LOAD  WEBFORM14  **********");
            if (!IsPostBack)
            {
                if (false)//(Session["LoginId"] == null) 
                    Response.Redirect("frmLogin.aspx");
                else
                {
                    //Response.ClearHeaders(); 
                    //Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                    // Response.AddHeader("Cache-Control", "max-age=30");
                    //Response.AddHeader("Pragma", "no-cache");
                }
            }
        }

        protected void paidButton_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void bouton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}
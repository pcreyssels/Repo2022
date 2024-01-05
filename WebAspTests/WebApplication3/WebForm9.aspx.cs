using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sid = this.Session.SessionID;
            bool ins = this.Session.IsNewSession;

            bool icb = IsCallback;

            bool ipb = IsPostBack;

            if (Session["alive"] == null)
                Response.Redirect($"~/WebForm7.aspx", false);


            //TextBoxalc.Attributes.Add("style", "text-transform: lowercase;");

            string s = "";

            s = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ssZ");

            s = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");

            s = "";


        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void button_accept_Click(object sender, EventArgs e)
        {

        }

        protected void butt_abandon_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}
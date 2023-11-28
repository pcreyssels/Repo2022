using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cb1_CheckedChanged(object sender, EventArgs e)
        {
            if (panel1.Visible)
                panel1.Visible = false;
            else
                panel1.Visible = true;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_prevent_Click(object sender, EventArgs e)
        {
            preventflag.Value = "1";
        }

        protected void Button_notprevent_Click(object sender, EventArgs e)
        {
            preventflag.Value = "";
        }
    }
}
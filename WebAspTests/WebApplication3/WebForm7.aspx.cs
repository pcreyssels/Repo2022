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
            checkbox_1.Attributes.Add("onclick", "showhideinfo_1()");
        }

        protected void Unnamed_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cb1_CheckedChanged(object sender, EventArgs e)
        {
            if (panelinfo2.Visible)
                panelinfo2.Visible = false;
            else
                panelinfo2.Visible = true;
        }

        protected void validbutton_Click(object sender, EventArgs e)
        {
            //bool v = checkbox1.Checked;
            string s = hiddencheckbox.Value;
            bool v =  checkbox_1.Checked;
            int fin = 1;
        }
    }
}
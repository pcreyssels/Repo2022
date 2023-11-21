using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonValidviaModal_Click(object sender, EventArgs e)
        {
            // *********** déclenche le modal de recap bouton déclencheur à EXCLURE d'un updatepanel
            String csname1 = "PopupScript";
            Type cstype = this.GetType();
            // Get a ClientScriptManager reference from the Page class.
            ClientScriptManager cs = Page.ClientScript;
            // Check to see if the startup script is already registered.
            if (!cs.IsStartupScriptRegistered(cstype, csname1))
            {
                StringBuilder cstext1 = new StringBuilder();
                cstext1.Append("<script>$(document).ready(function(){$(\"#modal_recap\").modal(\"show\");});</script>");
                cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
            }
        }

        // click ok depuis modal
        protected void hiddenButton1forModal_okclick(object sender, EventArgs e)
        {

        }

        // click cancel depuis modal
        protected void hiddenButton2forModal_cancelclick(object sender, EventArgs e)
        {

        }
        
    }
}
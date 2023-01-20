using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        // https://stackoverflow.com/questions/301473/rebinding-events-in-jquery-after-ajax-update-updatepanel
        // https://www.w3schools.com/bootstrap/bootstrap_ref_js_popover.asp
        // https://stackoverflow.com/questions/3630341/sys-application-add-load-vs-document-ready-vs-pageload


        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       PAGE LOAD    **********");

            // Define the name and type of the client scripts on the page.
            String csname1 = "PopupScript";
            Type cstype = this.GetType();

            // Get a ClientScriptManager reference from the Page class.
            ClientScriptManager cs = Page.ClientScript;

            // Check to see if the startup script is already registered.
            if (true)//(!cs.IsStartupScriptRegistered(cstype, csname1))
            {
                StringBuilder cstext1 = new StringBuilder();
                //cstext1.Append("<script type=text/javascript> alert('Hello World!') </");
                //cstext1.Append("script>");

                //cstext1.Append("alert('Hello World!')");

                //function pageLoad(sender, args) {
                //    if (args.get_isPartialLoad()) {
                //        //Specific code for partial postbacks can go in here.
                //        //alert("Hello! I am an alert box!!");
                //        $(function () {
                //            $('[data-toggle="popover"]').popover()
                //        })
                //    }
                //}

                //function pageLoad(sender, args) {if (args.get_isPartialLoad()) {$(function () {$('[data-toggle="popover"]').popover()})}}

                cstext1.Append("function pageLoad(sender, args) {if (args.get_isPartialLoad()) {$(function () {$('[data-toggle=\"popover\"]').popover()})}}");

                cs.RegisterStartupScript(cstype, csname1, cstext1.ToString(),true);
            }
        }

        protected void bouton1_Click(object sender, EventArgs e)
        {
            int i = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int i = 1;
        }
    }
}
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

        private void Page_PreInit(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       Page_PreInit    **********");

        }

        private void Page_Init(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       Page_Init    **********");

        }
        protected void Page_InitComplete(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       Page_InitComplete    **********");
        }

        protected void Page_PreLoad(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       Page_PreLoad    **********");
        }




        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine("**********     PAGE LOAD  WEBFORM15  **********");

            if (!IsPostBack) 
            { 
                if (false)//(Session["LoginId"] == null) 
                    Response.Redirect("frmLogin.aspx"); 
                else 
                { 
                    //Response.ClearHeaders(); 
                    Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                    //Response.AddHeader("Pragma", "no-cache");
                }
            }


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

                cs.RegisterStartupScript(cstype, csname1, cstext1.ToString(), true);

                d2.InnerHtml = "toto";
            }

            bool infosession = Session.IsNewSession;
            Uri uri_ref = Request.UrlReferrer;

            Session["var1"] = "session variable 1";
            Session["var2"] = 15;


        }

        protected void bouton1_Click(object sender, EventArgs e)
        {
            int i = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int i = 1;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       Button3_Click    **********");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       Button4_Click    **********");
        }


        protected void Page_PreRender(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       Page_PreRender    **********");
        }

        protected void Page_PreRenderComplete(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       PreRenderComplete    **********");
        }

        protected void Page_SaveStateComplete(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       Page_SaveStateComplete    **********");
        }

        protected void Page_Render(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       Page_Render    **********");
            /*
             * This is not an event; instead, at this stage of processing, the Page object calls this method on each control. 
             * All ASP.NET Web server controls have a Render method that writes out the control's markup to send to the browser.
             * If you create a custom control, you typically override this method to output the control's markup. 
             * However, if your custom control incorporates only standard ASP.NET Web server controls and no custom markup, 
             * you do not need to override the Render method. For more information, see Developing Custom ASP.NET Server Controls.
             * A user control (an .ascx file) automatically incorporates rendering, so you do not need to explicitly render the control in code.
             */
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            Debug.WriteLine("**********       Page_Unload    **********");
        }

        protected void paidButton_Click(object sender, EventArgs e)
        {

        }
    }
}
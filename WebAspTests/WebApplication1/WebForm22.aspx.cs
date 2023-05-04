using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm22 : System.Web.UI.Page, System.Web.UI.ICallbackEventHandler
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            bool icb = IsCallback;
            bool ipb = IsPostBack;
            // injecte script d'envoi par callback
            //ClientScriptManager cm = Page.ClientScript;
            //// cbReference <= 'WebForm_DoCallback('__Page',arg,ReceiveServerData,"",null,false)'
            //String cbReference = cm.GetCallbackEventReference(this, "arg",
            //    "ReceiveServerData", "");
            //String callbackScript = "function CallServer(arg, context) {" +
            //    cbReference + "; }";
            //cm.RegisterClientScriptBlock(this.GetType(),
            //    "CallServer", callbackScript, true);
            int i = 0;
        }

        // appel callbacks 
        //https://learn.microsoft.com/en-us/previous-versions/aspnet/ms178208(v=vs.100)
        public void RaiseCallbackEvent(String eventArgument)
        {
            // Processes a callback event on the server using the event
            // argument from the client.
        }

        public string GetCallbackResult()
        {
            // Returns the results of a callback event to the client.
            string dateString = DateTime.Now.ToLongDateString();

            return dateString;
        }

        protected void BV_Click(object sender, EventArgs e)
        {
           // Page.Validate();
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (TextBox1.Text == "" && checkbox1.Checked)
            {
                args.IsValid = false;
            }
            else
                args.IsValid = true;
        }

        protected void checkbox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cusv_TextBox_formationenvisagee_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

        protected void checkbox_poursuiteetudes_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //html.Attributes.Add("lang", "fr");
            //html.Attributes.Remove("id");
            
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            /*
            * Raised at the end of the event-handling stage.
            * Use this event for tasks that require that all other controls on the page be loaded.
            */
            //html.Attributes.Add("lang", "fr");
            //html.Attributes.Remove("id");
            AttributeCollection ac =  ((MasterPage)this).Attributes;
            object et = e.GetType();
            Page page = new Page();
            CultureInfo ci = Thread.CurrentThread.CurrentUICulture;
            CultureInfo ci2 = Thread.CurrentThread.CurrentCulture;
            
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            //html.Attributes.Remove("id");
            /*
            * Raised at the end of the event-handling stage.
            * Use this event for tasks that require that all other controls on the page be loaded.
            */
            AttributeCollection ac = ((MasterPage)this).Attributes;
            object et = e.GetType();
            Page page = new Page();
            CultureInfo ci = Thread.CurrentThread.CurrentUICulture;
            CultureInfo ci2 = Thread.CurrentThread.CurrentCulture;
            
        }

        protected override void Render(HtmlTextWriter writer)
        {

            StringWriter output = new StringWriter();
            base.Render(new HtmlTextWriter(output));
            //This is the rendered HTML of your page. Feel free to manipulate it.
            string outputAsString = output.ToString();

            outputAsString = outputAsString.Replace("<html>", "<html lang=\"fr\">");
            
            writer.Write(outputAsString);

            //if ((HasControls()) && (Controls[0] is LiteralControl))
            //{
            //    writer.Write("<H2>Your Message: " + ((LiteralControl)Controls[0]).Text + "</H2>");
            //}
        }
    }
}
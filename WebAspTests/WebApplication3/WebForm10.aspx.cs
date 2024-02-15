using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_refresh_ServerClick(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {

        }

        protected void button_valider_Click(object sender, EventArgs e)
        {

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            /*
            * Raised at the end of the event-handling stage.
            * Use this event for tasks that require that all other controls on the page be loaded.
            */
            
            object et = e.GetType();
            Page page = new Page();
            CultureInfo ci = Thread.CurrentThread.CurrentUICulture;
            CultureInfo ci2 = Thread.CurrentThread.CurrentCulture;

        }
    }
}
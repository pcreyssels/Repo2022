using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm10 : System.Web.UI.Page
    {

        protected override void InitializeCulture()
        {
            string Culture = "fr";
            System.Globalization.CultureInfo ci = new System.Globalization.CultureInfo(Culture);
            Thread.CurrentThread.CurrentCulture = ci;
            Thread.CurrentThread.CurrentUICulture = ci;
            base.InitializeCulture();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "titre ma page";
        }
    }
}
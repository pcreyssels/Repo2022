using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        int i = 0;

        protected override void InitializeCulture()
        {
            string cultureName = "en"; // "en" "fr"
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(cultureName);
            Thread.CurrentThread.CurrentCulture = Thread.CurrentThread.CurrentUICulture;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            CultureInfo ci = Thread.CurrentThread.CurrentUICulture;
            string cidn = ci.DisplayName;
            string cien = ci.EnglishName;
            string cin = ci.Name;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
        }

        protected void B2_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                i = 0;
            }
            else
            {
                i = 1;
            }
        }
    }
}
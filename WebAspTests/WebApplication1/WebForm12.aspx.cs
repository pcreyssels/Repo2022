using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            string Culture = "en";
            System.Globalization.CultureInfo ci = new System.Globalization.CultureInfo(Culture);
            Thread.CurrentThread.CurrentCulture = ci;
            Thread.CurrentThread.CurrentUICulture = ci;
            base.InitializeCulture();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            btnFileUpload.Attributes.Add("onclick", "document.getElementById('" + FileUpload1.ClientID + "').click();");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(@"C:\tmp2\image.jpg");
            }
        }
    }
}
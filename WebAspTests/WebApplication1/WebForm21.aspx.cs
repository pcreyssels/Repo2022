using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Uri _currentUri = HttpContext.Current.Request.Url;
            string t = HttpContext.Current.Request.ApplicationPath;
            string u = HttpContext.Current.Request.PhysicalApplicationPath;
            string v = HttpContext.Current.Request.AppRelativeCurrentExecutionFilePath;
            HttpRequest _hr = HttpContext.Current.Request;

            string baseUrl = Request.Url.Scheme + "://" + Request.Url.Authority + Request.ApplicationPath.TrimEnd('/') + "/";

            string s = _currentUri.ToString();
            string z = "";
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {

        }

        protected void b1_ServerClick(object sender, EventArgs e)
        {
            b2.InnerText = "bouton change";
        }

        protected void b2_ServerClick(object sender, EventArgs e)
        {
            if (b2.InnerText.StartsWith("bo"))
                info1.Text = "action 2";
            else if (b2.InnerText.StartsWith("B2"))
                info1.Text = "action 1";
        }

        protected void B3_Click(object sender, EventArgs e)
        {
            b2.Visible = false;
            b1.Visible = true;
        }

        protected void B4_Click(object sender, EventArgs e)
        {
            b2.Visible = true;
            b1.Visible = false;
        }
    }
    
}
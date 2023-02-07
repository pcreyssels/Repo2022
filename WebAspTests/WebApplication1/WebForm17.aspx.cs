using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine("**********     PAGE LOAD  WEBFORM17  **********");
            Uri u = Request.UrlReferrer;
            //string s = u.AbsolutePath;
            int i = 0;
        }
    }
}
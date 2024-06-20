using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class ErrorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Exception exc = Server.GetLastError();
            if (exc != null)
            {
                string errmess = exc.Message;
                Exception objErr = Server.GetLastError().GetBaseException();
                if (objErr != null && objErr.Message != null)
                {
                    

                }

            }
        }
    }
}
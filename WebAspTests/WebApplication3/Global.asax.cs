using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication3
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            string sid = this.Session.SessionID;

            //Session["alive"] = true;
        }

        protected void Session_End(object sender, EventArgs e)
        {
            string sid = this.Session.SessionID;
        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_EndRequest(object sender, EventArgs e)
        {
            string info = $"------- Application_EndRequest -------> path {HttpContext.Current.Request.Path}";
            // exception string sid = this.Session.SessionID;
            int fin = 0;
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }



        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
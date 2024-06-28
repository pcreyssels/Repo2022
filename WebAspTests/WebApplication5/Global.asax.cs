using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication5
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code qui s’exécute au démarrage de l’application
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            //BundleConfig.RegisterBundles(BundleTable.Bundles);
        }


        protected void Application_Error(object sender, EventArgs e)
        {
            string info = $"------- Application_Error -------> path {HttpContext.Current.Request.Path}";


            Exception exc = Server.GetLastError();
            if (exc != null)
            {
                if (exc is System.Web.HttpUnhandledException huex)
                {
                    int wen =huex.WebEventCode;
                }

                string errmess = exc.Message;
                Exception objErr = Server.GetLastError().GetBaseException();
                if (objErr is System.Web.HttpException hex)
                {
                    int wen = hex.GetHttpCode();
                    int wec = hex.WebEventCode;
                }
                if (objErr != null && objErr.Message != null)
                {
                }

            }
            
        }
    }


}
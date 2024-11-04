using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication4
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code qui s’exécute au démarrage de l’application
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);


            int n = Debug.Listeners.Count;
            int m = Trace.Listeners.Count;

            DefaultTraceListener dtl = (DefaultTraceListener)Trace.Listeners[0];
            dtl.LogFileName = @"C:\AppLogs\TraceListener\DefaultTraceListenerLog.txt";

            // dtl.Fail("erreur message", "detail erreur message");
            dtl.Write("texte écrit avec .Write");
            dtl.WriteLine("texte écrit avec .WriteLine");

            //TraceContext tc = 


            int fin = 0;
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            string info = $"------- Application_Error -------> path {HttpContext.Current.Request.Path}";


        }
    }
}
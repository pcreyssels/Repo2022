using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
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

            //https://stackoverflow.com/questions/658446/how-do-i-find-the-fully-qualified-name-of-an-assembly
            AssemblyName an = AssemblyName.GetAssemblyName(@"I:\DEV\source\Workspaces\GitHub\Repo2022\WebAspTests\WebApplication4\bin\WebApplication4.dll");
            string fn = an.FullName;
            

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

        public void Session_Start()
        {
            int i = 0;
            if (Session["cookieok"] == null || (Session["cookieok"] is string && ((string)Session["cookieok"])!="off"))
                Session["cookieok"] = "off";
        }

        public void Session_End()
        {
            int i = 0;
            Session["cookieok"] = "off";
        }

    }
}
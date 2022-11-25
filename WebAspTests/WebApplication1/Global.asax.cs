using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication1
{
    public class Global : HttpApplication
    {
        internal static string bonjour_v = "BONJOUR SITE";
        void Application_Start(object sender, EventArgs e)
        {
            // Code qui s’exécute au démarrage de l’application
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        //https://www.codeproject.com/Questions/267379/Give-some-Examples-That-we-can-do-in-each-Applicat
        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            // https://stackoverflow.com/questions/11805897/masterpage-initializeculture-no-suitable-method-found-to-override-error
            //HttpCookie cookie = Request.Cookies["langCookie"];
            //if (cookie != null && !string.IsNullOrEmpty(cookie.Value))
            //{
            //    Thread.CurrentThread.CurrentUICulture = new CultureInfo(cookie.Value);
            //}

            //string cultureCode = "en-US";
            ////string cultureCode = "fr-FR";
            //var cultureInfo = CultureInfo.CreateSpecificCulture(cultureCode);
            //Thread.CurrentThread.CurrentCulture = cultureInfo;
            //Thread.CurrentThread.CurrentUICulture = cultureInfo;
        }
    }

    
}
using System;
using System.Collections.Generic;
using System.Diagnostics;
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

        /*
         * The application events are raised in the following order:
         * BeginRequest
         * AuthenticateRequest
         * PostAuthenticateRequest
         * AuthorizeRequest
         * PostAuthorizeRequest
         * ResolveRequestCache
         * PostResolveRequestCache
         * After the PostResolveRequestCache event and before the PostMapRequestHandler event, 
        an event handler (which is a page that corresponds to the request URL) is created. 
        When a server is running IIS 7.0 in Integrated mode and at least the .NET Framework version 3.0, 
        the MapRequestHandler event is raised. When a server is running IIS 7.0 in 
        Classic mode or an earlier version of IIS, this event cannot be handled.
         * PostMapRequestHandler
         * AcquireRequestState
         * PostAcquireRequestState
         * PreRequestHandlerExecute
         * The event handler is executed.
         * PostRequestHandlerExecute
         * ReleaseRequestState
         * PostReleaseRequestState
         * After the PostReleaseRequestState event is raised, any existing response filters will filter the output.
         * UpdateRequestCache
         * PostUpdateRequestCache
         * LogRequest.
            This event is supported in IIS 7.0 Integrated mode and at least the .NET Framework 3.0
         * PostLogRequest
           This event is supported IIS 7.0 Integrated mode and at least the .NET Framework 3.0
         * EndRequest
        
         */

        void Application_Start(object sender, EventArgs e)
        {
            // Code qui s’exécute au démarrage de l’application
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application["UsersOnline"] = 0;
            Debug.WriteLine("-------------- DEPART APPLI --------------");
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

            Debug.WriteLine("-------------- Application_BeginRequest --------------");
            var sv = Request.ServerVariables;

            string ru = HttpContext.Current.Request.RawUrl;
            Uri curl = HttpContext.Current.Request.Url;

            Uri curl2 = HttpContext.Current.Request.UrlReferrer;
            Debug.WriteLine(" rawurl "+  ru);
            Debug.WriteLine(" urlorg str "+curl.OriginalString);
            if (HttpContext.Current.Session!=null)
                Debug.WriteLine($" session ID {HttpContext.Current.Session.SessionID}");
            else
                Debug.WriteLine($" session ID null");

        }

        protected void Application_AcquireRequestState(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_AcquireRequestState --------------");
            if (HttpContext.Current.Session != null)
                Debug.WriteLine($" session ID {HttpContext.Current.Session.SessionID}");
            else
                Debug.WriteLine($" session ID null");
        }

        protected void Application_PostAcquireRequestState(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_PostAcquireRequestState --------------");
            if (HttpContext.Current.Session != null)
                Debug.WriteLine($" session ID {HttpContext.Current.Session.SessionID}");
            else
                Debug.WriteLine($" session ID null");
        }

        protected void Application_EndRequest(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_EndRequest --------------");
        }

        public void Session_OnStart()
        {
            Application.Lock();
            Application["UsersOnline"] = (int)Application["UsersOnline"] + 1;
            Application.UnLock();
            Debug.WriteLine("-------------- SESSION START --------------");
            Debug.WriteLine($"session ID {HttpContext.Current.Session.SessionID}");
            var cles = HttpContext.Current.Application.Keys;
            string[] keys = HttpContext.Current.Application.AllKeys;
            
            int i = 2;
        }

        public void Session_OnEnd()
        {
            Application.Lock();
            Application["UsersOnline"] = (int)Application["UsersOnline"] - 1;
            Application.UnLock();

        }
    }


}
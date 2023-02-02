using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Threading;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using WebApplication1.App_GlobalResources;

namespace WebApplication1
{
    public class Global : HttpApplication
    {
        internal static string bonjour_v = "BONJOUR SITE";

        /*
         * https://learn.microsoft.com/en-us/dotnet/api/system.web.httpapplication?view=netframework-4.8.1
         * The application events are raised in the following order:
         * BeginRequest
         * AuthenticateRequest
         * PostAuthenticateRequest
         * AuthorizeRequest
         * PostAuthorizeRequest
         * ResolveRequestCache
         * PostResolveRequestCache
         > After the PostResolveRequestCache event and before the PostMapRequestHandler event, 
        an event handler (which is a page that corresponds to the request URL) is created. 
        When a server is running IIS 7.0 in Integrated mode and at least the .NET Framework version 3.0, 
        the 
         * MapRequestHandler 
         > event is raised. When a server is running IIS 7.0 in 
        Classic mode or an earlier version of IIS, this event cannot be handled.
         * PostMapRequestHandler
         * AcquireRequestState
         * PostAcquireRequestState
         * PreRequestHandlerExecute
         * >>>>  The event handler is executed.
         * PostRequestHandlerExecute
         * ReleaseRequestState
         * PostReleaseRequestState
         * >>>> After the PostReleaseRequestState event is raised, any existing response filters will filter the output.
         * UpdateRequestCache
         * PostUpdateRequestCache
         * LogRequest.
            This event is supported in IIS 7.0 Integrated mode and at least the .NET Framework 3.0
         * PostLogRequest
           This event is supported IIS 7.0 Integrated mode and at least the .NET Framework 3.0
         * EndRequest
        
         */
        private void loginfo(object sender)
        {

            HttpApplication app = (HttpApplication)sender;
            HttpContext context = app.Context;
            RequestNotification rn = context.CurrentNotification;
            string ipn = "false";
            if (context.IsPostNotification)
                ipn= "true";
            Debug.WriteLine(" ------- > RequestNotification : " + rn.ToString()+ "   --- > IsPostNotification : "+ipn);
            
            HttpRequest _current_request = HttpContext.Current.Request;
            Debug.WriteLine($" anonymous ID :  {_current_request.AnonymousID}");
            Debug.WriteLine($" request type :  {_current_request.RequestType}");
            string is_aut = "false";
            if (_current_request.IsAuthenticated)
                is_aut= "true";
            Debug.WriteLine($" is authenticated  :  {is_aut}");

            Debug.WriteLine($" User-Agent  :  {_current_request.Browser.Browser}");


            Debug.WriteLine($" HttpRequest.Path      :  {_current_request.Path}");
            Debug.WriteLine($" HttpRequest.PathInfo  :  {_current_request.PathInfo}");

            string ru = HttpContext.Current.Request.RawUrl;
            Uri curl = HttpContext.Current.Request.Url;

            Uri curl2 = HttpContext.Current.Request.UrlReferrer;
            Debug.WriteLine(" rawurl " + ru);
            Debug.WriteLine(" url org str " + curl.OriginalString);
            
            if (curl2!=null)
                Debug.WriteLine(" urlreferrer org str " + curl2.OriginalString);
            else
                Debug.WriteLine(" urlreferrer org str = null ");

            HttpSessionState _sessionState = HttpContext.Current.Session;

            if (_sessionState != null)
            {
                string b = _sessionState.IsNewSession ? "true" : "false";
                Debug.WriteLine($" session ID     {_sessionState.SessionID}");
                Debug.WriteLine($" session mode   {_sessionState.Mode.ToString()}");
                Debug.WriteLine($" is new session {b}");
                int kc = _sessionState.Keys.Count;
                Debug.WriteLine($" sessions variables : {kc.ToString()}");
                if (kc>0)
                {
                    foreach (string k in _sessionState.Keys)
                    {
                        object elt = _sessionState[k];
                        Debug.WriteLine($" -    variable : clé:{k}, valeur : {elt.ToString()}");
                    }
                }
                
            }
            else
            {
                Debug.WriteLine($" session ID null");
            }
                

        }

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

            loginfo(sender);

        }
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_AuthenticateRequest --------------");
            loginfo(sender);
        }

        protected void Application_PostAuthenticateRequest(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_PostAuthenticateRequest --------------");
            loginfo(sender);
        }

        protected void Application_AuthorizeRequest(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_AuthorizeRequest --------------");
            loginfo(sender);
        }

        protected void Application_PostAuthorizeRequest(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_PostAuthorizeRequest --------------");
            loginfo(sender);
        }

        protected void Application_ResolveRequestCache(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_ResolveRequestCache --------------");
            loginfo(sender);
        }

        protected void Application_PostResolveRequestCache(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_PostResolveRequestCache --------------");
            loginfo(sender);
            IHttpHandler ihh = HttpContext.Current.Handler;
            IHttpHandler ihh2 = HttpContext.Current.CurrentHandler;
            IHttpHandler ihh3 = HttpContext.Current.PreviousHandler;
            int z = 0;
        }

        protected void Application_MapRequestHandler(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_MapRequestHandler --------------");
            loginfo(sender);
            IHttpHandler ihh = HttpContext.Current.Handler;
            IHttpHandler ihh2 = HttpContext.Current.CurrentHandler;
            IHttpHandler ihh3 = HttpContext.Current.PreviousHandler;
            int z = 0;
        }

        protected void Application_PostMapRequestHandler(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_PostMapRequestHandler --------------");
            loginfo(sender);
            IHttpHandler ihh = HttpContext.Current.Handler;
            IHttpHandler ihh2 = HttpContext.Current.CurrentHandler;
            IHttpHandler ihh3 = HttpContext.Current.PreviousHandler;
            int z = 0;
        }

       
        protected void Application_AcquireRequestState(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_AcquireRequestState --------------");
            loginfo(sender);
            IHttpHandler ihh =  HttpContext.Current.Handler;
            
            IEnumerable<PropertyInfo> pinfo = HttpContext.Current.Handler.GetType().GetRuntimeProperties();

            IEnumerable<MethodInfo> minfos = HttpContext.Current.Handler.GetType().GetTypeInfo().DeclaredMethods;
            IEnumerable<MethodInfo> minfos2 = HttpContext.Current.Handler.GetType().GetTypeInfo().GetRuntimeMethods();

            string _name = HttpContext.Current.Handler.GetType().Name;
            string _fname = HttpContext.Current.Handler.GetType().FullName;
            TypeInfo ti = HttpContext.Current.Handler.GetType().GetTypeInfo();

            foreach (PropertyInfo pinfo2 in pinfo)
            {
                string na = pinfo2.Name;
            }

            IHttpHandler ihh2 = HttpContext.Current.CurrentHandler;
            IHttpHandler ihh3 = HttpContext.Current.PreviousHandler;

            
            int z = 0;
        }

        protected void Application_PostAcquireRequestState(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_PostAcquireRequestState --------------");
            loginfo(sender);
        }
        protected void Application_PreRequestHandlerExecute(object sender, EventArgs e)
        {
            // Occurs just before ASP.NET starts executing an event handler (for example, a page or an XML Web service).
            Debug.WriteLine("-------------- Application_PreRequestHandlerExecute --------------");
                        
            loginfo(sender);

            IHttpHandler ihh = HttpContext.Current.Handler;
            IHttpHandler ihh2 = HttpContext.Current.CurrentHandler;
            IHttpHandler ihh3 = HttpContext.Current.PreviousHandler;

            HttpSessionState _sessionState = HttpContext.Current.Session;
            if (_sessionState != null)
            {
                if (_sessionState.SessionID != null)
                {
                    string p = HttpContext.Current.Request.Path;
                    List<ValueTuple<string, DateTime>> li = ((List<ValueTuple<string, DateTime>>)Session["tracker"]);
                    if (li.Count >= 10)
                        li.RemoveAt(0);
                    li.Add(ValueTuple.Create<string, DateTime>(p, DateTime.Now));
                    
                }
                
            }
            else
            {
                
            }
        }

        protected void Application_PostRequestHandlerExecute(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_PostRequestHandlerExecute --------------");
            loginfo(sender);
        }

        protected void Application_ReleaseRequestState(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_ReleaseRequestState --------------");
            loginfo(sender);
        }

        protected void Application_PostReleaseRequestState(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_PostReleaseRequestState --------------");
            loginfo(sender);
        }

        protected void Application_UpdateRequestCache(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_UpdateRequestCache --------------");
            loginfo(sender);
        }

        protected void Application_PostUpdateRequestCache(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_PostUpdateRequestCache --------------");
            loginfo(sender);
        }

        protected void Application_LogRequest(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_LogRequest --------------");
            loginfo(sender);
        }

        protected void Application_PostLogRequest(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_PostLogRequest --------------");
            loginfo(sender);
        }

        protected void Application_EndRequest(object sender, EventArgs e)
        {
            Debug.WriteLine("-------------- Application_EndRequest --------------");
            loginfo(sender);
        }
       
        public void Session_OnStart()
        {
            Application.Lock();
            Application["UsersOnline"] = (int)Application["UsersOnline"] + 1;
            Application.UnLock();
            Debug.WriteLine("--------------  ******************* SESSION START ******************* --------------");
            Debug.WriteLine($"session ID {HttpContext.Current.Session.SessionID}");
            var cles = HttpContext.Current.Application.Keys;
            string[] keys = HttpContext.Current.Application.AllKeys;

            HttpSessionState _sessionState = HttpContext.Current.Session; 
            if (_sessionState != null)
            {
                bool b = _sessionState.IsNewSession;
                string sid = _sessionState.SessionID;
                Session["tracker"] = new List<ValueTuple<string, DateTime>>();
            }
            
            
                
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
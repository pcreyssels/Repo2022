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


            string info = $"------- Application_Start -------> path ";//  {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }


        protected void Application_Error(object sender, EventArgs e)
        {
            string info = $"------- Application_Error -------> path {HttpContext.Current.Request.Path}";

         
            Debug.WriteLine($"  {info}");

            Exception exc = Server.GetLastError();
            if (exc != null)
            {
                if (exc is System.Web.HttpUnhandledException huex)
                {
                    int wen = huex.WebEventCode;
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

        /*
    * 
    * Methods corresponding to events that fire on each request
       Application_BeginRequest() – fired when a request for the web application comes in.
       Application_AuthenticateRequest –fired just before the user credentials are authenticated. You can specify your own authentication logic over here.
       Application_AuthorizeRequest() – fired on successful authentication of user’s credentials. You can use this method to give authorization rights to user.
       Application_ResolveRequestCache() – fired on successful completion of an authorization request.
       Application_AcquireRequestState() – fired just before the session state is retrieved for the current request.
       Application_PreRequestHandlerExecute() - fired before the page framework begins before executing an event handler to handle the request.
       Application_PostRequestHandlerExecute() – fired after HTTP handler has executed the request.
       Application_ReleaseRequestState() – fired before current state data kept in the session collection is serialized.
       Application_UpdateRequestCache() – fired before information is added to output cache of the page.
       Application_EndRequest() – fired at the end of each request

   Methods corresponding to events that do not fire on each request
       Application_Start() – fired when the first resource is requested from the web server and the web application starts.
       Session_Start() – fired when session starts on each new user requesting a page.
       Application_Error() – fired when an error occurs.
       Session_End() – fired when the session of a user ends.
       Application_End() – fired when the web application ends.
       Application_Disposed() - fired when the web application is destroyed.

   https://docs.microsoft.com/fr-fr/previous-versions/dotnet/netframework-4.0/2027ewzw(v=vs.100)
   Le fichier Global.asax file est optionnel. 
   Vous le créez uniquement si vous souhaitez gérer des événements d'application ou de session.


   https://docs.microsoft.com/en-us/previous-versions/aspnet/bb470252(v=vs.100)

   ordre des événement httpapplication
   https://learn.microsoft.com/en-us/dotnet/api/system.web.httpapplication?view=netframework-4.8
   /*

   1 BeginRequest
   2 AuthenticateRequest
   3 PostAuthenticateRequest
   4 AuthorizeRequest
   5 PostAuthorizeRequest
   6 ResolveRequestCache
   7 PostResolveRequestCache
   After the PostResolveRequestCache event and before the PostMapRequestHandler event, an event handler (which is a page that corresponds to the request URL) is created. When a server is running IIS 7.0 in Integrated mode and at least the .NET Framework version 3.0, the MapRequestHandler event is raised. When a server is running IIS 7.0 in Classic mode or an earlier version of IIS, this event cannot be handled.
   8 PostMapRequestHandler
   9 AcquireRequestState
   10 PostAcquireRequestState
   11 PreRequestHandlerExecute
   The event handler is executed.
   12 PostRequestHandlerExecute
   13 ReleaseRequestState
   14 PostReleaseRequestState
   After the PostReleaseRequestState event is raised, any existing response filters will filter the output.
   15 UpdateRequestCache
   16 PostUpdateRequestCache
   17 LogRequest.
   This event is supported in IIS 7.0 Integrated mode and at least the .NET Framework 3.0
   18 PostLogRequest
   This event is supported IIS 7.0 Integrated mode and at least the .NET Framework 3.0
   19 EndRequest

    */

       

        protected void Session_Start(object sender, EventArgs e)
        {
            string info = $"------- Session_Start -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }

        protected void Session_End(object sender, EventArgs e)
        {
            string info = "null";
            if (HttpContext.Current != null)
                info = HttpContext.Current.Request.Path;
            info = $"------- Session_End ------->" + info;
            Debug.WriteLine($"  {info}");
        }
        protected void Application_End(object sender, EventArgs e)
        {
            string info = $"------- Application_End -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }


        protected void Application_Disposed(object sender, EventArgs e)
        {
            string info = $"------- Application_Disposed -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            string info = $"------- Application_BeginRequest -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            string info = $"------- Application_AuthenticateRequest -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }
        protected void Application_AuthorizeRequest(object sender, EventArgs e)
        {
            string info = $"------- Application_AuthorizeRequest -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }

        protected void Application_PostAuthorizeRequest(object sender, EventArgs e)
        {
            string info = $"------- Application_PostAuthorizeRequest -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }

        protected void Application_ResolveRequestCache(object sender, EventArgs e)
        {
            string info = $"------- Application_ResolveRequestCache -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }

        protected void Application_AcquireRequestState(object sender, EventArgs e)
        {
            string info = $"------- Application_AcquireRequestState -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }

        protected void Application_PreRequestHandlerExecute(object sender, EventArgs e)
        {
            string info = $"------- Application_PreRequestHandlerExecute -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }

        protected void Application_PostRequestHandlerExecute(object sender, EventArgs e)
        {
            string info = $"------- Application_PostRequestHandlerExecute -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }

        protected void Application_ReleaseRequestState(object sender, EventArgs e)
        {
            string info = $"------- Application_ReleaseRequestCache -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }

        protected void Application_UpdateRequestCache(object sender, EventArgs e)
        {
            string info = $"------- Application_UpdateRequestCache -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }

        protected void Application_EndRequest(object sender, EventArgs e)
        {
            string info = $"------- Application_EndRequest -------> path {HttpContext.Current.Request.Path}";
            Debug.WriteLine($"  {info}");
        }
       
    }


}
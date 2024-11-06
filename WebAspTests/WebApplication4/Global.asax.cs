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
        void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
        {
            if (e != null)
            {
                string a = $"Domain Unhandled Exception:  { e.ExceptionObject }";
            }
        }
        void Application_Start(object sender, EventArgs e)
        {
            // Code qui s’exécute au démarrage de l’application
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            //https://stackoverflow.com/questions/658446/how-do-i-find-the-fully-qualified-name-of-an-assembly
            // AssemblyName an = AssemblyName.GetAssemblyName(@"I:\DEV\source\Workspaces\GitHub\Repo2022\WebAspTests\WebApplication4\bin\WebApplication4.dll");
            //string fn = an.FullName;


            int n = Debug.Listeners.Count;
            int m = Trace.Listeners.Count;

            DefaultTraceListener dtl = (DefaultTraceListener)Trace.Listeners[0];
            dtl.LogFileName = @"C:\AppLogs\TraceListener\DefaultTraceListenerLog.txt";

            // dtl.Fail("erreur message", "detail erreur message");
            dtl.Write("texte écrit avec .Write");
            dtl.WriteLine("texte écrit avec .WriteLine");

            //TraceContext tc = 

            AppDomain.CurrentDomain.UnhandledException
             += new UnhandledExceptionEventHandler(CurrentDomain_UnhandledException);

            int fin = 0;
        }



        /*
         * Validate the request, which examines the information sent by the browser and determines whether it contains potentially malicious markup. For more information, see ValidateRequest and Script Exploits Overview.

        Perform URL mapping, if any URLs have been configured in the UrlMappingsSection section of the Web.config file.
        Raise the BeginRequest event.
        Raise the AuthenticateRequest event.
        Raise the PostAuthenticateRequest event.
        Raise the AuthorizeRequest event.
        Raise the PostAuthorizeRequest event.
        Raise the ResolveRequestCache event.
        Raise the PostResolveRequestCache event.
        Raise the MapRequestHandler event. An appropriate handler is selected based on the file-name extension of the requested resource. The handler can be a native-code module such as the IIS 7.0 StaticFileModule or a managed-code module such as the PageHandlerFactory class (which handles .aspx files). 
        Raise the PostMapRequestHandler event.
        Raise the AcquireRequestState event.
        Raise the PostAcquireRequestState event.
        Raise the PreRequestHandlerExecute event.
        Call the ProcessRequest method (or the asynchronous version IHttpAsyncHandler.BeginProcessRequest) of the appropriate IHttpHandler class for the request. For example, if the request is for a page, the current page instance handles the request.
        Raise the PostRequestHandlerExecute event.
        Raise the ReleaseRequestState event.
        Raise the PostReleaseRequestState event.
        Perform response filtering if the Filter property is defined.
        Raise the UpdateRequestCache event.
        Raise the PostUpdateRequestCache event.
        Raise the LogRequest event.
        Raise the PostLogRequest event.
        Raise the EndRequest event.
        Raise the PreSendRequestHeaders event.
        Raise the PreSendRequestContent event.
         * 
         */
        protected void Application_Error(object sender, EventArgs e)
        {
            string info = $"------- Application_Error -------> path {HttpContext.Current.Request.Path}";
        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            string p = this.Request.AppRelativeCurrentExecutionFilePath;
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
        }

        protected void Application_PostAuthenticateRequest(object sender, EventArgs e)
        {
        }

        protected void Application_AuthorizeRequest(object sender, EventArgs e)
        {
        }

        protected void Application_PostAuthorizeRequest(object sender, EventArgs e)
        {
        }

        protected void Application_ResolveRequestCache(object sender, EventArgs e)
        {
        }

        protected void Application_PostResolveRequestCache(object sender, EventArgs e)
        {
        }
        
        protected void Application_MapRequestHandler(object sender, EventArgs e)
        {
        }

        protected void Application_PostMapRequestHandler(object sender, EventArgs e)
        {
            IHttpHandler ihh =  HttpContext.Current.Handler;
            
        }

        protected void Application_AcquireRequestState(object sender, EventArgs e)
        {
        }

        protected void Application_PostAcquireRequestState(object sender, EventArgs e)
        {
        }

        protected void Application_PreRequestHandlerExecute(object sender, EventArgs e)
        {
        }

        //public void ProcessRequest(HttpContext context)
        //{
        //    context.Response.Write("<H1>This is an HttpHandler Test.</H1>");
        //    context.Response.Write("<p>Your Browser:</p>");
        //    context.Response.Write("Type: " + context.Request.Browser.Type + "<br>");
        //    context.Response.Write("Version: " + context.Request.Browser.Version);
        //}

        protected void Application_PostRequestHandlerExecute(object sender, EventArgs e)
        {
        }

        protected void Application_ReleaseRequestState(object sender, EventArgs e)
        {
        }


        protected void Application_PostReleaseRequestState(object sender, EventArgs e)
        {
        }


        // Perform response filtering if the Filter property is defined.


        /*
         *  Raise the UpdateRequestCache event.
        Raise the PostUpdateRequestCache event.
        Raise the LogRequest event.
        Raise the PostLogRequest event.
        Raise the EndRequest event.
        Raise the PreSendRequestHeaders event.
        Raise the PreSendRequestContent event.
         */

        protected void Application_UpdateRequestCache(object sender, EventArgs e)
        {
        }

        protected void Application_PostUpdateRequestCache(object sender, EventArgs e)
        {
        }

        protected void Application_LogRequest(object sender, EventArgs e)
        {
            HttpResponse hr = HttpContext.Current.Response;
            IHttpHandler ihh = HttpContext.Current.Handler;
        }

        protected void Application_PostLogRequest(object sender, EventArgs e)
        {
            IHttpHandler ihh = HttpContext.Current.Handler;
        }

        protected void Application_EndRequest(object sender, EventArgs e)
        {
        }

        protected void Application_PreSendRequestHeaders(object sender, EventArgs e)
        {
        }

        protected void Application_PreSendRequestContent(object sender, EventArgs e)
        {
        }
    }
}
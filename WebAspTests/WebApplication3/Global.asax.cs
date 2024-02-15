using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Timers;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication3
{
    
    public class Global : System.Web.HttpApplication
    {

        System.Timers.Timer timer ;

        protected void Application_Start(object sender, EventArgs e)
        {
            timer = new System.Timers.Timer();
            timer.Interval = 10000; // 10 seconds
            timer.Elapsed += new ElapsedEventHandler(OnTimer);
            timer.Start();
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
            
            object i = null;
        }

        protected void Application_AcquireRequestState()
        {
            Debug.WriteLine("Request State");
        }

        protected void Application_PreRequestHandlerExecute()
        {
            Debug.WriteLine("Pre Handler Execute");
        }

        protected void Application_PostRequestHandlerExecute()
        {
            Debug.WriteLine("Post Handler Execute");
        }

        protected void Application_EndRequest(object sender, EventArgs e)
        {
            string info = $"------- Application_EndRequest -------> path {HttpContext.Current.Request.Path}";
            // exception string sid = this.Session.SessionID;
            int fin = 0;
        }


        protected void Application_PreSendRequestHeaders()
        {
            Debug.WriteLine("Post Pre SendRequest Headers");
        }

        protected void Application_PreSendRequestContent()
        {
            Debug.WriteLine("Post Pre SendRequest Content");
        }

        protected void Application_Unload()
        {
            Debug.WriteLine("Unload");
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

        public static void OnTimer(object sender, ElapsedEventArgs args)
        {
            Console.WriteLine($"événement timer ");

            Debug.WriteLine($" ********** -- TIMER event at {DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")} --  **********");

        
        }
    }
}
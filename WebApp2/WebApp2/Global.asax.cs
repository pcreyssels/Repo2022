using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApp2
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code qui s’exécute au démarrage de l’application
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // MembershipUser newUser = Membership.CreateUser("toto", "totopwd_","hello@free.fr");
            MembershipCreateStatus status = MembershipCreateStatus.UserRejected;
            MembershipUser m = Membership.CreateUser("toto", "totopwd_", "hello@free.fr", "q", "r", true, out status);
            int i = 0;
        }

        public void Session_OnStart()
        {
            Debug.WriteLine($"session start, session ID : {Session.SessionID}");
        }

        public void Session_OnEnd()
        {
            Debug.WriteLine($"session end, session ID : {Session.SessionID}");
        }
    }
}
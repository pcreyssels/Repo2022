using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp2
{
    public partial class login : System.Web.UI.Page
    {
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            i = 1;
              string ft = login1.FailureText;
            string cut = login1.CreateUserText;

            ClaimsPrincipal cp = ClaimsPrincipal.Current;

            int n = cp.Claims.Count<Claim>();
            foreach (Claim c in cp.Claims)
            {
                ClaimsIdentity ci = c.Subject;
                string i = c.Issuer;
                IDictionary<string,string> d=  c.Properties;
                string claimvalue = c.Value;
                string claimvaluetype = c.ValueType;
                string claimtype = c.Type;

                int fin = 1;
            }

            string info = $"session id : {Session.SessionID}";
            labellogin.Text= info;
            Debug.WriteLine(info);
            login1.CreateUserText = "lien vers l'inscription";
            login1.CreateUserUrl = "~/Inscription";

            login1.InstructionText = "Veuillez entrer vos informations d'identification";
            login1.HelpPageText = "lien vers la page d'aide";
            login1.HelpPageUrl = "~/Inscription";

            login1.PasswordRecoveryText = "lien vers récupération mdp";
            login1.PasswordRecoveryUrl = "~/Inscription";
        }

        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            int i = 1;
            Response.Redirect("About.aspx",false);
        }

            protected void login1_LoggingIn(object sender, LoginCancelEventArgs e)
        {
            i = 3;
            string ui = HttpContext.Current.User.Identity.Name;
            string auth_type = HttpContext.Current.User.Identity.AuthenticationType;
            bool isa = HttpContext.Current.User.Identity.IsAuthenticated;

            // Occurs when a user submits login information, before authentication takes place.
            //  verification des champs
            if (login1.UserName =="" || login1.UserName == "" || login1.UserName.Length<2)
            {
                login1.InstructionText= "You must enter a valid usernme & password.";
                // cancel
                e.Cancel = true;
            }
            else
            {
                login1.InstructionText = String.Empty;
            }
        }

        protected void login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //Occurs when a user is authenticated. 
            // exécuté après LoggingIn
            i = 4;
            // tester l'identité
            string ui = HttpContext.Current.User.Identity.Name;
            string auth_type = HttpContext.Current.User.Identity.AuthenticationType;
            bool isa = HttpContext.Current.User.Identity.IsAuthenticated;

            // tester l'authenticité
            bool t = login1.UserName == "titi"; 
            if (t)
                e.Authenticated = true;
            else
                e.Authenticated = false;

            string ui2 = HttpContext.Current.User.Identity.Name;
            string auth_type2 = HttpContext.Current.User.Identity.AuthenticationType;
            bool isa2 = HttpContext.Current.User.Identity.IsAuthenticated;

            
        }

        protected void login1_LoggedIn(object sender, EventArgs e)
        {
            // se produit apres authenticate
            i = 2;
            string ui = HttpContext.Current.User.Identity.Name;
            string auth_type = HttpContext.Current.User.Identity.AuthenticationType;
            bool isa = HttpContext.Current.User.Identity.IsAuthenticated;

            
        }
    }
}
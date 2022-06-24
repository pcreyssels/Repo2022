using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

namespace WebApp2
{
    public partial class Accueil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int i = 1;

            string ui = HttpContext.Current.User.Identity.Name;
            string auth_type = HttpContext.Current.User.Identity.AuthenticationType;
            bool isa = HttpContext.Current.User.Identity.IsAuthenticated;
        }

        protected void valider_Click(object sender, EventArgs e)
        {
            bool v = Membership.ValidateUser(user.Text, pwd.Text);
            if (v) statutval.Text = "valide !"; else statutval.Text = "invalide !";
        }
    }
}
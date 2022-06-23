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
            IIdentity userident = HttpContext.Current.User.Identity;
            string username =userident.Name;
            bool ia = userident.IsAuthenticated;
            int i = 1;
        }

        protected void valider_Click(object sender, EventArgs e)
        {
            bool v = Membership.ValidateUser(user.Text, pwd.Text);
            if (v) statutval.Text = "valide !"; else statutval.Text = "invalide !";
        }
    }
}
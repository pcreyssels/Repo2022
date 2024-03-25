using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class ConditionsGenerales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_accept_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // acceptation des CG => écriture dans la base de la date d'acceptation des CG
                var page = (Page)HttpContext.Current.CurrentHandler;
                //Session[Sv.ph_PreviousPage_WhoSentRedirect.ToString()] = Path.GetFileNameWithoutExtension(page.AppRelativeVirtualPath);
                //Session[Sv.ph_CG_acceptees.ToString()] = true;
                //Session[Sv.ph_date_acceptation_CG.ToString()] = DateTime.Now;
                //Response.Redirect($"~/{GlobalClass.dico_Pages[Ps.Inscription]}.aspx", false);
            }
            else
            {
                // this.UpdateVisibilityDetectAttack();
            }
        }

        protected void Button_dontaccept_Click(object sender, EventArgs e)
        {
            // non acceptation des CG => retour à l'accueil
            var page = (Page)HttpContext.Current.CurrentHandler;
            //Session[Sv.ph_PreviousPage_WhoSentRedirect.ToString()] = Path.GetFileNameWithoutExtension(page.AppRelativeVirtualPath);
            //Session[Sv.ph_CG_acceptees.ToString()] = false;
            //Session[Sv.ph_date_acceptation_CG.ToString()] = null;
            //Response.Redirect($"~/{GlobalClass.dico_Pages[Ps.Accueil]}.aspx", false);
        }
    }
}
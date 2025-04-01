using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            labelinfo_erreur.Text = GetLocalResourceObject("texte_erreur_saisie").ToString();

            labelinfo_statut.Text = GetLocalResourceObject("texteStatutDemande").ToString();
        }
    }
}
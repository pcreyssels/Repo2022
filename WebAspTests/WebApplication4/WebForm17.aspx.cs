using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            subpanel_inscphase2.Visible = true;
            subpanel_enatpa_prefac.Visible = false;
            subpanel_enatpa_deufac.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            subpanel_inscphase2.Visible = false;
            subpanel_enatpa_prefac.Visible = true;
            subpanel_enatpa_deufac.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            subpanel_inscphase2.Visible = false;
            subpanel_enatpa_prefac.Visible = false;
            subpanel_enatpa_deufac.Visible = true;
        }

        protected void Button_statut_souspanel_inscription_phase2_Click(object sender, EventArgs e)
        {

        }

        protected void Button_statut_souspanel_enatpa_prefac_Click(object sender, EventArgs e)
        {

        }

        protected void Button_statut_souspanel_enatpa_deufac_Click(object sender, EventArgs e)
        {

        }

        protected void Button_statut_souspanel_dossacomp_recev_Click(object sender, EventArgs e)
        {

        }

        protected void Button_statut_souspanel_attestation_delivree_Click(object sender, EventArgs e)
        {

        }
    }
}
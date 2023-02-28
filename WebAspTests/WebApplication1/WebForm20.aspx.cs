using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool b = IsAsync;
            bool c = IsPostBack;
            bool d = IsCallback;

            int i = 0;
        }

        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            Type t = e.GetType();
            RadioButton rb = (RadioButton)sender;
            switch (rb.ID)
            {
                case "rb_erreur":
                    labelinfo.Text = GetLocalResourceObject("text1").ToString();
                    panel_erreur.Visible = true;
                    panel_statut.Visible = false;
                    panel_resultat.Visible = false;
                    break;
                
                case "rb_statut":
                    labelinfo.Text = "";
                    panel_erreur.Visible = false;
                    panel_statut.Visible = true;
                    panel_resultat.Visible = false;
                    break;

                case "rb_resultat":
                    labelinfo.Text = "";
                    panel_erreur.Visible = false;
                    panel_statut.Visible = false;
                    panel_resultat.Visible = true;
                    break;

                default:
                    break;
            }

        }


        protected void Rb_CheckedChanged(object sender, EventArgs e)
        {
            Type t = e.GetType();
            RadioButton rb = (RadioButton)sender;
            switch (rb.ID)
            {
                case "rb_attestation":
                    labelinfo2.Text = GetLocalResourceObject("texte_attestation").ToString();
                    break;

                case "rb_mention":
                    labelinfo2.Text = GetLocalResourceObject("texte_mention").ToString();
                    break;

                case "rb_comp_niveau":
                    labelinfo2.Text = GetLocalResourceObject("texte_comp_niveau").ToString();
                    break;

                case "rb_comp_attest":
                    labelinfo2.Text = GetLocalResourceObject("texte_comp_attestation").ToString();
                    break;

                case "rb_contestation":
                    labelinfo2.Text = GetLocalResourceObject("texte_contestation").ToString();
                    break;

                case "rb_perte":
                    labelinfo2.Text = GetLocalResourceObject("texte_perte").ToString();
                    break;

                default:
                    labelinfo2.Text = "";
                    break;
            }

        }
    }
}
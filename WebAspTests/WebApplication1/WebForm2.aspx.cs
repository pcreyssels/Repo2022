using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool b = Page.IsCallback;
            bool c = Page.IsPostBack;
            bool d = true;

            
        }

        protected void button_test_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('login successful');</script>");
        }

        protected void button_modal_Click(object sender, EventArgs e)
        {
            panel_refugie.Visible = false;
        }

        protected void button_modal1_Click(object sender, EventArgs e)
        {

        }

        protected void button_confirm_Click(object sender, EventArgs e)
        {

        }

       
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            bool b = Page.IsCallback;
            bool c = Page.IsPostBack;
            bool d = true;
        }

        protected void button_cancel_ServerClick(object sender, EventArgs e)
        {
            int i = 2;
        }

        protected void button_back_ServerClick(object sender, EventArgs e)
        {
            int i = 2;
        }

        protected void Button_valid_ServerClick(object sender, EventArgs e)
        {
            if (radio_CB.Checked)
            {
                // enregistrer info dans base, puis redirection dossier_suivi.aspx, génération d'un mail
                label_info.Text = radio_CB.Value;
            }
                
            else if (radio_VI.Checked)
            {
                // enregistrer info dans base, puis redirection dossier_suivi.aspx, génération d'un mail
                label_info.Text = radio_VI.Value;
            }
                
            else if (radio_CA.Checked)
            {
                // modal avec 2 boutons confirm et annul, texte avertissant de la suppression du dossier si confirmation
                // ou retour au choix paiement si annul
                // si confirmation redirectin après la suppression vers la page dossier_suivi.aspx
                label_info.Text = radio_CA.Value;
            }
                
        }

        protected void B2_ServerClick(object sender, EventArgs e)
        {
            // annuler le demande d'annulation du paiement
            // ne reien faire le modal se ferme
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Define the name and type of the client scripts on the page.
            String csname1 = "PopupScript";
            Type cstype = this.GetType();

            // Get a ClientScriptManager reference from the Page class.
            ClientScriptManager cs = Page.ClientScript;

            if (radio_CA.Checked) 
            {
                // Check to see if the startup script is already registered.
                if (!cs.IsStartupScriptRegistered(cstype, csname1))
                {
                    StringBuilder cstext1 = new StringBuilder();
                    //cstext1.Append("<script type=text/javascript> alert('Hello World!') </");
                    //cstext1.Append("script>");


                    cstext1.Append("<script>$(document).ready(function(){$(\"#flipFlop\").modal(\"show\");});</script>");


                    cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
                }
            }

            
        }
    }
}
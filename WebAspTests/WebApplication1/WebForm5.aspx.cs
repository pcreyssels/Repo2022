using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string choix_paiement = "CB";
            string message = "Votre demande est          à présent transmise au centre ENIC-NARIC France." + Environment.NewLine +
                           "Il n’est plus possible de la modifier sur le site." + Environment.NewLine +
                           "Vous allez recevoir dans quelques instants un courriel de confirmation avec un lien permettant de télécharger votre facture ainsi qu’un";
            string message_cb = " lien permettant de la régler en ligne (par carte bancaire).";
            string message_vir = " rappel des coordonnées bancaires pour le règlement par virement.";
            if (choix_paiement == "CB")
                message += message_cb;
            else if (choix_paiement == "VIR")
                message += message_vir;

            label_info.Text = message;
            label_info2.Text = message;


            text_area.InnerText = message;

            aspspan.InnerText = message;

            literal_info.Text = message;
        }
    }
}
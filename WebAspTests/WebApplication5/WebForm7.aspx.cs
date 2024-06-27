using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int j = 0; j < 1; j++)
            {
                FileUpload fu = new FileUpload
                {
                    ID = $"FileUp{j + 1}",
                    ClientIDMode = ClientIDMode.Static
                };
                fu.Attributes.Add("style", "display: none");
                fu.Attributes.Add("accept", ".pdf");
                fu.Attributes.Add("multiple", "false");
                fu.Attributes.Add("onchange", "upload" + (j + 1).ToString() + "()");
                // test
                ph1.Controls.Clear();
                ph1.Controls.Add(fu);


                // bouton qui déclenche l'ouverture de la fenetre de navigation du filepuload
                HtmlInputButton hi = new HtmlInputButton
                {
                    Value = "télécharger" // "telecharger";
                };
                hi.Attributes.Add("onclick", $"showBrowseDialogfu{(j + 1)}()");
                hi.Attributes.Add("class", "buttonlikelink");
                ph1.Controls.Add(hi);


                // ****** BOUTON CACHé qui sert à submiter le fichier choisi
                //<asp:Button runat="server" ID="HideButton" Text="" Style="display: none;" OnClick="HideButton_Click" />
                Button b = new Button
                {
                    ID = "HideButton" + (j + 1).ToString(),
                    ClientIDMode = ClientIDMode.Static
                };
                this.Controls.Add(b);

                // sert à rien utilise dans phoenix pour le preventflag
                b.OnClientClick += "bclick()";

                // rend le bouton invisible
                b.Attributes.Add("style", "display: none");
                if (j == 0)
                    b.Click += new EventHandler(HideButton1_Click);


                // SCRIPT

                // Define the name and type of the client scripts on the page.
                String csname1 = "PopupScript" + (j + 1).ToString();
                Type cstype = this.GetType();

                // Get a ClientScriptManager reference from the Page class.
                ClientScriptManager cs = Page.ClientScript;

                // cheminement
                /*
                 * click sur le bouton 'telecharger' visible ce bouton 
                 *      a une fonction javascript (onclick) showbrorserdialog qui récupère le fieupload et ouvre
                 *      sa fenetre de dialogue tout cela coté client :l'utilisateur choisit un fichier
                 *  de son cote le fileupload a une fonction onchange() qui détecte les modification 
                 *      (l'utilisateur a fourni son fichier) cette fonction uploadX déclenche le click du bouton caché 
                 *      et effectue le submit du fileupload
                 */

                // SCript qui enchaine l'ouverture du fichier et le submit
                if (true) //(!cs.IsStartupScriptRegistered(cstype, csname1))
                {
                    StringBuilder cstext1 = new StringBuilder();
                    cstext1.Append("<script type=text/javascript>");

                    /*
                    function showBrowseDialogfu1() {
                    releaseprevent();
                    var fileuploadctrl = document.getElementById('<%= FileUp1.ClientID %>');
                    fileuploadctrl.click();}
                    */

                    string code = $"function showBrowseDialogfu{(j + 1)}()";
                    code += "{releaseprevent();var fileuploadctrl = document.getElementById('" + fu.ClientID + "');fileuploadctrl.click();}";
                    cstext1.Append(code);


                    /*
                     * 
                    function uploadx() {
                        let fi = document.getElementById('FileupX');
                        let f = fi.files[0];
                        if (f.size > 4194304 || f.fileSize > 4194304) {
                            alert("Taille maximale dépassée. (Max. 4 MB) \n Allowed file size exceeded. (Max. 4 MB)")
                            fi.value = null;
                        }
                        else {
                            var btn = document.getElementById('" + fu.ClientID + "');
                            
                            btn.click();
                        }
                    }
                      */
                    string ind = (j + 1).ToString();
                    string fuind = "FileUp" + ind;
                    string fsize = "4194304";
                    string hbind = "HideButton" + ind;
                    string code2 = $"function upload{ind}(){{let fi = document.getElementById('{fuind}'); let f = fi.files[0]; if (f.size > {fsize} || f.fileSize > {fsize}) {{ alert(\"Taille maximale dépassée. (Max. 4 MB) \\n Allowed file size exceeded. (Max. 4 MB)\"); fi.value = null;}} " +
                        $"else {{var btn = document.getElementById('{hbind}');btn.click();}}}}";

                    cstext1.Append(code2);
                    cstext1.Append("</script>");

                    cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
                }

            }
        }

        protected void HideButton1_Click(object sender, EventArgs e)
        {
            int fin = 1;
        }
    }
}
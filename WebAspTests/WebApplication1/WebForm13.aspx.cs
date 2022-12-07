using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        DataTable documentTable;

        string cocheverte_glyphicon = @"<span class=""glyphicon glyphicon-ok"" style=""color:green"" aria-hidden=""true""></span>";

        private bool updatecoches()
        {
            bool all = false;
            bool allmand = false;
            int rows = GridView1.Rows.Count;
            if (rows > 0) { all = true; allmand = true; }
            DataTable dt = (DataTable)Session["documentTable"];
            for (int i = 0; i < rows; i++)
            {
                var cell = GridView1.Rows[i].Cells[5];
                object o = dt.Rows[GridView1.Rows[i].DataItemIndex]["Piecej"];
                object p = dt.Rows[GridView1.Rows[i].DataItemIndex]["Obligatoire"];
                if (o != null && ((string)o) != "")
                    cell.Text = cocheverte_glyphicon;
                else
                {
                    cell.Text = "";
                    all = false;
                }
                if (p != null && ((string)p) == "oui")
                {
                    if (o == null || ((string)o) == "")
                        allmand = false;
                }
            }
            if (allmand) Button_valid.Enabled = true; else Button_valid.Enabled = false;
            return all;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
                documentTable = new DataTable();
                documentTable.Columns.AddRange(new DataColumn[7] {
                    new DataColumn("Pieceaj", typeof(string)),
                    new DataColumn("NatureDoc", typeof(string)),
                    new DataColumn("Precisions",typeof(string)),
                    new DataColumn("Obligatoire",typeof(string)),
                    new DataColumn("Piecej", typeof(string)),
                    new DataColumn("docName",typeof(string)),
                    new DataColumn("docPath",typeof(string))
                });

                documentTable.Rows.Add(
                    "Pièce d'identité",
                    "PI",
                    "Copie lisible d'une pièce d'identité (carte d'identité, passeport)",
                    "oui",
                    "",
                    "id",
                    "idPath");
                documentTable.Rows.Add(
                    "Pièce d'identité",
                    "PI",
                    "Copie lisible d'une pièce d'identité (carte d'identité, passeport)",
                    "oui",
                    "",
                    "id",
                    "idPath");

                documentTable.Rows.Add(
                   "Pièce d'identité",
                   "PI",
                   "Copie lisible d'une pièce d'identité (carte d'identité, passeport)",
                   "oui",
                   "",
                   "id",
                   "idPath");
                documentTable.Rows.Add(
                   "Pièce d'identité",
                   "PI",
                   "Copie lisible d'une pièce d'identité (carte d'identité, passeport)",
                   "oui",
                   "",
                   "id",
                   "idPath");
                documentTable.Rows.Add(
                   "Pièce d'identité",
                   "PI",
                   "Copie lisible d'une pièce d'identité (carte d'identité, passeport)",
                   "oui",
                   "",
                   "id",
                   "idPath");

            
            GridView1.DataSource = documentTable;
            GridView1.DataBind();
            //updatecoches();

            object ce = GridView1.Rows[1].Cells[4];
            for (int j =0; j<4;j++)
            {
                DataControlFieldCell dcfc = (DataControlFieldCell)GridView1.Rows[j].Cells[4];
                FileUpload fu = new FileUpload();
                fu.ID = $"FileUp{(j+1).ToString()}";
                fu.Attributes.Add("style", "display: none");
                fu.Attributes.Add("onchange", "upload"+ (j + 1).ToString()+"()");
                dcfc.Controls.Clear();
                dcfc.Controls.Add(fu);

                // <input type="button" value="Carica Documento" onclick="showBrowseDialog()" />
                HtmlInputButton hi = new HtmlInputButton();
                hi.Value = "telecharger";
                hi.Attributes.Add("onclick", $"showBrowseDialogfu{(j + 1).ToString()}()");
                dcfc.Controls.Add(hi);

                //<asp:Button runat="server" ID="hideButton" Text="" Style="display: none;" OnClick="hideButton_Click" />
                Button b = new Button();
                b.ID = "hideButton" + (j + 1).ToString();
                dcfc.Controls.Add(b);
                b.Attributes.Add("style", "display: none");
                if (j==0)
                    b.Click += new EventHandler(hideButton1_Click);
                else if (j==1)
                    b.Click += new EventHandler(hideButton2_Click);
                else if (j == 2)
                    b.Click += new EventHandler(hideButton3_Click);
                else if (j == 3)
                    b.Click += new EventHandler(hideButton4_Click);


                // SCRIPT
                
                // Define the name and type of the client scripts on the page.
                String csname1 = "PopupScript"+ (j + 1).ToString();
                Type cstype = this.GetType();

                // Get a ClientScriptManager reference from the Page class.
                ClientScriptManager cs = Page.ClientScript;

                // Check to see if the startup script is already registered.
                if (!cs.IsStartupScriptRegistered(cstype, csname1))
                {
                    StringBuilder cstext1 = new StringBuilder();
                    cstext1.Append("<script type=text/javascript>");

                    /*
                 * function showBrowseDialogfu1() {
            var fileuploadctrl = document.getElementById('<%= FileUp1.ClientID %>');
            fileuploadctrl.click();}
                 * */

                    string code = $"function showBrowseDialogfu{(j + 1).ToString()}()";
                    code += "{var fileuploadctrl = document.getElementById('" + fu.ClientID + "');fileuploadctrl.click();}";
                    cstext1.Append(code);

                    /*
                     * function upload() {
            var btn = document.getElementById('<%= hideButton.ClientID %>');
            btn.click();
        }            * */
                    string code2 = "function upload"+(j+1).ToString()+"() {var btn = document.getElementById('"+b.ClientID + "');btn.click();}"; 


                    cstext1.Append(code2);
                    cstext1.Append("</script>");

                    cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
                }

                //

            }

            




            //foreach (Control c in dcfc.Controls)
            //{
            //    if (c is FileUpload)
            //    {
            //        FileUpload fu = (FileUpload)c;
            //        if (fu.HasFile)
            //        {

            //        }
            //        break;
            //    }
            //}

            int i = 3;

          
            if (!IsPostBack)
            {

                

            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            //panel1.Visible = true;
            //labelUploadinfo.Text = "veuillez choisir le document : " + GridView1.SelectedValue.ToString();
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            // Get the physical file system path for the currently executing application.
            string appPath = Request.PhysicalApplicationPath;

            // Before attempting to save the file, verify
            // that the FileUpload control contains a file.
            if (FileUpload1.HasFile)
            {
                int dii = GridView1.SelectedRow.DataItemIndex;

                DataTable dt = (DataTable)Session["documentTable"];
                //string currentName = dt.Rows[GridView1.SelectedRow.DataItemIndex]["docName"].ToString();
                string currentPath = dt.Rows[dii]["docPath"].ToString();

                string savePath = Path.Combine(appPath, currentPath);

                if (!Directory.Exists(savePath))
                    Directory.CreateDirectory(savePath);

                string fileName = FileUpload1.FileName;
                string fullfilename = Path.Combine(savePath, fileName);
                FileUpload1.SaveAs(fullfilename);
                dt.Rows[dii]["Piecej"] = fileName;

                // écrire dans la base
                // récupère le dossier
              
                //// écrire dans la base
                string nature_document = dt.Rows[dii]["NatureDoc"].ToString();

                string encoded64File = Convert.ToBase64String(FileUpload1.FileBytes);
               
                // met à jour le tableau
                GridView1.DataBind();
                //updatecoches();

                // Notify the user that the file was uploaded successfully.
                //UploadStatusLabel.Text = "votre fichier a été téléversé .";
                //panel1.Visible = false;


            }
            else
            {
                // Notify the user that a file was not uploaded.
                //UploadStatusLabel.Text = "Vous n'avez pas spécifié de fichier.";
            }
        }

        protected void Button_valid_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {

                // Convert the row index stored in the CommandArgument
                // property to an Integer.
                int index = Convert.ToInt32(e.CommandArgument);

                // Get the last name of the selected author from the appropriate
                // cell in the GridView control.
                GridViewRow selectedRow = GridView1.Rows[index];
                TableCell contactName = selectedRow.Cells[1];
                string contact = contactName.Text;

                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(@"C:\tmp2\save.jpg");
                }

                // Display the selected author.
                //Message.Text = "You selected " + contact + ".";

            }
        }

        protected void hideButton_Click(object sender, EventArgs e)
        {

        }
        protected void hideButton1_Click(object sender, EventArgs e)
         {
            DataControlFieldCell dcfc = (DataControlFieldCell)GridView1.Rows[0].Cells[4];
            FileUpload fu = (FileUpload) dcfc.FindControl("FileUp1");
            if (fu.HasFile)
                fu.SaveAs(@"C:\tmp2\image.jpg");
            MemoryStream ms = new MemoryStream();
            fu.FileContent.CopyTo(ms);
            byte[] bin = ms.ToArray();
        }

        protected void hideButton2_Click(object sender, EventArgs e)
        {

        }
        protected void hideButton3_Click(object sender, EventArgs e)
        {

        }

        protected void hideButton4_Click(object sender, EventArgs e)
        {

        }

    }
}

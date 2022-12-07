using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
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
            if (Session["documentTable"] == null)
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

                //documentTable.Rows.Add(
                //    "Pièce d'identité", 
                //    "PI", 
                //    "Copie lisible d'une pièce d'identité (carte d'identité, passeport)", 
                //    "oui", 
                //    "", 
                //    "id", 
                //    "idPath");
                documentTable.Rows.Add(
                    GetLocalResourceObject("grille_ligne1col1").ToString(),
                    "PI",
                    GetLocalResourceObject("grille_ligne1col3").ToString(),
                    GetLocalResourceObject("grille_ligne1col4").ToString(),
                    "",
                    "id",
                    "idPath");
                documentTable.Rows.Add(
                    GetLocalResourceObject("grille_ligne2col1").ToString(),
                    "DIPLOME",
                    GetLocalResourceObject("grille_ligne2col3").ToString(),
                    GetLocalResourceObject("grille_ligne2col4").ToString(),
                    "",
                    "di",
                    "diPath");
                documentTable.Rows.Add(
                     GetLocalResourceObject("grille_ligne3col1").ToString(),
                    "DUREE_ETUDES",
                    GetLocalResourceObject("grille_ligne3col3").ToString(),
                    GetLocalResourceObject("grille_ligne3col4").ToString(),
                    "",
                    "pr",
                    "ptPath");
                documentTable.Rows.Add(
                     GetLocalResourceObject("grille_ligne4col1").ToString(),
                    "COMPLEMENT 1",
                    GetLocalResourceObject("grille_ligne4col3").ToString(),
                    GetLocalResourceObject("grille_ligne4col4").ToString(),
                    "",
                    "cp",
                    "cpPath");
                documentTable.Rows.Add(
                     GetLocalResourceObject("grille_ligne5col1").ToString(),
                    "COMPLEMENT 2",
                    GetLocalResourceObject("grille_ligne5col3").ToString(),
                    GetLocalResourceObject("grille_ligne5col4").ToString(),
                    "",
                    "cp",
                    "cpPath");

                Session["documentTable"] = documentTable;
            }
            GridView1.DataSource = (DataTable)Session["documentTable"];
            GridView1.DataBind();
            //updatecoches();

            object ce = GridView1.Rows[1].Cells[4];
            DataControlFieldCell dcfc = (DataControlFieldCell)GridView1.Rows[1].Cells[4];

            foreach (Control c in dcfc.Controls)
            {
                if (c is FileUpload)
                {
                    FileUpload fu = (FileUpload)c;
                    if (fu.HasFile)
                    {

                    }
                    break;
                }
            }

            int i = 3;

            // ****** TEST 
            Dossier d1 = PhoenixServiceClient.ObtientEtatCivil(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                           "FN", null, 2000001, "");
            Session[sV.ph_etatcivil.ToString()] = d1;
            // ****** FIN TEST 

            if (!IsPostBack)
            {

                if (Session[sV.ph_etatcivil.ToString()] != null)
                {
                    Dossier d = (Dossier)Session[sV.ph_etatcivil.ToString()];
                    Label_email.Text = d.Email;

                    Label_nodossier.Text = d.Account_id.ToString();
                    Label_datelim.Text = d.date_validation.ToString();
                }

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
                Dossier d = (Dossier)Session[sV.ph_etatcivil.ToString()];

                //// écrire dans la base
                string nature_document = dt.Rows[dii]["NatureDoc"].ToString();

                string encoded64File = Convert.ToBase64String(FileUpload1.FileBytes);
                ResponseString rs = PhoenixServiceClient.Transferedocument(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken, d.Account_id, nature_document, fileName, encoded64File);

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
    }
}

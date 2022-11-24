using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataTable documentTable;
        string cocheverte_glyphicon = @"<span class=""glyphicon glyphicon-ok"" style=""color:green"" aria-hidden=""true""></span>";

        private bool updatecoches()
        {
            bool all = false;
            bool allmand = false;
            int rows = GridView1.Rows.Count;
            if (rows>0) {all= true;allmand=true;}
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
                    all= false;
                }
                if (p!=null && ((string)p) == "oui")
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

                string complementinfo = "Complémentaire 1 (supplément au diplôme, certificat de scolarité, règlements des examens, règlements des études, traduction du diplôme etc…)";

                documentTable.Rows.Add("Pièce d'identité", "", " Copie lisible d'une pièce d'identité (carte d'identité, passeport)", "oui", "", "id", "idPath");
                documentTable.Rows.Add("Diplôme", "Bachelier (enseignement de type long)", " Copie lisible du diplôme dans la langue d'origine", "oui", "", "di", "diPath");
                documentTable.Rows.Add("Justificatif de durée d'études", " Bachelier (enseignement de type long)", "Copie lisible d'un justificatif de la durée officielle des études délivré par l'établissement", "oui", "", "pr", "ptPath");
                documentTable.Rows.Add("Document complémentaire 1", "",complementinfo, "non", "", "cp", "cpPath");
                documentTable.Rows.Add("Document complémentaire 2", "", complementinfo.Replace("1","2"), "non", "", "cp", "cpPath");

                Session["documentTable"] = documentTable;
            }
            GridView1.DataSource = (DataTable)Session["documentTable"];
            GridView1.DataBind();

            updatecoches();
            
            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            panel1.Visible = true;
            labelUploadinfo.Text = "veuillez choisir le document " + GridView1.SelectedValue.ToString();
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

                FileUpload1.SaveAs(Path.Combine(savePath, fileName));
                dt.Rows[dii]["Piecej"] = fileName;
                
                
                GridView1.DataBind();
                updatecoches();

                // Notify the user that the file was uploaded successfully.
                UploadStatusLabel.Text = "Your file was uploaded successfully.";
                panel1.Visible = false;

            }
            else
            {
                // Notify the user that a file was not uploaded.
                UploadStatusLabel.Text = "You did not specify a file to upload.";
            }
        }

        protected void Button_valid_Click(object sender, EventArgs e)
        {

        }
    }
}
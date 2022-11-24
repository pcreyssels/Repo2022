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
    public partial class AspTables : System.Web.UI.Page
    {
        DataTable documentTable;
        protected void Page_Load(object sender, EventArgs e)
        {

            bool b = Page.IsPostBack;
            bool b2 = Page.IsCallback;

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

                documentTable.Rows.Add("Pièce d'identité", "", " Copie lisible d'une pièce d'identité (carte d'identité, passeport)", "oui", "", "id","idPath");
                documentTable.Rows.Add("Diplôme", "Bachelier (enseignement de type long)", " Copie lisible du diplôme dans la langue d'origine", "oui", "", "di", "diPath");
                documentTable.Rows.Add("Justificatif de durée d'études", " Bachelier (enseignement de type long)", "Copie lisible d'un justificatif de la durée officielle des études délivré par l'établissement", "oui", "", "pr", "ptPath");
                documentTable.Rows.Add("Document complémentaire", "", " Compléments (suppléments au diplôme, certificat de scolarité, règlement des études, règlement des examens, etc)", "non", "", "cp", "cpPath");

                Session["documentTable"] = documentTable;
            }
            GridView1.DataSource = (DataTable)Session["documentTable"];
            GridView1.DataBind();

        }

        protected void recapRetour_Click(object sender, EventArgs e)
        {

        }

        protected void recapValider_Click(object sender, EventArgs e)
        {

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
                //GridView1.SelectedRow.Cells[4].Text = fileName;

                GridView1.DataBind();

                // Notify the user that the file was uploaded successfully.
                UploadStatusLabel.Text = "Your file was uploaded successfully.";

            }
            else
            {
                // Notify the user that a file was not uploaded.
                UploadStatusLabel.Text = "You did not specify a file to upload.";
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string s = e.CommandName;
            s = s + "e";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            
            panel1.Visible = true;
            labelUploadinfo.Text = "veuillez choisi le document " + GridView1.SelectedValue.ToString();
        }
    }

}
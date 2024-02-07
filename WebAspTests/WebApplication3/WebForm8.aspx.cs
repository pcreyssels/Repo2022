using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm8 : System.Web.UI.Page
    {

        string[] cols_headerstext = new string[4];
        DataTable documentTable;
        PlaceHolder ph1;

        protected void Page_Init(object sender, EventArgs e)
        {
            /*
             * Raised after all controls have been initialized and any skin settings have been applied.
             * The Init event of individual controls occurs before the Init event of the page.
             * Use this event to read or initialize control properties.
             */
            GridView1.DataSource = documentTable;
            if (true)//(IsPostBack)
            {
                //GridView1.DataBind();
            }

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            /* Raised after the Page object has created all controls that are required 
             in order to render the page, including child controls of composite controls. */
            //GridView1.DataBind();
            //Inject_FileUpload();
            //Updatecoches();
        }

        protected void Page_Load(object sender, EventArgs e)
        {


            int sc = Response.StatusCode;
            int ssc = Response.SubStatusCode;
            Response.StatusCode = 404;

            if (!IsPostBack)
            {
                hf0.Value = "CX";
            }

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

            //GridView1.Rows.Add(
            //    "col1", "col2", "col3", "col4", "col5", "col6", "col7"
            //    );

            //ph1 = new PlaceHolder();
            //Image img1 = new Image();
            //img1.ImageUrl = "~/Images/Attention 450x450px.png";
            //img1.Attributes.Add("style", "height: 100%; width: 100%; object-fit: contain");
            //ph1.Controls.Add(new LiteralControl("<span style=\"display: inline-block; height: 3em;\">"));
            //ph1.Controls.Add(img1);
            //ph1.Controls.Add(new LiteralControl("</span>"));

            GridView1.DataSource= documentTable;
            GridView1.DataBind();

            object o = GridView1.Rows[0].Cells[0];

            object p = GridView1.Rows[1].Cells[1];


            string res = "<span>\r\n    Copie lisible d'une pièce d'identité (carte d'identité, passeport, titre de séjour, récépissé ou <b>justificatif de réfugié ou assimilé).</b>  _ICONE_ Visa, permis de conduire ou carte vitale <b>ne sont pas acceptés. Merci de fournir un justificatif de changement de nom, si nécessaire</b>.\r\n</span>";
            res.IndexOf("_ICON_");
            string[] rest = res.Split(new string[] { "_ICONE_" },StringSplitOptions.RemoveEmptyEntries);

            

            //HtmlElement hel1 = new HtmlElement()
            //TextBox box = new TextBox();
            //box.Attributes["runat"] = "server";
            //box.Text = "0";
            //this.Controls.Add(box);



            //HtmlForm hel = new HtmlForm();
            //hel.Controls.Add(new LiteralControl("<h3>Value: "));
            //TextBox box = new TextBox();
            //box.Attributes.Add("runat", "server");
            //box.Text = "bonjour 0";
            //hel.Controls.Add(box);
            //hel.Controls.Add(new LiteralControl("</h3>"));

            //this.Controls.Add(hel);

            int i = 0;

        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < 4; i++)
            {
                GridView1.Columns[i].HeaderText = cols_headerstext[i];
            }
        }

        protected void GridView1_Init(object sender, EventArgs e)
        {
            for (int i = 0; i < 4; i++)
            {
                cols_headerstext[i] = GridView1.Columns[i].HeaderText;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            // Specify the path on the server to
            // save the uploaded file to.
            String savePath = @"c:\temp\uploads\";

            // Before attempting to perform operations
            // on the file, verify that the FileUpload 
            // control contains a file.
            if (FileUpload1.HasFile)
            {
                // Get the name of the file to upload.
                String fileName = FileUpload1.FileName;

                // Append the name of the file to upload to the path.
                savePath += fileName;


                // Call the SaveAs method to save the 
                // uploaded file to the specified path.
                // This example does not perform all
                // the necessary error checking.               
                // If a file with the same name
                // already exists in the specified path,  
                // the uploaded file overwrites it.
                FileUpload1.SaveAs(savePath);

                // Notify the user of the name of the file
                // was saved under.
                UploadStatusLabel.Text = "Your file was saved as " + fileName;
            }
            else
            {
                // Notify the user that a file was not uploaded.
                UploadStatusLabel.Text = "You did not specify a file to upload.";
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowIndex == 1)
                {
                    //e.Row.Cells[0].Text = "bonjour <i>italique</i>";
                    ph1 = new PlaceHolder();

                    string res = "<span>\r\n    Copie lisible d'une pièce d'identité (carte d'identité, passeport, titre de séjour, récépissé ou <b>justificatif de réfugié ou assimilé).</b> <br/> \r\n  _ICONE_      Visa, permis de conduire ou carte vitale <b>ne sont pas acceptés. Merci de fournir un justificatif de changement de nom, si nécessaire</b>.\r\n</span>";
                    res.IndexOf("_ICON_");
                    string[] rest = res.Split(new string[] { "_ICONE_" }, StringSplitOptions.RemoveEmptyEntries);
                    rest[0] = " bonjour ";
                    rest[0] = " toto ";
                    // 1er bloc de texte avant icone
                    Literal li = new Literal();
                    li.Mode = LiteralMode.PassThrough;
                    li.Text = rest[0];

                    // insère icone
                    Image img1 = new Image();
                    img1.ImageUrl = "~/Images/Attention 450x450px.png";
                    img1.Attributes.Add("style", "height: 100%; width: 100%; object-fit: contain");
                    ph1.Controls.Add(new LiteralControl("<span style=\"display: inline-block; height: 3em;\">"));
                    ph1.Controls.Add(img1);
                    ph1.Controls.Add(new LiteralControl("</span>"));

                    // 2eme bloc de texte après icone
                    li = new Literal();
                    li.Mode = LiteralMode.PassThrough;
                    li.Text = rest[1];
                    ph1.Controls.Add(li);

                    // <label onclick="modalshow2()">Do you like cheese?</label>
                    Label la  =new Label();
                    la.Attributes.Add("onclick", "modalshow2()");
                    la.Text = " * ";
                    ph1.Controls.Add(la);

                    e.Row.Cells[0].Controls.Add(ph1);


                    

                }

                if (e.Row.RowIndex == 1)
                {
                    object o = GridView1.Rows[0].Cells[0];
                    e.Row.Cells[1].Text = "bonjour <b>gras</b>";
                    
                }
                    
                // Display the company name in italics.
                //e.Row.Cells[1].Text = "<i>" + e.Row.Cells[1].Text + "</i>";

            }
        }

        

        protected void hiddenButtonOkforModalWarning_Click(object sender, EventArgs e)
        {

        }

        protected void hib1_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (hf0.Value == "CX") 
            {
                hf0.Value = "CY";
            }
            else if (hf0.Value == "CY")
            {
                hf0.Value = "Z0";
            }
            else
            {
                hf0.Value = "CX";
            }
        }

        protected void Page_UnLoad(object sender, EventArgs e)
        {
            Debug.WriteLine("Page UnLoad");
        }
    }

    
}
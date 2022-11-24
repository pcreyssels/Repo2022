using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Resources;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        DataTable piecesAfournir;
        ResourceManager rm;
        protected override void InitializeCulture()
        {

            string ctrlName = Page.Request.Params.Get("__EVENTTARGET");

            string cultureCode = "en-US";

            Control control = null;
             string ctrlStr = String.Empty;
            Control c = null;
            int np = Page.Request.Form.Count;
            foreach (string ctl in Page.Request.Form)
            {
                //handle ImageButton they having an additional "quasi-property" in their Id which identifies
                //mouse x and y coordinates
                if (ctl.EndsWith("_lng2"))
                {
                    cultureCode = "fr-FR";
                    break;
                }
                else if (ctl.EndsWith("_lng"))
                {
                    cultureCode = "en-US";
                    break;
                }
                
            }

            var cultureInfo = CultureInfo.CreateSpecificCulture(cultureCode);
            Thread.CurrentThread.CurrentCulture = cultureInfo;
            Thread.CurrentThread.CurrentUICulture = cultureInfo;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            rm = new ResourceManager("Resources.Resource", System.Reflection.Assembly.Load("App_GlobalResources"));

            string ctrlName = Page.Request.Params.Get("__EVENTTARGET");

            CultureInfo ci = Thread.CurrentThread.CurrentCulture;
            string h = rm.GetString("Phone", ci);



            piecesAfournir = new DataTable();
            piecesAfournir.Columns.AddRange(new DataColumn[4] {
                    new DataColumn("Pieceaj", typeof(string)),
                    new DataColumn("Precisions", typeof(string)),
                    new DataColumn("SansEntete",typeof(string)),
                    new DataColumn("Piecesj", typeof(string))
                });


            piecesAfournir.Rows.Add(
                "Pièce d'identité",
                "PI",
                "id",
                "idPath");
            piecesAfournir.Rows.Add(
                "Diplôme",
                "DIPLOME",
                "Copie lisible du diplôme dans la langue d'origine",
                "oui");
            piecesAfournir.Rows.Add(
                "Justificatif de durée d'études",
                "DUREE_ETUDES",
                 "id",
                "idPath"
                );
            //piecesAfournir.Rows.Add(
            //    "Document complémentaire 1",
            //    "COMPLEMENT 1",
            //    "Compléments (suppléments au diplôme, certificat de scolarité, règlement des études, règlement des examens, etc)",
            //    "non",
            //    "",
            //    "cp",
            //    "cpPath");
            //piecesAfournir.Rows.Add(
            //    "Document complémentaire 2",
            //    "COMPLEMENT 2",
            //    "Compléments (suppléments au diplôme, certificat de scolarité, règlement des études, règlement des examens, etc)",
            //    "non",
            //    "",
            //    "cp",
            //    "cpPath");

            GridView1.DataSource = piecesAfournir;
            GridView1.DataBind();


            //

            // Get the number of rows and columns selected by the user.
            int numrows = 4;
            int numcells = 5;

            // Iterate through the rows.
            for (int j = 0; j < numrows; j++)
            {

                // Create a new row and add it to the Rows collection.
                HtmlTableRow row = new HtmlTableRow();

                // Provide a different background color for alternating rows.
                if (j % 2 == 1)
                    row.BgColor = "Gray";

                // Iterate through the cells of a row.
                for (int i = 0; i < numcells; i++)
                {
                    // Create a new cell and add it to the HtmlTableRow 
                    // Cells collection.
                    HtmlTableCell cell = new HtmlTableCell();
                    cell.Controls.Add(new LiteralControl("row " +
                                      j.ToString() +
                                      ", cell " +
                                      i.ToString()));
                    row.Cells.Add(cell);
                }

                // Add the row to the HtmlTable Rows collection.
                
            }

            HtmlGenericControl gc = new HtmlGenericControl("div");
            // Set the properties of the new HtmlGenericControl control.
            gc.ID = "NewControl";
            gc.InnerHtml = "This is a <b>dynamically</b> created HTML server control.";
            Button b1 = new Button();
            b1.Text = "CLICKme";
            b1.Click += new EventHandler(this.bg_Click);
            gc.Controls.Add(b1);

            gc.Attributes.Add("style", "color:red");
            // Add the new HtmlGenericControl to the Controls collection of the
            // PlaceHolder control. 
            ControlContainer.Controls.Add(gc);

            //HtmlGenericControl gc_1 = new HtmlGenericControl("div");
            //gc_1.InnerHtml = "2 eme ligne de texte.";
            //Button b2 = new Button();
            //b2.Click += new EventHandler(this.bg_Click);
            //b2.Text = "CLICKme2";
            //gc_1.Controls.Add(b2);
            //ControlContainer.Controls.Add(gc_1);

            Control mc = FindControl("b1");
            int y = 0;
            HtmlGenericControl gc1 = new HtmlGenericControl("div");
            string ih = "";
            int v = 30;

            for (int n = 0; n < 1; n++)
            {
                v += 5;
                HtmlGenericControl gct = new HtmlGenericControl("div");

                HtmlGenericControl gct1 = new HtmlGenericControl("div");

                //ih += $"<div class=\"row\"><div class=\"col-sm-3 \">{v.ToString()}</div><div class=\"col-sm-3\">{(v + 2).ToString()}</div><div class=\"col-sm-3\">{(v + 4).ToString()}</div><div class=\"col-sm-3\">{(v + 6).ToString()}</div></div>";
                //string bh = $"<button runat=\"server\" id =\"bhtml{n.ToString()}\" onserverclick=\"bhtml_ServerClick\">CLICK ME{n.ToString()}</button>";
                // ih += $"<div class=\"row\"><div class=\"col-sm-3 \">{v.ToString()}</div><div class=\"col-sm-3\">{(v + 2).ToString()}</div><div class=\"col-sm-3\">{(v + 4).ToString()}</div><div class=\"col-sm-3\">{bh}</div></div>";

                ih = $"<div class=\"row\"><div class=\"col-sm-3 \">{v.ToString()}</div><div class=\"col-sm-3\">{(v + 2).ToString()}</div><div class=\"col-sm-3\">{(v + 4).ToString()}</div><div class=\"col-sm-3\">{(v + 6).ToString()}</div></div>";
                //gct.InnerHtml = ih;

                // ajout du bouton
                Button b = new Button();
                b.Click += new EventHandler(this.bg_Click);
                b.Text = $"CLICKme{n.ToString()}";
                b.ID = $"btn{n.ToString()}";
                gct.Controls.Add(b);

                // ajout du bouton
                Button b2 = new Button();
                b2.Click += new EventHandler(this.bg_Click);
                b2.Text = $"CLICK2me{n.ToString()}";
                b2.ID = $"btn{n.ToString()}";
                gct.Controls.Add(b2);

                gct1.InnerHtml = "bonjour texte html du gct1";


                PlaceHolderN.Controls.Add(gct);
                PlaceHolderN.Controls.Add(gct1);
                PlaceHolderN.Controls.Add(b2);
            }

            HtmlGenericControl gct_0 = new HtmlGenericControl("div");
            Button b_0 = new Button();
            b_0.Click += new EventHandler(this.bg_Click);
            b_0.Text = $"CLICK me";
            b_0.ID = $"btn";

            
           
            gct_0.Controls.Add(b_0);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void bg_Click(object sender, EventArgs e)
        {


            int y = 0;
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            GridView1.Rows[2].Visible = false;
            Control mc = Page.FindControl("b1");

            int y = 0;
        }

        protected void bhtml_ServerClick(object sender, EventArgs e)
        {
            int i = 2;
        }

        protected void button_lng_Click(object sender, EventArgs e)
        {
            Session["lng"] = "en-US";

            //CultureInfo cci = Thread.CurrentThread.CurrentCulture;
            //CultureInfo ci = new CultureInfo("en-US",true);
            //Thread.CurrentThread.CurrentCulture = ci;
            //Thread.CurrentThread.CurrentUICulture = ci;
            //this.InitializeCulture();
            //Response.Redirect("WebForm7.aspx", false);
            //Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("en-US");
            //Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
        }

        protected void button_lng2_Click(object sender, EventArgs e)
        {
            Session["lng"] = "fr-FR";
            //CultureInfo cci = Thread.CurrentThread.CurrentCulture;
            //CultureInfo ci = new CultureInfo("fr-FR", true);
            //Thread.CurrentThread.CurrentCulture = ci;
            //Thread.CurrentThread.CurrentUICulture = ci;
            //this.InitializeCulture();
            //Response.Redirect("WebForm7.aspx", false);
        }
    }
}

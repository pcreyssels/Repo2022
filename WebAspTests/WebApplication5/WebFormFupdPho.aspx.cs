using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebFormFupdPho : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] cols_headerstext = new string[4];
            PlaceHolder ph1;

            DataTable documentTable;
            readonly string cocheverte_glyphicon = @"<span class=""glyphicon glyphicon-ok"" style=""color:green"" aria-hidden=""true""></span>";
            bool validdisable = false;
            bool refugie = false;
            bool autre_langue = false;
            bool doc_obligatoire = false;
            string reqSelector = "00000000";

            bool lost_session_infos = false;

            private bool Updatecoches()
            {
                bool all = false;
                bool allmand = false;
                int rows = GridView1.Rows.Count;
                if (rows > 0) { all = true; allmand = true; }
                DataTable dt = documentTable;
                for (int i = 0; i < rows; i++)
                {
                    var cell = GridView1.Rows[i].Cells[5];
                    object o = dt.Rows[GridView1.Rows[i].DataItemIndex]["Piecej"];
                    object p = dt.Rows[GridView1.Rows[i].DataItemIndex]["Obligatoire"];
                    if (o != null && ((string)o) != "")
                    {
                        cell.Text = cocheverte_glyphicon;
                    }
                    else
                    {
                        cell.Text = "";
                        all = false;
                    }
                    if (p != null && ((string)p).Contains("oui") || ((string)p).Contains("yes"))
                    {
                        if (o == null || ((string)o) == "")
                            allmand = false;
                    }
                }

                if (allmand && !validdisable)
                {
                    button_valid.Enabled = true;
                    preventflag.Value = "ok";
                }
                else
                    button_valid.Enabled = false;

                // !!! SPEC TEST TAD !!! 
#if SPECTEST
            button_valid.Enabled = true;
#endif


                GridView1.Columns[5].HeaderText = cocheverte_glyphicon;
                return all;
            }

            private void Inject_FileUpload(string info)
            {
                try
                {
                    int grc = -1;
                    string err_mess = "";
                    if (GridView1 != null)
                    {
                        grc = GridView1.Rows.Count;
                        if (grc == 0)
                            err_mess = $"gridviewrowcount : {grc}";
                    }
                    else
                        err_mess = $" GridView1 = null !";
                    if (err_mess != "")
                        LibLog.Log.EcrireLogError($"Error Inject FileUpload Dossiers_docs :  {err_mess}");


                    // controle FileUpdate pour chaque ligne
                    for (int j = 0; j < 10; j++)
                    {
                        DataControlFieldCell dcfc = (DataControlFieldCell)GridView1.Rows[j].Cells[4];
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
                        dcfc.Controls.Clear();
                        dcfc.Controls.Add(fu);

                        // <input type="button" value="telecharger" onclick="showBrowseDialog()" />
                        HtmlInputButton hi = new HtmlInputButton
                        {
                            Value = GetLocalResourceObject("TextTelecharger").ToString() // "telecharger";
                        };
                        hi.Attributes.Add("onclick", $"showBrowseDialogfu{(j + 1)}()");
                        hi.Attributes.Add("class", "buttonlikelink");
                        dcfc.Controls.Add(hi);



                        //<asp:Button runat="server" ID="HideButton" Text="" Style="display: none;" OnClick="HideButton_Click" />
                        Button b = new Button
                        {
                            ID = "HideButton" + (j + 1).ToString(),
                            ClientIDMode = ClientIDMode.Static
                        };
                        dcfc.Controls.Add(b);

                        b.OnClientClick += "bclick()";

                        b.Attributes.Add("style", "display: none");
                        if (j == 0)
                            b.Click += new EventHandler(HideButton1_Click);
                        else if (j == 1)
                            b.Click += new EventHandler(HideButton2_Click);
                        else if (j == 2)
                            b.Click += new EventHandler(HideButton3_Click);
                        else if (j == 3)
                            b.Click += new EventHandler(HideButton4_Click);
                        else if (j == 4)
                            b.Click += new EventHandler(HideButton5_Click);
                        else if (j == 5)
                            b.Click += new EventHandler(HideButton6_Click);
                        else if (j == 6)
                            b.Click += new EventHandler(HideButton7_Click);
                        else if (j == 7)
                            b.Click += new EventHandler(HideButton8_Click);
                        else if (j == 8)
                            b.Click += new EventHandler(HideButton9_Click);
                        else if (j == 9)
                            b.Click += new EventHandler(HideButton10_Click);

                        // SCRIPT

                        // Define the name and type of the client scripts on the page.
                        String csname1 = "PopupScript" + (j + 1).ToString();
                        Type cstype = this.GetType();

                        // Get a ClientScriptManager reference from the Page class.
                        ClientScriptManager cs = Page.ClientScript;

                        // Check to see if the startup script is already registered.
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
                             * function upload() {
                                var btn = document.getElementById('<%= HideButton.ClientID %>');
                                btn.click();
                                }
                }            * */
                            // string code2 = "function upload" + (j + 1).ToString() + "() {var btn = document.getElementById('" + b.ClientID + "');btn.click();}";




                            // modif
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
                catch (Exception e)
                {
                    string gvr = "_nul_";
                    if (GridView1 != null)
                        gvr = GridView1.Rows.Count.ToString();
                    LibLog.Log.EcrireLogError($"Inject FileUpload error !!! appelant:{info} gridviewrows:{gvr}");
                    string _sessionid = "";
                    if (Session != null && Session.SessionID != null)
                        _sessionid = Session.SessionID;
                    else
                        _sessionid = "_null_";
                    LibLog.Log.EcrireLogError($" session id : {_sessionid} {Environment.NewLine}; e.Message:{e.Message};{Environment.NewLine} e.StackTrace:{e.StackTrace};{Environment.NewLine}");
                }

            }

            protected void Page_PreInit(object sender, EventArgs e)
            {
                /*
                 * Check the IsPostBack property to determine whether this is the first time the page is being processed. 
                 * The IsCallback and IsCrossPagePostBack properties have also been set at this time.
                 * Create or re-create dynamic controls.
                 * Set a master page dynamically.
                 * Set the Theme property dynamically.
                 * Read or set profile property values.
                 */
                documentTable = (DataTable)Session[Sv.ph_Document_table.ToString()];



            }

            protected void Page_Init(object sender, EventArgs e)
            {
                /*
                 * Raised after all controls have been initialized and any skin settings have been applied.
                 * The Init event of individual controls occurs before the Init event of the page.
                 * Use this event to read or initialize control properties.
                 */
                GridView1.DataSource = documentTable;
                if (IsPostBack)
                {
                    if (documentTable != null)
                    {
                        lost_session_infos = false;
                        GridView1.DataBind();
                        Updatecoches();
                        Inject_FileUpload("pageinit");
                    }
                    else
                        lost_session_infos = true;

                }

            }

            protected void Page_InitComplete(object sender, EventArgs e)
            {
                /*
                 * Raised at the end of the page's initialization stage. 
                 * Only one operation takes place between the Init and InitComplete events: tracking of view state changes is turned on. 
                 * View state tracking enables controls to persist any values that are programmatically added to the ViewState collection. 
                 * Until view state tracking is turned on, any values added to view state are lost across postbacks. 
                 * Controls typically turn on view state tracking immediately after they raise their Init event.
                 * Use this event to make changes to view state that you want to make sure are persisted after the next postback. 
                 */


            }

        // https://stackoverflow.com/questions/5624804/cant-override-preload-because-not-function
            /*
             * OnPreLoad is not an event subscription, but where the event is fired from, which means it doesn't have the sender argument. 
             * You should change the method signature to protected override void OnPreLoad(EventArgs e). – 
             * Matthew Abbott Apr 11, 2011 at 17:10
             */
        protected override void OnPreLoad(EventArgs e)
        {
            /*
             * -> Raised after the page loads view state for itself and all controls, and after it processes postback data that is included with the Request instance.
             * -> Before the Page instance raises this event, it loads view state for itself and all controls, 
             * and then processes any postback data included with the Request instance.
             * -> Loads ViewState: ViewState data are loaded to controls.
             * -> Loads Postback data: Postback data are now handed to the page controls.
             */

        }

        protected void Page_Load(object sender, EventArgs e)
        {

#if TADON
            if (false)
#else
            if (Session[Sv.ph_SessionAlive.ToString()] == null)
#endif
                Response.Redirect($"~/{GlobalClass.dico_Pages[Ps.ExpirePage]}.aspx");
            else if (lost_session_infos)
            {
                Session.Abandon();
                Response.Redirect($"~/{GlobalClass.dico_Pages[Ps.ErrorPageInfos]}.aspx");
            }
            else
            {

                // prevention des attaques
                this.UpdateVisibilityDetectAttack();

                // info refugie gratuit
                if (Session[Sv.ph_Complement.ToString()] != null)
                    refugie = ((Complements)Session[Sv.ph_Complement.ToString()]).Refugie;
                if (Session[Sv.ph_ChoixLangueAutre.ToString()] != null)
                {
                    string al = (string)Session[Sv.ph_ChoixLangueAutre.ToString()];
                    autre_langue = al.ToUpper() == "OUI";
                }


#if TADON
                autre_langue = false;
                refugie = false;
#endif


                /*  Intitulé                    ligne table Nature_doc BDD (1-10)     ligne tableau site web (0-9)=type_piece
             *  COMPLEMENT 1                1                                       6
                COMPLEMENT 2                2                                       7        
                COMPLEMENT 3                3                                       8
                COMPLEMENT 4                4                                       9        
                DIPLOME                     5                                       2
                DIPLOME_TRADUCTION          6                                       3
                DUREE_ETUDES                7                                       4
                DUREE_ETUDES_TRADUCTION     8                                       5
                PI                          9                                       0
                REFUGIE                     10                                      1
             * 
             */
                reqSelector = "";
                string tableau = "6789234501";
                for (int n = 1; n <= 10; n++)
                {
                    string ch = "0";
                    int j = Int32.Parse(tableau.Substring(n - 1, 1));
                    bool obl = Docobligatoire(refugie, autre_langue, j);
                    if (obl)
                        ch = "1";
                    int i = Int32.Parse(tableau.Substring(n - 1, 1));
                    reqSelector = reqSelector + ch;
                }


                // variable générale de page
                var page = (Page)HttpContext.Current.CurrentHandler;
                // info debug
                string pa = Path.GetFileNameWithoutExtension(page.AppRelativeVirtualPath);
                string ipb = (IsPostBack) ? "postback" : "no postback";
                Debug.WriteLine($"**** {pa} : Page_Load  ({ipb}) ****");

                // *********** initialisation dynamique de la table *********** 
                bool chlang = (bool)Session[Sv.ph_Flag_chgt_lang.ToString()];
                Debug.WriteLine("chlang " + (chlang ? "true" : "false"));
                if (
                    (Session[Sv.ph_Document_table.ToString()] == null) || chlang)
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
                    // PI
                    doc_obligatoire = Docobligatoire(refugie, autre_langue, 0);
                    documentTable.Rows.Add(
                        GetLocalResourceObject("grille_ligne1col1").ToString(),
                        "PI",
                        GetLocalResourceObject("grille_ligne1col3").ToString(),
                        doc_obligatoire ? GetLocalResourceObject("docobligatoire_oui").ToString() : GetLocalResourceObject("docobligatoire_non").ToString(),
                        "",
                        "id",
                        "idPath");
                    // REF OU ASS
                    doc_obligatoire = Docobligatoire(refugie, autre_langue, 1);
                    documentTable.Rows.Add(
                        GetLocalResourceObject("grille_ligne2col1").ToString(),
                        "REFUGIE",
                        GetLocalResourceObject("grille_ligne2col3").ToString(),
                        doc_obligatoire ? GetLocalResourceObject("docobligatoire_oui").ToString() : GetLocalResourceObject("docobligatoire_non").ToString(),
                        "",
                        "refass",
                        "refassPath");
                    // DIPLOME
                    doc_obligatoire = Docobligatoire(refugie, autre_langue, 2);
                    documentTable.Rows.Add(
                        GetLocalResourceObject("grille_ligne3col1").ToString(),
                        "DIPLOME",
                        GetLocalResourceObject("grille_ligne3col3").ToString(),
                        doc_obligatoire ? GetLocalResourceObject("docobligatoire_oui").ToString() : GetLocalResourceObject("docobligatoire_non").ToString(),
                        "",
                        "di",
                        "diPath");
                    // TRADUCTION DU DIPLOME
                    doc_obligatoire = Docobligatoire(refugie, autre_langue, 3);
                    documentTable.Rows.Add(
                         GetLocalResourceObject("grille_ligne4col1").ToString(),
                        "DIPLOME_TRADUCTION",
                        GetLocalResourceObject("grille_ligne4col3").ToString(),
                        doc_obligatoire ? GetLocalResourceObject("docobligatoire_oui").ToString() : GetLocalResourceObject("docobligatoire_non").ToString(),
                        "",
                        "td",
                        "tdPath");
                    // JUSTIFICATIF DUREE ETUDE
                    doc_obligatoire = Docobligatoire(refugie, autre_langue, 4);
                    documentTable.Rows.Add(
                         GetLocalResourceObject("grille_ligne5col1").ToString(),
                        "DUREE_ETUDES",
                        GetLocalResourceObject("grille_ligne5col3").ToString(),
                        doc_obligatoire ? GetLocalResourceObject("docobligatoire_oui").ToString() : GetLocalResourceObject("docobligatoire_non").ToString(),
                        "",
                        "jde",
                        "jdePath");
                    // TRADUCTION JUSTIFICATIF DUREE ETUDE
                    doc_obligatoire = Docobligatoire(refugie, autre_langue, 5);
                    documentTable.Rows.Add(
                         GetLocalResourceObject("grille_ligne6col1").ToString(),
                        "DUREE_ETUDES_TRADUCTION",
                        GetLocalResourceObject("grille_ligne6col3").ToString(),
                        doc_obligatoire ? GetLocalResourceObject("docobligatoire_oui").ToString() : GetLocalResourceObject("docobligatoire_non").ToString(),
                        "",
                        "tjde",
                        "tjdePath");
                    // COMPLEMENT 1
                    doc_obligatoire = Docobligatoire(refugie, autre_langue, 6);
                    documentTable.Rows.Add(
                         GetLocalResourceObject("grille_ligne7col1").ToString(),
                        "COMPLEMENT 1",
                        GetLocalResourceObject("grille_ligne7col3").ToString(),
                        doc_obligatoire ? GetLocalResourceObject("docobligatoire_oui").ToString() : GetLocalResourceObject("docobligatoire_non").ToString(),
                        "",
                        "cp1",
                        "cp1Path");
                    // COMPLEMENT 2
                    doc_obligatoire = Docobligatoire(refugie, autre_langue, 7);
                    documentTable.Rows.Add(
                         GetLocalResourceObject("grille_ligne8col1").ToString(),
                        "COMPLEMENT 2",
                        GetLocalResourceObject("grille_ligne8col3").ToString(),
                        doc_obligatoire ? GetLocalResourceObject("docobligatoire_oui").ToString() : GetLocalResourceObject("docobligatoire_non").ToString(),
                        "",
                        "cp2",
                        "cp2Path");

                    // COMPLEMENT 3
                    doc_obligatoire = Docobligatoire(refugie, autre_langue, 8);
                    documentTable.Rows.Add(
                         GetLocalResourceObject("grille_ligne9col1").ToString(),
                        "COMPLEMENT 3",
                        GetLocalResourceObject("grille_ligne9col3").ToString(),
                        doc_obligatoire ? GetLocalResourceObject("docobligatoire_oui").ToString() : GetLocalResourceObject("docobligatoire_non").ToString(),
                        "",
                        "cp3",
                        "cp3Path");

                    // COMPLEMENT 4
                    doc_obligatoire = Docobligatoire(refugie, autre_langue, 9);
                    documentTable.Rows.Add(
                         GetLocalResourceObject("grille_ligne10col1").ToString(),
                        "COMPLEMENT 4",
                        GetLocalResourceObject("grille_ligne10col3").ToString(),
                        doc_obligatoire ? GetLocalResourceObject("docobligatoire_oui").ToString() : GetLocalResourceObject("docobligatoire_non").ToString(),
                        "",
                        "cp4",
                        "cp4Path");

                    Session[Sv.ph_Document_table.ToString()] = documentTable;
                }
                // *********** FIN initialisation dynamique de la table *********** 

                // *********** databinding dynamique ***********
                chlang = (bool)Session[Sv.ph_Flag_chgt_lang.ToString()];
                Debug.WriteLine("chlang " + (chlang ? "true" : "false"));
                if (!IsPostBack || chlang || lost_session_infos
                    )
                {
                    GridView1.DataSource = documentTable;
                    GridView1.DataBind();
                    Updatecoches();
                    Inject_FileUpload("pageload");
                }
                // *********** FIN databinding dynamique ***********



                if (!IsPostBack)
                {
                    preventflag.Value = "nok";

                    // ***** TEST ACCES DIRECT TAD  *****
#if TADON
                    Session[Sv.ph_Account.ToString()] = GlobalClass.dossier_test;
#endif

                    // ***** AIGUILLAGE AUTORISATIONS *****
                    // autorisation page(s) appelante(s): Dossier_diplome
                    Uri prev_uri = HttpContext.Current.Request.UrlReferrer;

#if TADON
                    if (false) // TAD 
#else
                    if (!GlobalClass.Detect_page(Ps.Dossier_diplome, this.Session, prev_uri, false) &&
                            !GlobalClass.Detect_page(Ps.Dossier_validation, this.Session, prev_uri, false))
#endif
                    {
                        // retour accueil
                        Session[Sv.ph_PreviousPage_WhoSentRedirect.ToString()] = Path.GetFileNameWithoutExtension(page.AppRelativeVirtualPath);
                        Response.Redirect($"~/{GlobalClass.dico_Pages[Ps.Accueil]}.aspx", false);
                        Session.Abandon();
                    }
                    else
                    {
                        // page non cachée par le navigateur
                        Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");


                        // reset info page appelante		   
                        Session[Sv.ph_PreviousPage_WhoSentRedirect.ToString()] = null;

                        // ********** mise à jour encart information : compte, email date limite **********
                        int account_id = 0;

                        if (Session[Sv.ph_Account.ToString()] != null)
                            account_id = (int)Session[Sv.ph_Account.ToString()];
                        else if (Session[Sv.ph_Notif_acntid.ToString()] != null)
                            account_id = (int)Session[Sv.ph_Notif_acntid.ToString()];

                        Dossier d;
                        if (Session[Sv.ph_Etatcivil.ToString()] != null)
                        {
                            d = (Dossier)Session[Sv.ph_Etatcivil.ToString()];
                            account_id = d.Account_id;
                        }

                        if (account_id != 0)
                        {
                            d = PhoenixServiceClient.ObtientEtatCivil(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                                  "FN", null, account_id, "");
                            if (d.Account_id == 0)
                                LibLog.Log.EcrireLogError($"-->  ObtientEtatCivil mode FN invalide (dossier_docs)");
                            Label_email.Text = d.Email;
                            Label_nodossier.Text = d.Account_id.ToString();
                        }

                        DateTime red;
                        if (Session[Sv.ph_Notif_expiredate_inscription.ToString()] != null)
                        {
                            red = (DateTime)Session[Sv.ph_Notif_expiredate_inscription.ToString()];
                            Label_datelim.Text = red.ToString("dd/MM/yyyy");
                        }
                        else if (account_id != 0)
                        {
                            ResponseParametresRetour rpr = PhoenixServiceClient.ActionCompte(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                               "GET_ACNT_REG_EXP_DATE", 0, "", DateTime.MinValue, account_id);
                            Label_datelim.Text = "??/??/????";
                            if (rpr.ExecutionOk)
                            {
                                string ri = rpr.ParamsRet.Returninfos;

                                bool b;
                                if (ri.StartsWith("SUCCESS:"))
                                {
                                    b = DateTime.TryParseExact(ri.Remove(0, 8), "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture, DateTimeStyles.None, out red);
                                    if (b)
                                        Label_datelim.Text = red.ToString("dd/MM/yyyy");
                                }
                            }
                            else
                            {
                                // Log de l'erreur
                                LibLog.Log.EcrireLogError($"--> erreur obtention info date expiration :  {rpr.MessageNok}");
                            }
                        }
                        else
                        {
                            LibLog.Log.EcrireLogError($"--> erreur obtention date expiration, compte : {account_id.ToString()}");
                        }

                        ResponseParametresRetour rpr2 = PhoenixServiceClient.ActionCompte(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                               "PRECREATE_DOCENTRIES", 0, reqSelector, DateTime.MinValue, account_id);

                        // tous les documents reqSelector = "1111111111";
                        rpr2 = PhoenixServiceClient.ActionCompte(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                               "PRECREATE_AVISENTRIES", 0, "1111111111", DateTime.MinValue, account_id);

                        // ********** FIN mise à jour encart information **********   
                        b_abandon.Visible = true;
                        b_accueil.Visible = false;
                    }

                }
            }
        }

        private void UpdateVisibilityDetectAttack()
        {
            if (LibWeb.Security.DetectAttack.ClientHasTooMuchBadAction())
            {
                string error = $"--> trop d'erreurs sur page : {Path.GetFileNameWithoutExtension(Page.AppRelativeVirtualPath)} ";
                LibLog.Log.EcrireLogError(error);
                Response.Redirect($"~/{GlobalClass.dico_Pages[Ps.DetattPage]}.aspx");
            }
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            /*
             * Raised at the end of the event-handling stage.
             * Use this event for tasks that require that all other controls on the page be loaded.
             */

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            /* Raised after the Page object has created all controls that are required 
             in order to render the page, including child controls of composite controls. */
            GridView1.DataBind();
            Inject_FileUpload("pageprerender");
            Updatecoches();
        }


        // tableau d'octets du fichier, nom du fichier, message erreur
        private (byte[], string, string) ProcessFileUpload(int rowindex)
        {

            bool lost_session_infos = false;
            string _info_traitement = "";
            byte[] bin = null;
            string document_name = "";

            string fileUploadMaxSize = ConfigurationManager.AppSettings["FileUploadMaxSize"] ?? "";
            Int32.TryParse(fileUploadMaxSize, out int fuMaxSize);
            fuMaxSize = fuMaxSize * 1000;
            bool filesizetoHigh = false;
            try
            {


                DataControlFieldCell dcfc = (DataControlFieldCell)GridView1.Rows[rowindex].Cells[4];
                FileUpload fu = (FileUpload)dcfc.FindControl($"FileUp{(rowindex + 1)}");
                filesizetoHigh = fu.PostedFile.ContentLength >= fuMaxSize;
                int filesize = fu.PostedFile.ContentLength;
                string fileName = fu.FileName;
                string extension = System.IO.Path.GetExtension(fileName);

                // traitement de l'extension
                int extension_document_id = 0;
                bool extension_ok = false;
                document_name = fu.FileName;
                string document_extension = "";
                int li = document_name.LastIndexOf('.');
                if (li >= 0)
                {
                    document_extension = document_name.Substring(li);
                }
                else
                {
                    // pas d'extension
                    _info_traitement = "nom de fichier invalide";
                }
                // extension acceptée ?
                ExtFic ef = GlobalClass.liste_extfic.Find(_ef => _ef.Name.ToUpper() == document_extension.ToUpper());
                if (ef == null)
                {
                    _info_traitement += " extension de fichier non acceptée";
                    extension_ok = false;
                }
                else
                {
                    extension_document_id = ef.Id;
                    extension_ok = true;
                }

                if (fu.HasFile && !filesizetoHigh && extension_ok)
                {
                    //ligne 1 pièce id, ligne 2 diplome, ligne 3 justificatif durée, ligne 4 doc comp1, ligne 5 doc comp 2

                    MemoryStream ms = new MemoryStream();
                    fu.FileContent.CopyTo(ms);
                    bin = ms.ToArray();


                    // colonne 'nature_id' PK table dbo.Nature_doc :
                    // 8 VALEURS :
                    // 'COMPLEMENT 1'
                    // 'COMPLEMENT 2' 
                    // 'DIPLOME' 
                    // 'DIPLOME_TRADUCTION' 
                    // 'DUREE_ETUDES' 
                    // 'DUREE_ETUDES_TRADUCTION' 
                    // 'PI' 
                    // 'REFUGIE' 
                    string nature_document = "";
                    switch (rowindex)
                    {
                        case 0:
                            nature_document = "PI";
                            break;
                        case 1:
                            nature_document = "REFUGIE";
                            break;
                        case 2:
                            nature_document = "DIPLOME";
                            break;
                        case 3:
                            nature_document = "DIPLOME_TRADUCTION";
                            break;
                        case 4:
                            nature_document = "DUREE_ETUDES";
                            break;
                        case 5:
                            nature_document = "DUREE_ETUDES_TRADUCTION";
                            break;
                        case 6:
                            nature_document = "COMPLEMENT 1";
                            break;
                        case 7:
                            nature_document = "COMPLEMENT 2";
                            break;
                        case 8:
                            nature_document = "COMPLEMENT 3";
                            break;
                        case 9:
                            nature_document = "COMPLEMENT 4";
                            break;
                    }

                    string binaryEncoded64String = Convert.ToBase64String(bin);

                    int account_id = -1;
                    if (Session[Sv.ph_Account.ToString()] is int)
                        account_id = (int)Session[Sv.ph_Account.ToString()];
                    else if (Session[Sv.ph_Notif_acntid.ToString()] is int)
                        account_id = (int)Session[Sv.ph_Notif_acntid.ToString()];

                    if (account_id > 0)
                        lost_session_infos = false;
                    else
                    {
                        // Log de l'erreur
                        string error = $"--> erreur perte variable de session (ProcessFileUpload Dossiers_docs) ";
                        LibLog.Log.EcrireLogError(error);
                        // exception
                        lost_session_infos = true;
                        // throw new PhoenixException(error);
                    }

                    if (!lost_session_infos)
                    {
                        string document_nature_id = nature_document;

                        // pour les documents autres que DIPLOME positionné avec le guid du diplome saisi  ?
                        string diplome_parent = "";

                        // paramètres pour documents
                        DateTime date_creation = DateTime.Now;
                        bool isRequired = false;
                        bool isAsked = false;



                        // Calcul du caractère obligatoire
                        isRequired = Docobligatoire(refugie, autre_langue, rowindex);


                        ResponseGuid rg = null;
                        ResponseString rs = null;

                        // récupère le guid du diplome
                        Guid _guid = Guid.Empty;
                        string guid_diplome_ok = "";
                        bool b = false;
                        if (Session[Sv.ph_DiplomeGuid.ToString()] != null)
                        {
                            b = Guid.TryParseExact((string)Session[Sv.ph_DiplomeGuid.ToString()], "D", out _guid);
                            if (b)
                                guid_diplome_ok = _guid.ToString("D").ToUpper();
                        }
                        else
                        {
                            ResponseParametresRetour rpr = PhoenixServiceClient.ActionCompte(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                                                       "GET_ACNT_DIP_GUID", 0, "", DateTime.MinValue, account_id);
                            if (rpr.ExecutionOk)
                            {
                                string ri = rpr.ParamsRet.Returninfos;
                                bool b1 = false;
                                if (ri.StartsWith("SUCCESS:"))
                                {
                                    b1 = Guid.TryParseExact(ri.Remove(0, 8), "D", out _guid);
                                    if (b1)
                                        guid_diplome_ok = _guid.ToString("D").ToUpper();
                                }
                            }
                            else
                            {
                                // Log de warning et (erreur)
                                string error = $"--> erreur lors de l'obtention du guid de diplome ";
                                LibLog.Log.EcrireLogError(error);
                                LibLog.Log.EcrireLog(error);
                            }
                        }
                        if (guid_diplome_ok == "")
                        {
                            // Log de l'erreur et exception
                            string error = $"--> erreur lors de récupération du Guid inter pages ";
                            LibLog.Log.EcrireLogError(error);
                            throw new PhoenixException(error);
                        }


                        // si diplome on stocke le binaire fichier dans la table Diplome_binary
                        if (nature_document == "DIPLOME")
                        {
                            diplome_parent = guid_diplome_ok;

                            string forceguidfordiploma = "GUID:" + guid_diplome_ok;
                            document_nature_id = forceguidfordiploma;
                            rg = PhoenixServiceClient.Creedocument(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                            account_id, document_nature_id, diplome_parent, date_creation, isRequired, isAsked);

                            // stocke le binaire
                            rs = PhoenixServiceClient.StockeBinaireFichier(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                                guid_diplome_ok, document_name, extension_document_id, nature_document, binaryEncoded64String);
                            if (!rs.ExecutionOk)
                            {
                                // Log de l'erreur
                                string error = $"--> erreur lors de l'enregistrement du fichier diplome ";
                                LibLog.Log.EcrireLogError(error);
                                throw new PhoenixException(error);
                            }
                            else
                            {
                                LibLog.Log.EcrireLog($"création fichier diplome compte : {account_id}, nature : {document_nature_id}, nom : {document_name}, taille : {filesize}");
                            }
                        }
                        else
                        {
                            // autres documents on crée une entrée dans Account__Document on récupère un guid correspondant à cette création....
                            diplome_parent = guid_diplome_ok;
                            rg = PhoenixServiceClient.Creedocument(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                            account_id, document_nature_id, diplome_parent, date_creation, isRequired, isAsked);

                            if (rg.ExecutionOk)
                            {
                                // puis on stocke le binaire avec le guid récupéré
                                rs = PhoenixServiceClient.StockeBinaireFichier(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                                rg.Guid, document_name, extension_document_id, nature_document, binaryEncoded64String);
                                if (!rs.ExecutionOk)
                                {
                                    // Log de l'erreur
                                    string error = $"--> erreur lors de l'enregistrement du fichier ";
                                    LibLog.Log.EcrireLogError(error);
                                    throw new PhoenixException(error);
                                }
                                else
                                {
                                    LibLog.Log.EcrireLog($"création fichier  compte : {account_id}, nature : {document_nature_id}, nom : {document_name}, taille : {filesize}");
                                }
                            }
                            else
                            {
                                // Log de l'erreur
                                string error = $"--> erreur lors de la création du document ";
                                LibLog.Log.EcrireLogError(error);
                                throw new PhoenixException(error);
                            }

                        }

                        documentTable.Rows[rowindex]["Piecej"] = document_name;
                        Session[Sv.ph_Document_table.ToString()] = documentTable;

                        // *** blod déplacé sur => protected void Page_PreRender(object sender, EventArgs e)
                        // GridView1.DataBind();
                        // inject_FileUpload();
                        // updatecoches();
                        // ***
                    }
                }
                // signaler fichier top volumineux
                else if (filesizetoHigh || !extension_ok)
                {
                    string msg_file_invalid = "";
                    if (filesizetoHigh)
                    {
                        msg_file_invalid = GetLocalResourceObject("warning_message_fichier_volumineux").ToString();
                        msg_file_invalid = msg_file_invalid.Replace("_SIZE_", fileUploadMaxSize);
                    }
                    if (!extension_ok)
                    {
                        string msg_fileext_invalid = GetLocalResourceObject("warning_message_fichier_extension_invalide").ToString();
                        String liste = "";
                        foreach (ExtFic efi in GlobalClass.liste_extfic)
                            liste += efi.Name + " ";
                        msg_fileext_invalid = msg_fileext_invalid.Replace("_EXT_", liste);
                        if (msg_file_invalid == "")
                            msg_file_invalid = msg_fileext_invalid;
                        else
                            msg_file_invalid += " , " + msg_fileext_invalid;

                    }
                    this.AlertClientViaScriptManager(msg_file_invalid);
                }
            }
            catch (PhoenixException phex)
            {

                int accountid = 0;
                if (Session[Sv.ph_Account.ToString()] != null)
                    accountid = (int)Session[Sv.ph_Account.ToString()];

                string error = $"--> erreur lors de l'upload des docs : {phex.Message}; account_id : {accountid}";
                LibLog.Log.EcrireLogError(error);
                _info_traitement = phex.Message;
                GlobalClass.GereExceptionGlobale(phex, MethodBase.GetCurrentMethod().Name);
            }

            return (bin, document_name, _info_traitement);

        }

        protected void Button_valid_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                preventflag.Value = "ok";

                int account_id = -1;
                if (Session[Sv.ph_Account.ToString()] != null)
                {
                    account_id = (int)Session[Sv.ph_Account.ToString()];
                    ResponseParametresRetour rpr = PhoenixServiceClient.ActionCompte(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                               "SET_ACCOUNT_TABLE", 1, "step_docs", DateTime.MinValue, account_id);
                }
                validdisable = true;
                Page_suivante();
            }
            else
            {
                this.UpdateVisibilityDetectAttack();
            }
        }

        protected void Page_suivante()
        {
            // => page Dossier_validation
            var page = (Page)HttpContext.Current.CurrentHandler;
            Session[Sv.ph_PreviousPage_WhoSentRedirect.ToString()] = Path.GetFileNameWithoutExtension(page.AppRelativeVirtualPath);
            Response.Redirect($"~/{GlobalClass.dico_Pages[Ps.Dossier_validation]}.aspx", false);
        }

        protected void HideButton1_Click(object sender, EventArgs e)
        {
            ProcessFileUpload(0);
        }

        protected void HideButton2_Click(object sender, EventArgs e)
        {
            ProcessFileUpload(1);
        }

        protected void HideButton3_Click(object sender, EventArgs e)
        {
            ProcessFileUpload(2);
        }

        protected void HideButton4_Click(object sender, EventArgs e)
        {
            ProcessFileUpload(3);
        }

        protected void HideButton5_Click(object sender, EventArgs e)
        {
            ProcessFileUpload(4);
        }

        protected void HideButton6_Click(object sender, EventArgs e)
        {
            ProcessFileUpload(5);
        }

        protected void HideButton7_Click(object sender, EventArgs e)
        {
            ProcessFileUpload(6);
        }

        protected void HideButton8_Click(object sender, EventArgs e)
        {
            ProcessFileUpload(7);
        }

        protected void HideButton9_Click(object sender, EventArgs e)
        {
            ProcessFileUpload(8);
        }

        protected void HideButton10_Click(object sender, EventArgs e)
        {
            ProcessFileUpload(9);
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

        protected void hiddenButtonOkforModal_Click(object sender, EventArgs e)
        {

        }

        // **AJ suppression compte via modal
        protected void ButscriptModal_Click(object sender, EventArgs e)
        {
            if (Session[Sv.ph_Account.ToString()] != null)
            {
                int account_td = (int)Session[Sv.ph_Account.ToString()];
                string scr = PhoenixServiceClient.SupprimeCompte(GlobalClass.ph_serv_login, GlobalClass.ph_serv_pwd, GlobalClass.currenttoken,
                            "passe", account_td);
                if (scr.ToLower().StartsWith("success"))
                    info_bandeau_abandonner.Text = GetLocalResourceObject("message_bandeau_suppression_reussie").ToString();
                else
                {
                    info_bandeau_abandonner.Text = GetLocalResourceObject("modal_info_echecsuppressiondonnees").ToString();
                    // Log de l'erreur
                    string error = $"--> échec lors de la suppression de données ";
                    LibLog.Log.EcrireLogError(error);
                }
            }

            // efface le bandeau info
            //Panel_validation.Visible = false;

            // boutons bas de page
            b_abandon.Visible = false;
            b_accueil.Visible = true;

        }

        // bouton accueil du bandeau abandonner la procedure
        protected void B_accueil_ServerClick(object sender, EventArgs e)
        {
            var page = (Page)HttpContext.Current.CurrentHandler;
            Session[Sv.ph_PreviousPage_WhoSentRedirect.ToString()] = Path.GetFileNameWithoutExtension(page.AppRelativeVirtualPath);
            Response.Redirect($"~/{GlobalClass.dico_Pages[Ps.Accueil]}.aspx", false);
            Session.Abandon();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            /*
             *      grille_ligneXcolY dans fichier resx : BASE INDEX 1
             *      DataTable image                                     DataGrid
                    new DataColumn("Pieceaj", typeof(string)),          MAPPE SUR DATAGRID colonne 1 (index base1)  grille_ligneXcol1
                    new DataColumn("NatureDoc", typeof(string)),        NON MAPPE
                    new DataColumn("Precisions", typeof(string)),       MAPPE SUR DATAGRID colonne 2 (index base1)  grille_ligneXcol3
                    new DataColumn("Obligatoire", typeof(string)),      MAPPE SUR DATAGRID colonne 3 (index base1)  grille_ligneXcol4
                    new DataColumn("Piecej", typeof(string)),
                    new DataColumn("docName", typeof(string)),
                    new DataColumn("docPath", typeof(string))
            */

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //  e.Row.RowIndex (base 0) = 0  correspond à la première ligne de DONNEES de la datatable liée
                //    la première ligne de la DATAGRID en visuel EST L'ENTETE 
                if (e.Row.RowIndex >= 0)
                {
                    string ress_string = $"grille_ligne{e.Row.RowIndex + 1}col";

                    // // ************** CELLULE COLONNE 1 (index base 1) (pièce à joindre) **************
                    ph1 = new PlaceHolder();
                    Literal li = new Literal();
                    li.Mode = LiteralMode.PassThrough;
                    li.Text = GetLocalResourceObject(ress_string + "1").ToString();
                    ph1.Controls.Add(li);

                    if (e.Row.RowIndex == 1 || e.Row.RowIndex == 4)
                    {
                        string attvalue = "modalshow_warning1()";
                        if (e.Row.RowIndex == 4)
                            attvalue = "modalshow_warning2()";
                        Label la = new Label();
                        la.Attributes.Add("onclick", attvalue);
                        la.Text = " * ";
                        ph1.Controls.Add(la);
                    }


                    e.Row.Cells[0].Controls.Add(ph1);

                    // ************** CELLULE COLONNE 2 (précisions) grille_ligneXcol3 **************
                    ph1 = new PlaceHolder();
                    if (e.Row.RowIndex != 0)
                    {
                        li = new Literal();
                        li.Mode = LiteralMode.PassThrough;
                        li.Text = GetLocalResourceObject(ress_string + "3").ToString();
                        ph1.Controls.Add(li);
                    }
                    else // ligne 0 une icone est inséré
                    {
                        string res = GetLocalResourceObject(ress_string + "3").ToString();
                        string[] rest = res.Split(new string[] { "_ICONE_" }, StringSplitOptions.RemoveEmptyEntries);
                        // 1er bloc de texte avant icone
                        li = new Literal();
                        li.Mode = LiteralMode.PassThrough;
                        li.Text = rest[0];
                        ph1.Controls.Add(li);

                        // insère icone
                        Image img1 = new Image();
                        img1.ImageUrl = "~/Images/Attention 450x450px.png";
                        img1.Attributes.Add("style", "height: 100%; width: 100%; object-fit: contain");
                        string altatt = GetLocalResourceObject("iconeattention.Alt").ToString();
                        img1.Attributes.Add("alt", altatt);
                        ph1.Controls.Add(new LiteralControl("<span style=\"display: inline-block; height: 3em;\">"));
                        ph1.Controls.Add(img1);
                        ph1.Controls.Add(new LiteralControl("</span>"));

                        // 2eme bloc de texte après icone
                        li = new Literal();
                        li.Mode = LiteralMode.PassThrough;
                        li.Text = rest[1];
                        ph1.Controls.Add(li);
                    }

                    e.Row.Cells[1].Controls.Add(ph1);

                    // ************** CELLULE COLONNE 3 (Obligatoire) grille_ligneXcol4 **************
                    ph1 = new PlaceHolder();
                    li = new Literal();
                    li.Mode = LiteralMode.PassThrough;

                    // selon statut réfugié ou non, le statut obligatoire change
                    if (e.Row.RowIndex >= 0)
                    {
                        doc_obligatoire = Docobligatoire(refugie, autre_langue, e.Row.RowIndex);
                        if (doc_obligatoire)
                            li.Text = GetLocalResourceObject("docobligatoire_oui").ToString();
                        else
                            li.Text = GetLocalResourceObject("docobligatoire_non").ToString();
                    }
                    // ******** MASQUE LA COLONNE SI PAS REFUGIE ******** 
                    if (e.Row.RowIndex == 1 && !refugie)
                        e.Row.Visible = false;

                    ph1.Controls.Add(li);


                    e.Row.Cells[2].Controls.Add(ph1);
                }



            }
        }
        private bool Docobligatoire(bool refugie, bool autre_langue, int type_piece)
        {


            /*  Intitulé                    ligne table Nature_doc BDD (1-10)     ligne tableau site web (0-9)=type_piece
              *  COMPLEMENT 1                1                                       6
                COMPLEMENT 2                2                                       7        
                COMPLEMENT 3                3                                       8
                COMPLEMENT 4                4                                       9        
                DIPLOME                     5                                       2
                DIPLOME_TRADUCTION          6                                       3
                DUREE_ETUDES                7                                       4
                DUREE_ETUDES_TRADUCTION     8                                       5
                PI                          9                                       0
                REFUGIE                     10                                      1
             * 
             */

            bool result = false;
            switch (type_piece)
            {
                case 0: // PIECE IDENTITE
                case 2: // DIPLOME
                case 4: // JUSTIFICATIF DE DUREE ETUDES
                    result = true;
                    break;

                case 1: // JUSTIFICATIF DE REFUGIE
                    if (refugie)
                        result = true;
                    else
                        result = false;
                    break;

                case 3: // TRADUCTION DIPLOME
                case 5: // TRADUCTION DU JUSTIFICATIF DE DUREE ETUDES 
                    if (autre_langue)
                        result = true;
                    else
                        result = false;
                    break;


                case 6: // DOCUMENT COMPLEMENT 1
                case 7: // DOCUMENT COMPLEMENT 2
                case 8: // DOCUMENT COMPLEMENT 3
                case 9: // DOCUMENT COMPLEMENT 4
                    result = false;
                    break;

                default:
                    result = false;
                    break;
            }
            return result;
        }
    }
}

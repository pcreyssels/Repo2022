<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebFormFupdPho.aspx.cs" Inherits="WebApplication5.WebFormFupdPho" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <%--  pas d'update panel dans cette page à acause de la gridview --%>
    <%-- FileUpload control requires a full postback. https://www.aspsnippets.com/Articles/Using-FileUpload-Control-inside-ASP.Net-AJAX-UpdatePanel-Control.aspx  --%>

    <asp:HiddenField runat="server" ID="preventflag" ClientIDMode="Static" ViewStateMode="Enabled" />

    <h3>
        <asp:Label ID="LabelEncartDocument" runat="server" meta:resourcekey="LabelEncartDocument" Text="_FICHE DOCUMENTS A FOURNIR"></asp:Label>
    </h3>

    <div class="container">
        <%-- ENCART EMAIL DOSSIER DATE LIMITE --%>
        <%-- grid --%>
        <div class="panel panel-default">
            <h1 class="panel-title libellePanel">
                <asp:Literal runat="server" Text="_votre dossier :" meta:resourcekey="LabelVotreDossier" />
            </h1>
            <div class="panel-body">
                <%-- labels intitules --%>
                <div class="row">
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label AssociatedControlID="Label_email" runat="server" meta:resourcekey="IntituleEmail" Text="_email" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label AssociatedControlID="Label_nodossier" runat="server" meta:resourcekey="IntituleDossier" Text="_dossier" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label AssociatedControlID="Label_datelim" runat="server" meta:resourcekey="IntituleDatelimite" Text="_date limite" />
                    </div>
                </div>
                <%-- 2è  ligne avec données --%>
                <div class="row">
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_email" runat="server" Text="------" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_nodossier" runat="server" Text="------" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_datelim" runat="server" Text="------" />
                        <span runat="server" style="display: inline-block; height: 2em;"
                            data-toggle="tooltip"
                            title="__vous avez"
                            meta:resourcekey="iconinfodatelimite"
                            data-placement="bottom"
                            data-html="true">
                            <img runat="server" id="Img1" meta:resourcekey="iconeinfo"
                                style="height: 100%; width: 100%; object-fit: contain"
                                src="~/Images/icone information.png"
                                alt="_info" />
                        </span>
                    </div>
                </div>
            </div>
        </div>


        <%-- ENCART INFO CERCLE EN ROUGE --%>
        <div style="display: inline-grid; grid-template-columns: auto fit-content(); align-items: center" class="RedRoundedBorderedText">
            <span runat="server" style="display: inline-block; height: 3em;">
                <img runat="server" id="Img6" meta:resourcekey="iconedoubleexclamation"
                    style="height: 100%; width: 100%; object-fit: contain"
                    src="~/Images/Exclamation 500x500 px.png"
                    alt="_double exclamation bleu" />
            </span>
            <div runat="server" meta:resourcekey="EncartInfos2"
                style="grid-row: 1 / 2; grid-column: 2 / 3; width: fit-content">
            </div>
        </div>

        <hr />

        <%-- div d'ancre Table # --%>
        <div id="TABLE123"></div>


        <%-- GRIDVIEW role="presentation" RGAA 5.3.1 --%>
        <asp:GridView ID="GridView1" runat="server"
            role="presentation"
            Font-Size="Small"
            HeaderStyle-BackColor="LightGray"
            EnableViewState="true"
            ShowHeader="true"
            ShowFooter="false"
            DataKeyNames="Pieceaj"
            AutoGenerateColumns="false"
            AutoGenerateSelectButton="false"
            SelectedRowStyle-Font-Bold="true"
            SelectedRowStyle-BackColor="LightBlue"
            CssClass="spacebefaft"
            OnLoad="GridView1_Load"
            OnInit="GridView1_Init"
            OnRowDataBound="GridView1_RowDataBound"
            AlternatingRowStyle-BackColor="221, 239, 255">

            <Columns>
                <asp:BoundField DataField="Pieceaj" meta:resourcekey="gridcolumn_Pieceaj" HeaderText="_Pièce à joindre" />
                <asp:BoundField DataField="Precisions" meta:resourcekey="gridcolumn_Precisions" HeaderText="_Précisions" />
                <asp:BoundField DataField="Obligatoire" meta:resourcekey="gridcolumn_Obligatoire" HeaderText="_Obligatoire" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="Piecej" meta:resourcekey="gridcolumn_Piecej" HeaderText="_Pièce jointe" />

                <%-- boutons upload --%>
                <asp:TemplateField>
                    <ItemTemplate>
                    </ItemTemplate>
                </asp:TemplateField>

                <%-- coche --%>
                <asp:ImageField />

            </Columns>

        </asp:GridView>



        <hr />

        <%-- BOUTONS VALIDER FICHE ET ABANDONNER PROCEDURE--%>
        <div style="display: grid; grid-template-columns: 4fr 4fr 4fr; border: 1px solid lightgray; gap: 1em; margin: 20px; padding: 30px">
            <%-- 1er ligne --%>
            <div>
                <%-- BOUTON VALIDATION --%>
                <asp:Button runat="server" ID="button_valid" CssClass="btn-sitpho2 "
                    Text="_valider" meta:resourcekey="BoutonValider"
                    OnClick="Button_valid_Click"
                    OnClientClick="bclick()"
                    ValidationGroup="validDiplomeGroup" CausesValidation="true" />
            </div>
            <div>
                <%-- BOUTON ANNULATION déclenche le modal --%>
                <button runat="server" id="b_abandon" type="button" class="btn-sitpho2 btn-sitpho2-red" data-toggle="modal" data-target="#modal_annulation">
                    <asp:Literal runat="server" Text="_bouton_trigmodal" meta:resourcekey="modal_button_trigmodal" />
                </button>
            </div>
            <div>
                &nbsp
            </div>
        </div>

        <%-- ZONE INFO--%>
        <div style="display: grid; grid-template-columns: 1fr; border: none; gap: 1em; margin: 20px; padding: 30px">
            <%-- 1er ligne --%>
            <div>
                <%-- message info --%>
                <asp:Label runat="server" ID="labelinfo" CssClass="label-info" Visible="false" Text=""></asp:Label>
            </div>

            <%-- 2er ligne --%>
            <div>
                <%-- bouton de retour à l'accueil --%>
                <asp:Button runat="server" CausesValidation="false" ID="b_accueil" CssClass="btn-sitpho2"
                    OnClick="B_accueil_ServerClick" Text="_bouton_accueil" meta:resourcekey="modal_button_accueil" />
                <div>&nbsp</div>
                <%-- bandeau informatif --%>
                <asp:Literal runat="server" Text="" ID="info_bandeau_abandonner" />
            </div>

        </div>


        <%-- MODAL WARNINGS  --%>
        <div class="modal fade" id="modal_warnings" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content modal-content-custom">

                    <div class="modal-body">
                        <div id="panelinfoactsec" style="display: inline-grid; grid-template-columns: auto auto; grid-template-rows: auto auto; align-items: center;">
                            <div style="grid-row: 2 / 3; grid-column: 2 / 3; text-align: right">
                                <%-- bouton fermeture --%>
                                <button type="button" class="btn btn-sitpho2" data-dismiss="modal">
                                    <span>OK</span>
                                </button>
                            </div>
                            <span runat="server" style="display: inline-block; height: 4em; grid-row: 1 / 2; grid-column: 1 / 2;">
                                <img runat="server" id="Img3" meta:resourcekey="iconeattention"
                                    style="height: 100%; width: 100%; object-fit: contain"
                                    src="~/Images/Attention 450x450px.png"
                                    alt="_attention rouge" />
                            </span>
                            <div style="grid-row: 1 / 2; grid-column: 2 / 3; max-width: 30vw">
                                <div runat="server" id="warning_message_1" meta:resourcekey="warning_message_1" />
                                <div runat="server" id="warning_message_2" meta:resourcekey="warning_message_2" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <%--       MODAL ABANDONNER LA PROCEDURE  --%>
        <%-- bouton (invisible) cliqué par le script de page la procédure clic traitera les informations envoyées depuis le choix du modal--%>
        <asp:Button ID="butscriptModal"
            CausesValidation="false"
            Style="display: none;"
            runat="server" ClientIDMode="Static"
            Text="BOUTON TEST"
            OnClick="ButscriptModal_Click" />
        <%-- modal --%>
        <div class="modal fade" id="modal_annulation" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <%-- bouton fermeture modal --%>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <%-- entête modal --%>
                        <h4 class="modal-title" id="modalLabel">
                            <asp:Literal runat="server" Text="_abandon procedure" meta:resourcekey="modal_header_abandon_procedure"></asp:Literal>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <%-- 1er ligne texte d'avertissement --%>
                            <div class="col col-sm-12">
                                <span>
                                    <asp:Literal ID="modal_info_abandon" runat="server" meta:resourcekey="modal_info_abandon" Text="_En abandonnant"></asp:Literal>
                                </span>
                            </div>
                        </div>
                        <%-- 2er ligne boutons choix --%>
                        <div style="display: grid; grid-template-columns: 4fr 2fr 4fr; align-items: center">
                            <button type="button" class="btn-sitpho2" data-toggle="modal" data-dismiss="modal" onclick="setmodalinfo()">
                                <asp:Literal runat="server" Text="_bouton_trigmodal1" meta:resourcekey="modal_button_ok" />
                            </button>
                            <div>&nbsp </div>
                            <button type="button" class="btn-sitpho2 btn-sitpho2-gray" data-toggle="modal" data-dismiss="modal" onclick="setmodalinfo2()">
                                <asp:Literal runat="server" Text="_bouton_trigmodal2" meta:resourcekey="modal_button_cancel" />
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>

        // ****** prévention navigation invalide ******
        const beforeUnloadHandler = (event) => {
            // Recommended
            event.preventDefault();

            // Included for legacy support, e.g. Chrome/Edge < 119
            event.returnValue = true;
        };

        // bouton valider enlève le popup preventdefault
        function bclick() {
            // console.log('remove beforeunload ');
            var v0 = document.getElementById('preventflag').getAttribute('value');

            // Page_ClientValidate() ou Page_IsValid pas de validateur asp dans cette page
            // if (v0 == 'ok' || Page_IsValid) {
            if (v0 == 'ok') {
                console.log('rem beforeunload ');
                window.removeEventListener("beforeunload", beforeUnloadHandler);
            }
        }

        $(function () {
            // script pour les popover 
            $('[data-toggle="popover"]').popover();
            $('[data-toggle="tooltip"]').tooltip();
            // locke navigation par défaut
            var v1 = document.getElementById('preventflag').getAttribute('value');
            if (v1 == 'nok') {
                console.log('add beforeunload ');
                window.addEventListener("beforeunload", beforeUnloadHandler);
            }
        })

        function releaseprevent() {
            console.log('rem beforeunload ');
            window.removeEventListener("beforeunload", beforeUnloadHandler);
        }

        function activeprevent() {
            console.log('add beforeunload ');
            window.addEventListener("beforeunload", beforeUnloadHandler);
        }

        // simule un click de bouton pour renvoyer au serveur
        function setmodalinfo() {
            var buttonctrl = document.getElementById('<%=butscriptModal.ClientID %>');
            buttonctrl.click();
        }
        function setmodalinfo2() {
        }


        function modalshow() {
            $('#modal_infook').modal('show');
        }

        function modalshow_warning1() {
            var wmr = document.getElementById('<%=warning_message_1.ClientID%>');
        wmr.style.display = "none";
        var wmr2 = document.getElementById('<%=warning_message_2.ClientID%>');
            wmr2.style.display = "initial";
            $('#modal_warnings').modal('show');
        }

        function modalshow_warning2() {
            var wmr = document.getElementById('<%=warning_message_1.ClientID%>');
        wmr.style.display = "initial";
        var wmr2 = document.getElementById('<%=warning_message_2.ClientID%>');
            wmr2.style.display = "none";
            $('#modal_warnings').modal('show');
        }



    </script>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebApplication3.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:CheckBox ID="cb1" AutoPostBack="true" runat="server" Text="click" OnCheckedChanged="cb1_CheckedChanged" />

    <hr style="height: 2px; border-width: 0; background-color: orangered" />

    <button type="button" onclick="showhideinfo()">
        <asp:Literal runat="server" Text="CLICK PANEL" />
    </button>


    <%-- <h3>CSS container queries </h3>

    <div class="post" style="border: 2px solid blue; width: 600px; height: 300px">
        <div class="card" style="margin-top: 10cqh; border: 2px solid purple;">
            <h2 style="border: 2px solid green">Card title</h2>
            <p style="border: 2px solid red">Card content</p>
        </div>
    </div>


    <h3>fin CSS container queries </h3>


    <h3>CSS container queries 2 </h3>

    <div  style="container-type: size; border: 2px solid blue; width: 600px; height: 300px">
        <div class="card" style="margin-top: 20cqh; border: 2px solid purple;">
            <h2 style="border: 2px solid green">Card title</h2>
            <p style="border: 2px solid red">Card content</p>
        </div>
    </div>


    <h3>fin CSS container queries 2 </h3>--%>

    <h3>CHECKBOX</h3>
    <asp:CheckBox runat="server" CssClass="zone-label" Text=" poursuites études " ID="checkbox_1" />
    <h3fin>CHECKBOX</h3fin>

    <%-- DEBUT GRILLE --%>
    <div style="display: grid; grid-template-columns: 1fr 1fr; grid-template-rows: repeat(8,auto); border: 3px solid red; gap: 1em; margin: 20px; padding: 30px">

        <%-- 1er ligne ATTESTATION DEMANDEE--%>
        <div>
            <asp:Label runat="server" CssClass="etoile-rouge" meta:resourcekey="label_etoile" Text="_*" />
            <asp:Label runat="server" CssClass="zone-label" meta:resourcekey="label_attestation_demandee" Text="_label_attestation_demandee" />
        </div>

        <asp:DropDownList ID="ColorList"
            AutoPostBack="False"
            runat="server">
            <asp:ListItem Selected="True" Value="AC">Attestation de comparabilité (diplôme validé)</asp:ListItem>
            <asp:ListItem Value="ARPE"> Attestation de reconnaissance de période d’études (diplôme non finalisé) </asp:ListItem>
            <asp:ListItem Value="ACMA"> Attestation pour la chambre des métiers et de l’artisanat (CMA) </asp:ListItem>
        </asp:DropDownList>

        <%-- 2eme ligne INTERLOCUTEUR --%>
        <div>
            <asp:Label runat="server" CssClass="etoile-rouge" meta:resourcekey="label_etoile" Text="_*" />
            <asp:Label runat="server" CssClass="zone-label" meta:resourcekey="label_interlocuteur" Text="_interlocuteur" />
            <br />
            <asp:Label runat="server" CssClass="zone-label zone-label-small" meta:resourcekey="label_interlocuteur_mention" Text="_interlocuteur_mention" />
        </div>

        <div style="container-type: size;">
            <div style="margin-top: 20cqh;">
                <asp:TextBox ID="TextBox_interlocuteur" runat="server"
                    CssClass="form-control formulaire-control"
                    ValidationGroup="All"
                    MaxLength="50">
                </asp:TextBox>
                <asp:RegularExpressionValidator ID="regvCarateresInterdits" runat="server"
                    ControlToValidate="TextBox_interlocuteur" Display="Dynamic" meta:resourcekey="regvCarateresInterdits"
                    CssClass="formulaire-erreur" ValidationGroup="All" />
            </div>
        </div>

        <%-- 3eme ligne POURSUITE ETUDES --%>
        <div style="grid-row: 3 / 4; grid-column: 1 / 3;">
            <div style="display: grid; grid-template-columns: 1fr 1fr; grid-template-rows: auto auto">
                <div style="grid-row: 1 / 2; grid-column: 1 / 2;">
                    <asp:CheckBox CssClass="zone-label" runat="server" ID="checkbox_poursuiteetudes" ValidationGroup="All"
                        meta:resourcekey="libelle_checkbox_pef" Text="_checkbox_pef" />
                </div>
                <div style="grid-row: 2 / 3; grid-column: 1 / 2;">
                    <asp:Label runat="server" CssClass="zone-label zone-label-mentionbleue" meta:resourcekey="libelle_formation_envisagee" Text="_formation_envisagee" />
                </div>
                <div style="grid-row: 2 / 3; grid-column: 2 / 3;">
                    <asp:TextBox ID="TextBox_formationenvisagee" runat="server"
                        CssClass="form-control formulaire-control inlinetextbox"
                        ValidationGroup="All">
                    </asp:TextBox>
                    <asp:CustomValidator runat="server" ID="cusv_TextBox_formationenvisagee"
                        OnServerValidate="Cusv_TextBox_formationenvisagee_ServerValidate"
                        ControlToValidate="TextBox_formationenvisagee"
                        ValidateEmptyText="true"
                        CssClass="formulaire-erreur"
                        meta:resourcekey="reqvGenerique"
                        ErrorMessage="_error"
                        ValidationGroup="All" />
                </div>
            </div>
        </div>

        <%-- 4eme ligne RECHERCHE D'EMPLOI --%>
        <div style="grid-row: 4 / 5; grid-column: 1 / 3;">
            <div style="display: grid; grid-template-columns: 1fr 1fr; grid-template-rows: repeat(3,auto)">
                <div style="grid-row: 1 / 2; grid-column: 1 / 2;">
                    <asp:CheckBox CssClass="zone-label" runat="server" meta:resourcekey="libelle_checkbox_rem"
                        ID="checkbox_rechercheemploi" ValidationGroup="All"
                        Text="_checkbox_rem" />
                </div>
                <div style="grid-row: 2 / 3; grid-column: 1 / 2;">
                    <asp:Label runat="server" CssClass="zone-label zone-label-mentionbleue" meta:resourcekey="libelle_profession_envisagee" Text="_formation_envisagee" />
                </div>
                <div style="grid-row: 2 / 3; grid-column: 2 / 3;">
                    <asp:TextBox ID="TextBox_professionenvisagee" runat="server"
                        CssClass="form-control formulaire-control inlinetextbox" Text="" />
                    <asp:CustomValidator runat="server" ID="cusv_TextBox_professionenvisagee"
                        OnServerValidate="Cusv_TextBox_professionenvisagee_ServerValidate"
                        ControlToValidate="TextBox_professionenvisagee"
                        CssClass="formulaire-erreur"
                        ValidateEmptyText="true"
                        meta:resourcekey="reqvGenerique"
                        ErrorMessage="_error"
                        ValidationGroup="All" />
                </div>
                <div style="grid-row: 3 / 4; grid-column: 1 / 2;">
                    <asp:Label runat="server" meta:resourcekey="libelle_mention_rech_emploi" CssClass="zone-label zone-label-small" Text="_verifiez"></asp:Label>
                </div>
            </div>
        </div>

        <%-- 5eme ligne INSCRIPTION A UN CONCOURS --%>
        <div style="grid-row: 5 / 6; grid-column: 1 / 3;">
            <div style="display: grid; grid-template-columns: 1fr 1fr; grid-template-rows: auto auto">
                <div style="grid-row: 1 / 2; grid-column: 1 / 2;">
                    <asp:CheckBox CssClass="zone-label" runat="server" ID="checkbox_inscriptionconcours" ValidationGroup="All"
                        meta:resourcekey="libelle_checkbox_inscon" Text="_checkbox_inscon" />
                </div>
                <div style="grid-row: 2 / 3; grid-column: 1 / 2;">
                    <asp:Label runat="server" CssClass="zone-label zone-label-mentionbleue" meta:resourcekey="libelle_concours_envisage" Text="_concours_envisagee" />
                </div>
                <div style="grid-row: 2 / 3; grid-column: 2 / 3;">
                    <asp:TextBox ID="TextBox_concoursenvisage" CssClass="form-control formulaire-control inlinetextbox" runat="server" Text="" />
                    <asp:CustomValidator runat="server" ID="cusv_TextBox_concoursenvisage"
                        OnServerValidate="Cusv_TextBox_concoursenvisage_ServerValidate"
                        ControlToValidate="TextBox_concoursenvisage"
                        CssClass="formulaire-erreur"
                        ValidateEmptyText="true"
                        meta:resourcekey="reqvGenerique"
                        ErrorMessage="_error"
                        ValidationGroup="All" />
                </div>
            </div>
        </div>

        <%-- 6eme ligne DEMANDE NATURALISATION --%>
        <div style="grid-row: 6 / 7; grid-column: 1 / 2;">
            <asp:CheckBox CssClass="zone-label" ID="checkbox_demnaturalisation" ClientIDMode="Static"
                runat="server" meta:resourcekey="libelle_checkbox_demnat" Text="_checkbox_demnat" />
            <br />
            <%-- Panel info apparait lorsque checkbox cochée --%>
            <div id="panelinfonatu" style="display: inline-grid; grid-template-columns: auto auto; grid-template-rows: auto auto; align-items: center;"
                class="lightbluebordered">
                <div style="grid-row: 2 / 3; grid-column: 2 / 3; text-align: right">
                    <button type="button" class="btn-sitpho2" onclick="hideinfonatu()">OK</button>
                </div>
                <span runat="server" style="display: inline-block; height: 4em; grid-row: 1 / 2; grid-column: 1 / 2;">
                    <img runat="server" id="Img2"
                        style="height: 100%; width: 100%; object-fit: contain"
                        src="~/Images/Attention 512x512px.png"
                        alt="attention" />
                </span>
                <div style="grid-row: 1 / 2; grid-column: 2 / 3; max-width: 30vw">
                    <div runat="server" meta:resourcekey="panelinfonatu" />
                </div>
            </div>

        </div>

        <%-- 7eme ligne EXERCICE ACT PRIVEE SECURITE --%>
        <div style="grid-row: 7 / 8; grid-column: 1 / 2;">
            <asp:CheckBox CssClass="zone-label" ID="checkbox_activitesecurite" ClientIDMode="Static"
                runat="server" meta:resourcekey="libelle_checkbox_eaps" Text="_checkbox_eaps" />
            <br />
            <%-- Panel info apparait lorsque checkbox cochée --%>
            <div id="panelinfoactsec" style="display: inline-grid; grid-template-columns: auto auto; grid-template-rows: auto auto; align-items: center;"
                class="lightbluebordered">
                <div style="grid-row: 2 / 3; grid-column: 2 / 3; text-align: right">
                    <button type="button" class="btn-sitpho2" onclick="hideinfoactsec()">OK</button>
                </div>
                <span runat="server" style="display: inline-block; height: 4em; grid-row: 1 / 2; grid-column: 1 / 2;">
                    <img runat="server" id="Img3"
                        style="height: 100%; width: 100%; object-fit: contain"
                        src="~/Images/Attention 512x512px.png"
                        alt="attention" />
                </span>
                <div style="grid-row: 1 / 2; grid-column: 2 / 3; max-width: 30vw">
                    <div runat="server" meta:resourcekey="panelinfoactsec" />
                </div>
            </div>
        </div>

        <%-- 8eme ligne DEMANDE A TITRE PERSONNEL --%>
        <div style="grid-row: 8 / 9; grid-column: 1 / 2;">
            <asp:CheckBox CssClass="zone-label" ID="checkbox_demtitreperso"
                runat="server" meta:resourcekey="libelle_checkbox_datp" Text="_checkbox_datp" />
        </div>


        <asp:Button runat="server" Text="VALID" ValidationGroup="All" CausesValidation="true" />
        <%--<div style="display: flex; align-items: center">
            <asp:TextBox CssClass="form-control" runat="server" Text="Interlocuteur"></asp:TextBox>
        </div>--%>

        <%--<div style="grid-row: 3 / 4; grid-column: 2 / 3; border: 2px solid red;">
            <asp:TextBox CssClass="form-control" runat="server" Text="Interlocuteur"></asp:TextBox>
            <input type="text" style="margin-top: 0.5lh" />
        </div>--%>
    </div>

    <h3>FIN CHECKBOX H3 </h3>

    <%--<button style="color:red;"></button>--%>


    <asp:HiddenField runat="server" ID="hiddencheckbox" Value="0" ClientIDMode="Static" />
    <input type="checkbox" id="checkbox1"
        onclick="showhideinfo();"
        name="cbname1" value="Bike">
    <label for="cbname1">checkbox </label>
    <br>

    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />
    <asp:Button Text="valid button" ID="validbutton" runat="server" OnClick="validbutton_Click" />
    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />

    <asp:Panel ID="panelinfo2" ClientIDMode="Static" runat="server" Visible="true">
        <asp:Label runat="server" Text="Bonjour Label">

        </asp:Label>
        <button type="button" id="buttok" onclick="hideinfo()">OK</button>
    </asp:Panel>

    <hr style="height: 2px; border-width: 0; background-color: blue" />


    <div id="panelinfo" style="display: inline-grid; grid-template-columns: auto auto; grid-template-rows: auto auto; align-items: center;"
        class="lightbluebordered">
        <div style="grid-row: 2 / 3; grid-column: 2 / 3; text-align: right">
            <button type="button" class="btn-sitpho2" id="buttonok2" onclick="hideinfo()">OK</button>
        </div>
        <span runat="server" style="display: inline-block; height: 4em; grid-row: 1 / 2; grid-column: 1 / 2;">
            <img runat="server" id="Img6"
                style="height: 100%; width: 100%; object-fit: contain"
                src="~/Images/Attention 512x512px.png"
                alt="attention" />
        </span>
        <div style="grid-row: 1 / 2; grid-column: 2 / 3; max-width: 30vw">
            <div runat="server" meta:resourcekey="panelinfonatu" />
        </div>
    </div>

    <hr style="height: 2px; border-width: 0; background-color: blue" />

    <div runat="server" meta:resourcekey="panelinfonatuactsecu" style="aspect-ratio: 16 / 9; max-width: 30vw" />

    <hr style="height: 2px; border-width: 0; background-color: blue" />


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">

    <script>

 <%-- SCRIPT pour les popover --%>
        // fonction ms-ajax API évite la disparition des popovers apres un partial update
        // https://stackoverflow.com/questions/301473/rebinding-events-in-jquery-after-ajax-update-updatepanel
        function pageLoad(sender, args) {
            if (args.get_isPartialLoad()) {
                //Specific code for partial postbacks can go in here.
                //alert("Hello! I am an alert box!!");
                $(function () {
                    $('[data-toggle="popover"]').popover()
                    $('[data-toggle="tooltip"]').tooltip();
                })
                document.getElementById('panelinfo').style.display = "none";
                document.getElementById('panelinfonatu').style.display = "none";
                document.getElementById('panelinfoactsec').style.display = "none";
            }
        }

        $(function () {
            $('[data-toggle="popover"]').popover()
            $('[data-toggle="tooltip"]').tooltip();
            document.getElementById('panelinfo').style.display = "none";
            document.getElementById('panelinfonatu').style.display = "none";
            document.getElementById('panelinfoactsec').style.display = "none";
        })

        function showhideinfo() {
            // Get the checkbox
            var checkBox = document.getElementById('checkbox1');
            var hiddencheckbox = document.getElementById('hiddencheckbox');
            // Get the output text
            var text = document.getElementById('panelinfo');

            // If the checkbox is checked, display the output text
            if (checkBox.checked == true) {
                text.style.display = "inline-grid";
                hiddencheckbox.setAttribute("value", "1");
            } else {
                text.style.display = "none";
                hiddencheckbox.setAttribute("value", "0");
            }
        }

        function showhideinfo_1() {
            // Get the checkbox
            var checkBox = document.getElementById('checkbox_1');
            // Get the output text
            var text = document.getElementById('panelinfo');

            // If the checkbox is checked, display the output text
            if (checkBox.checked == true) {
                text.style.display = "inline-grid";
            } else {
                text.style.display = "none";
            }
        }

        function hideinfo() {
            document.getElementById('panelinfo').style.display = "none";
        }

        function showhideinfo2() {
            // Get the checkbox
            var checkBox = document.getElementById("checkbox1");
            // Get the output text
            var text = document.getElementById('panelinfo');

            // If the checkbox is checked, display the output text
            if (checkBox.checked == true) {
                text.style.display = "inline-grid";
            } else {
                text.style.display = "none";
            }
        }

        function showhideinfonatu() {
            // Get the checkbox
            var checkBox = document.getElementById('checkbox_demnaturalisation');
            // Get element
            var panel = document.getElementById('panelinfonatu');

            // If the checkbox is checked, display element
            if (checkBox.checked == true) {
                panel.style.display = "inline-grid";
            } else {
                panel.style.display = "none";
            }
        }

        function hideinfonatu() {
            document.getElementById('panelinfonatu').style.display = "none";
        }

        function showhideinfoactsec() {
            // Get the checkbox
            var checkBox = document.getElementById('<%=checkbox_activitesecurite.ClientID %>');
            // Get element
            var panel = document.getElementById('panelinfoactsec');

            // If the checkbox is checked, display element
            if (checkBox.checked == true) {
                panel.style.display = "inline-grid";
            } else {
                panel.style.display = "none";
            }
        }

        function hideinfoactsec() {
            document.getElementById('panelinfoactsec').style.display = "none";
        }

    </script>

</asp:Content>

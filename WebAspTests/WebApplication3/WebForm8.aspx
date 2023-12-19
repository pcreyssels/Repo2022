<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="WebApplication3.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- GRIDVIEW --%>
    <asp:GridView ID="GridView1" runat="server"
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
        OnRowDataBound="GridView1_RowDataBound"
        CssClass="spacebefaft"
        OnLoad="GridView1_Load"
        OnInit="GridView1_Init"
        AlternatingRowStyle-BackColor="221, 239, 255">

        <columns>
            <asp:BoundField DataField="Pieceaj" meta:resourcekey="gridcolumn_Pieceaj" HeaderText="_Pièce à joindre" />
            <asp:BoundField DataField="Precisions" meta:resourcekey="gridcolumn_Precisions" HeaderText="_Précisions" />
            <asp:BoundField DataField="Obligatoire" meta:resourcekey="gridcolumn_Obligatoire" HeaderText="_Obligatoire" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="Piecej" meta:resourcekey="gridcolumn_Piecej" HeaderText="_Pièce jointe" />

            <%-- boutons upload --%>
            <asp:TemplateField>
                <itemtemplate>
                </itemtemplate>
            </asp:TemplateField>

            <%-- coche --%>
            <asp:ImageField />

        </columns>

    </asp:GridView>

    <br />

    

    <span style="display: inline-block; height: 3em;">
        <img runat="server" style="height: 100%; width: 100%; object-fit: contain"
            src="~/Images/Attention 450x450px.png"
            alt="attention" />
    </span>
    <br />

    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />

    <asp:Literal runat="server" meta:resourcekey="HtmlText"></asp:Literal>

    <span>Copie lisible d'une pièce d'identité (carte d'identité, passeport, titre de séjour, récépissé ou <b>justificatif de réfugié ou assimilé).</b>
        <br />
        Visa, permis de conduire ou carte vitale <b>ne sont pas acceptés. Merci de fournir un justificatif de changement de nom, si nécessaire</b>.
    </span>

    <hr style="height: 2px; border-width: 0; background-color: lightgreen" />


    <button type="button" onclick="modalshow2()">CLICK MODAL SHOW</button>

    <label onclick="modalshow2()">Do you like cheese?</label>

    <hr style="height: 2px; border-width: 0; background-color: lightgreen" />

    <asp:Label ID="Label_datelim" runat="server" Text="_datelimite" />
    <span style="display: inline-block; height: 2em;">
        <img runat="server" id="Img1"
            style="height: 100%; width: 100%; object-fit: contain"
            src="~/Images/Attention 450x450px.png"
            alt="attention" />
    </span>
    <asp:Label ID="Label1" runat="server" Text="toto" />

    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />
    <div style="color: blue"></div>

    <asp:Button runat="server" Text="CLICK" ID="Button1" OnClick="Button1_Click" />

    <br />

    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>

    <br />

    <asp:Table CssClass="tab1" ID="Table1" ClientIDMode="Static" runat="server"
        CellPadding="10"
        GridLines="Both"
        HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell>
                Row 0, <b>Col 0</b>
                <asp:FileUpload ID="FileUpload1"
                    runat="server">
                </asp:FileUpload>
                <asp:Button ID="UploadButton"
                    Text="Upload file"
                    OnClick="UploadButton_Click"
                    runat="server"></asp:Button>
            </asp:TableCell>
            <asp:TableCell>
                Row 0, <i>Col 1</i>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Row 1, Col 0
                <asp:FileUpload ID="FileUpload2"
                    runat="server">
                </asp:FileUpload>
                <asp:Button ID="Button2"
                    Text="Upload file"
                    OnClick="UploadButton_Click"
                    runat="server"></asp:Button>
            </asp:TableCell>
            <asp:TableCell>
                Row 1, Col 1
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <br />

    <asp:Label ID="UploadStatusLabel" Text="_text_"
        runat="server"></asp:Label>

    <div>
        Dans le cadre d’une demande de naturalisation, merci de fournir un <b>document délivré par votre établissement de formation attestant que votre cursus a été suivi en français </b>. Seuls les diplômes de <b>niveau 3 minimum </b>dispensés uniquement en langue française et délivrés par un pays figurant sur Dans le cadre d’une demande d’exercice d’une activité de sécurité privée, merci de fournir un document délivré par votre établissement de formation attestant que votre cursus a été suivi en français. Seuls les diplômes de niveau 3 minimum dispensés uniquement en langue française et délivrés par un pays figurant sur la <a href="https://www.legifrance.gouv.fr/loda/id/JORFTEXT000041741098/">liste de l’arrêté du 12 mars 2020</a> peuvent bénéficier de la mention « cursus en français ».
« cursus en français ».
    </div>
    <br />
    <div>
        <%-- <asp:Table CssClass="tab1" ID="Table2" ClientIDMode="Static" runat="server"
            CellPadding="10"
            GridLines="Both"
            HorizontalAlign="Left">
            <asp:TableRow>
                <asp:TableCell>
               Row 0, Col 0
                </asp:TableCell>
                <asp:TableCell>
               Row 0, Col 1
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
               Row 1, Col 0
                </asp:TableCell>
                <asp:TableCell>
               Row 1, Col 1
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                Row 2, Col 0
                </asp:TableCell>
                <asp:TableCell>
                Row 2, Col 1
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>--%>
    </div>

    <%--  *********************************** --%>
    <br />
    <hr style="height: 2px; border-width: 0; background-color: lightcoral" />


    <asp:Button runat="server" ID="hib1" OnClick="hib1_Click" Style="display: none;" />

    <asp:Button ValidationGroup="valgroup1" runat="server" ID="B1"
        OnClientClick="modalshow();"
        OnClick="Button1_Click" Text="CLIQUER VALID" />

    <asp:Button runat="server" ID="ButtonProg1" ClientIDMode="Static"
        OnClientClick="modalshow();return false;"
        Text="CLIQUER VALID 2" />

    <asp:Button runat="server" ID="Button4"
        OnClick="Button4_Click"
        Text="HF0 SWITCH" />

    <br />
    <asp:Button runat="server" ID="Button3"
        OnClientClick="modalshow2();return false;"
        Text="MODAL WARNING 2" />
    <asp:Button runat="server" ID="Button5"
    OnClientClick="modalshow22();return false;"
    Text="MODAL WARNING 22" />
    <br />
    <%-- message embarqué dans hidden field --%>
    <asp:HiddenField runat="server" ClientIDMode="Static" ID="hf0" Value="Y" />
    <asp:HiddenField runat="server" ClientIDMode="Static" ID="hf1" Value="m1" meta:resourcekey="hf1" />
    <asp:HiddenField runat="server" ClientIDMode="Static" ID="hf2" Value="m2" meta:resourcekey="hf2" />


    <%-- MODAL WARNING 2 --%>
    <div class="modal fade" id="modal_warning2" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
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
                            <img runat="server" id="Img3"
                                style="height: 100%; width: 100%; object-fit: contain"
                                src="~/Images/Attention 450x450px.png"
                                alt="attention" />
                        </span>
                        <div style="grid-row: 1 / 2; grid-column: 2 / 3; max-width: 30vw">
                            <div runat="server" id="warning_message_1" meta:resourcekey="warning_message" />
                            <div runat="server" id="warning_message_2" meta:resourcekey="warning_message2" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <%-- MODAL INFO WARNINGS  --%>
    <asp:Button ID="hiddenButtonOkforModalWarning"
        CausesValidation="false"
        Style="display: none;"
        runat="server" ClientIDMode="Static"
        Text="_hidden_button"
        OnClick="hiddenButtonOkforModalWarning_Click" />
    <%-- modal --%>
    <div class="modal fade" id="modal_warning" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-content-custom">
                <div class="modal-header">
                    <%-- bouton fermeture modal --%>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div style="display: grid; grid-template-columns: auto 1fr auto; align-items: center">

                        <%-- 1 --%>
                        <div>&nbsp &nbsp</div>
                        <div>
                            <asp:Label runat="server" ID="warning_message" ClientIDMode="Static" Text="_warning_" meta:resourcekey="wm1" />
                            <asp:Label runat="server" ID="warning_message2" ClientIDMode="Static" Text="_warning2_" meta:resourcekey="wm2" />
                        </div>
                        <div>&nbsp &nbsp</div>

                        <%-- 2 --%>
                        <div>&nbsp &nbsp</div>
                        <div>&nbsp &nbsp</div>
                        <div>&nbsp &nbsp</div>

                        <%-- 3 --%>
                        <div>&nbsp &nbsp</div>
                        <div style="margin: auto">
                            <button type="button" class="btn btn-sitpho2" data-toggle="modal" data-dismiss="modal" onclick="okfrommodal()">
                                <asp:Literal runat="server" Text="OK" meta:resourcekey="button_ok" />
                            </button>
                        </div>
                        <div>&nbsp &nbsp</div>

                    </div>

                </div>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">

    <%-- SCRIPT pour les popover --%>
    <script>
        $(function () {
            $('[data-toggle="popover"]').popover();
            let i = 'toto'
            console.log('bonjour !!!!' + i)
        })

        function modalshow2() {
            var wmr = document.getElementById('<%=warning_message_1.ClientID%>');
            wmr.style.display = "none";
            var wmr2 = document.getElementById('<%=warning_message_2.ClientID%>');
            wmr2.style.display = "initial";
            $('#modal_warning2').modal('show');
        }

        function modalshow22() {
            var wmr = document.getElementById('<%=warning_message_1.ClientID%>');
            wmr.style.display = "initial";
            var wmr2 = document.getElementById('<%=warning_message_2.ClientID%>');
            wmr2.style.display = "none";
            $('#modal_warning2').modal('show');
        }

        function modalshow() {

            // récupère le hiddenfield pour commutation de message
            var f0 = document.getElementById('<%=hf0.ClientID %>');
            var v0 = f0.getAttribute('value');

            // récupère du champ information du modal
            var wmr = document.getElementById('<%=warning_message.ClientID %>');
            var wmr2 = document.getElementById('<%=warning_message2.ClientID %>');;

            // déclencheur procedure serveur via hidden button
            var progbutton = document.getElementById('<%=hib1.ClientID %>');

            if (v0.length == 2) {
                console.log('v0 = ' + v0);
                console.log('1E CHAR ' + v0.substr(0, 1));
                console.log('2E CHAR ' + v0.substr(1, 1));
                if (v0.substr(0, 1) == 'C') {
                    console.log(' C ');
                    if (v0.substr(1, 1) == 'X') {
                        wmr.style.display = "none";
                        wmr2.style.display = "initial";
                        console.log('CX !!!!');
                    }
                    else if (v0.substr(1, 1) == 'Y') {
                        wmr.style.display = "initial";
                        wmr2.style.display = "none";
                        console.log('CY !!!!');
                    }
                    $('#modal_warning').modal('show');
                }
                else {
                    console.log(' other');
                    progbutton.click();
                }
            }

        }

        function okfrommodal() {
        }


    </script>

</asp:Content>

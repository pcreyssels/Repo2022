<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication3.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%--   MODAL RECAPITULATIF  --%>


    <hr style="height: 2px; border-width: 0; background-color: lightgreen" />
    <asp:Literal runat="server" Text="_literal" meta:resourcekey="modal_recap_header"></asp:Literal>
    <hr style="height: 2px; border-width: 0; background-color: lightgreen" />

    <asp:Button ID="ButtonValidviaModal" Text="MODAL " runat="server" OnClick="ButtonValidviaModal_Click" />

    <hr style="height: 2px; border-width: 0; background-color: lightpink" />
    <asp:Button ID="Button1" Text="MODAL 2" runat="server" OnClientClick="modalshow();return false;" />

    <hr style="height: 2px; border-width: 0; background-color: lightpink" />
    <asp:Button ID="Button2" Text="MODAL 3" runat="server" OnClientClick="modal2show();return false;" />

    <%--<asp:Button ID="Button2" Text="MODAL 2" runat="server" OnClientClick="modalshow();" />--%>

    <hr style="height: 2px; border-width: 0; background-color: lightblue" />

    <%-- MODAL --%>
    <asp:Button ID="hiddenButton1forModal"
        CausesValidation="false"
        Style="display: none;"
        runat="server" ClientIDMode="Static"
        Text="_hidden_button"
        OnClick="hiddenButton1forModal_okclick" />
    <asp:Button ID="hiddenButton2forModal"
        CausesValidation="false"
        Style="display: none;"
        runat="server" ClientIDMode="Static"
        Text="_hidden_button"
        OnClick="hiddenButton2forModal_cancelclick" />

    <%-- modal --%>
    <div class="modal fade" id="modal_recap" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-content-custom">
                <div class="modal-header">
                    <%-- bouton fermeture modal --%>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <%-- entête modal --%>
                    <div class="modal-title" id="modalrecap_Label">
                        <div style="display: grid; grid-template-columns: auto auto 1fr; align-items: center">
                            <div style="height: 4em">
                                <img runat="server" id="Img1"
                                    style="width: 100%; height: 100%"
                                    src="~/Images/Attention.png"
                                    alt="attention" />
                            </div>
                            <div>&nbsp</div>
                            <div>
                                <asp:Literal runat="server" Text="_entete_recap" meta:resourcekey="modal_recap_header"></asp:Literal>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-body">
                    <div style="display: grid; grid-template-columns: 4fr auto 6fr; grid-template-rows: repeat(9, 1fr); align-items: center">

                        <%-- ************* 1er ligne état civil ************* --%>
                        <div style="grid-row: 1 / 2; grid-column: 1 / 4; font-weight: bolder;">
                            <asp:Literal ID="Literal_ec" runat="server" meta:resourcekey="Literal_ec" Text="_etat_civil" />
                        </div>
                        <%-- 2eme ligne civilite label et value --%>
                        <div style="text-align: right">
                            <asp:Literal ID="civilite_des" runat="server" meta:resourcekey="civilite_des" Text="civilite" />
                        </div>
                        <div>&nbsp &nbsp</div>
                        <div class="modal-valuelabelbackground">
                            <asp:Literal ID="civilite_val" runat="server" meta:resourcekey="civilite_val" Text="_Civilite_infos" />
                        </div>

                        <%-- 3eme ligne nom label et value --%>
                        <div style="text-align: right">
                            <asp:Literal ID="nom_des" runat="server" meta:resourcekey="nom_des" Text="_Nomdes" />
                        </div>
                        <div>&nbsp &nbsp</div>
                        <div class="modal-valuelabelbackground">
                            <asp:Literal ID="nom_val" runat="server" Text="_Nomval" />
                        </div>

                        <%-- 4eme ligne prenom label et value --%>
                        <div style="text-align: right">
                            <asp:Literal ID="prenom_des" runat="server" meta:resourcekey="prenom_des" Text="_prenom_des" />
                        </div>
                        <div>&nbsp &nbsp</div>
                        <div class="modal-valuelabelbackground">
                            <asp:Literal ID="prenom_val" runat="server" Text="_prenom_val" />
                        </div>

                        <%-- 5eme ligne date naissance label et value --%>
                        <div style="text-align: right">
                            <asp:Literal ID="ddn_des" runat="server" meta:resourcekey="ddn_des" Text="_ddn_des" />
                        </div>
                        <div>&nbsp &nbsp</div>
                        <div class="modal-valuelabelbackground">
                            <asp:Literal ID="ddn_val" runat="server" Text="_ddn_val" />
                        </div>

                        <%-- 6eme ligne lieu naissance label et value --%>
                        <div style="text-align: right">
                            <asp:Literal ID="ldn_des" runat="server" meta:resourcekey="ldn_des" Text="_ldn_des" />
                        </div>
                        <div>&nbsp &nbsp</div>
                        <div class="modal-valuelabelbackground">
                            <asp:Literal ID="ldn_val" runat="server" Text="_ldn_val" />
                        </div>

                        <%-- 7eme ligne nationalite label et value --%>
                        <div style="text-align: right">
                            <asp:Literal ID="natio_des" runat="server" meta:resourcekey="natio_des" Text="_natio_des" />
                        </div>
                        <div>&nbsp &nbsp</div>
                        <div class="modal-valuelabelbackground">
                            <asp:Literal ID="natio_val" runat="server" Text="_natio_val" />
                        </div>

                        <%-- ************* 9eme ligne adresse éléc ************* --%>
                        <div style="grid-row: 8 / 9; font-weight: bolder; grid-column: 1 / 4;">
                            <asp:Literal ID="Literal_email" runat="server" meta:resourcekey="Literal_email" Text="_email_des" />
                        </div>

                        <%-- 10eme ligne courriel label et value --%>
                        <div style="text-align: right">
                            <asp:Literal ID="cour_des" runat="server" meta:resourcekey="cour_des" Text="_cour_des" />
                        </div>
                        <div>&nbsp &nbsp</div>
                        <div class="modal-valuelabelbackground">
                            <asp:Literal ID="cour_val" runat="server" Text="_cours_val" />
                        </div>

                    </div>

                    <br />

                    <%-- 6er ligne boutons choix --%>
                    <div style="display: grid; grid-template-columns: 4fr 2fr 4fr; align-items: center">
                        <div style="margin: auto">
                            <button type="button" class="btn btn-sitpho2" data-toggle="modal" data-dismiss="modal" onclick="okfrommodal()">
                                <asp:Literal runat="server" Text="_bouton_modal_ok" meta:resourcekey="modal_recap_button_ok" />
                            </button>
                        </div>
                        <div>&nbsp </div>
                        <div style="margin: auto">
                            <button type="button" class="btn btn-sitpho2 btn-sitpho2-red" data-toggle="modal" data-dismiss="modal" onclick="cancelfrommodal()">
                                <asp:Literal runat="server" Text="_bouton_modal_cancel" meta:resourcekey="modal_recap_button_cancel" />
                            </button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <%-- MODAL INFO OK --%>
    <asp:Button ID="hiddenButtonOkforModal2"
    CausesValidation="false"
    Style="display: none;"
    runat="server" ClientIDMode="Static"
    Text="_hidden_button"
    OnClick="hiddenButtonOkforModal2_Click" />
    <%-- modal --%>
    <div class="modal fade" id="modal_infook" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
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
                            <asp:Literal ID="inforecapreussie" runat="server" meta:resourcekey="inforecapreussie" Text="_inforecap" />
                        </div>
                        <div>&nbsp &nbsp</div>

                        <%-- 2 --%>
                        <div>&nbsp &nbsp</div>
                        <div>&nbsp &nbsp</div>
                        <div>&nbsp &nbsp</div>

                        <%-- 3 --%>
                        <div>&nbsp &nbsp</div>
                        <div style="margin: auto">
                            <button type="button" class="btn btn-sitpho2" data-toggle="modal" data-dismiss="modal" onclick="okfrommodal2()">
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
                })
            }
        }

        $(function () {
            $('[data-toggle="popover"]').popover()
        })

        // simule un click de bouton pour renvoyer au serveur
        function okfrommodal() {
            var buttonctrl = document.getElementById('<%=hiddenButton1forModal.ClientID %>');
            buttonctrl.click();
        }

        function cancelfrommodal() {
            var buttonctrl = document.getElementById('<%=hiddenButton2forModal.ClientID %>');
            buttonctrl.click();
        }

        function modalshow() {
            $('#modal_recap').modal('show');
        }
        
        function okfrommodal2() {
            var buttonctrl = document.getElementById('<%=hiddenButtonOkforModal2.ClientID %>');
            buttonctrl.click();
        }

        function modal2show() {
            $('#modal_infook').modal('show');
        }


    </script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm20.aspx.cs" Inherits="WebApplication1.WebForm20" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <h3>panel </h3>
    <div class="panel panel-default">
        <div class="panel-body">
            <div style="display: grid; grid-template-columns: 2fr 1fr 8fr">

                <%--<asp:Button runat="server" CssClass="btn btn-sitpho" meta:resourcekey="_button_cancellall"
                                Text="_Abandonner la procedure"
                                ID="button_cancellall"
                                OnClick="button_cancellall_Click" />--%>
                <div>
                    <button type="button" class="btn btn-sitpho" data-toggle="modal" data-target="#modal_annulation">
                        <asp:Literal runat="server" Text="_bouton_trigmodal" meta:resourcekey="modal_button_trigmodal" />
                    </button>
                </div>
                &nbsp
                    <div>
                        <asp:Literal runat="server" Text=" bonjour info bandeau" ID="info_bandeau_abandonner" />
                    </div>
            </div>

        </div>
    </div>

    <hr />
    <h3>MODAL </h3>
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#flipFlop">
        Click Me
    </button>

    <!-- The modal -->
    <div class="modal fade" id="flipFlop" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="modalLabel">Modal Title</h4>
                </div>
                <div class="modal-body">
                    Modal content...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <h6>fin modal </h6>
    <hr />

    <h3>MODAL 2</h3>

    <button type="button" class="btn btn-sitpho" data-toggle="modal" data-target="#modal_annulation">
        <asp:Literal runat="server" Text="_bouton_trigmodal" meta:resourcekey="button_trigmodal" />
    </button>

    <%-- MODAL ANNULATION DU DOSSIER --%>
    <div class="modal fade" id="modal_annulation" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <%-- bouton fermeture modal --%>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <%-- entête modal --%>
                    <h4 class="modal-title">
                        <asp:Literal runat="server" Text="_abandon procedure" meta:resourcekey="modal_header_abandon_procedure"></asp:Literal>
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <%-- 1er ligne texte d'avertissement --%>
                        <div class="col col-sm-12">
                            <span>
                                <asp:Literal runat="server" meta:resourcekey="modal_info_abandon" Text="_En abandonnant"></asp:Literal>
                            </span>
                        </div>
                    </div>
                    <div class="row">
                        <%-- 2er ligne bouton choix --%>
                        <div class="col col-sm-3">
                            <asp:Button CssClass="btn btn-primary" runat="server" ID="button_modal_ok"
                                meta:resourcekey="modal_button_ok" Text="_OK, VALIDER" OnClick="button_modal_ok_Click"
                                CausesValidation="false"></asp:Button>
                        </div>
                        <div class="col col-sm-3">
                            <asp:Button CssClass="btn btn-primary" runat="server" ID="button1"
                                meta:resourcekey="modal_button_ok" Text="BOUTON2" OnClick="button_modal_ok_Click"
                                CausesValidation="false"></asp:Button>
                        </div>
                        <div class="col col-sm-3">
                            <button runat="server"
                                id="button_modal_cancel"
                                meta:resourcekey="modal_button_cancel"
                                name="cancel"
                                onserverclick="button_modal_cancel_ServerClick"
                                type="button"
                                class="btn btn-secondary"
                                data-dismiss="modal">
                                <asp:Literal runat="server" meta:resourcekey="modal_button_cancel" Text="_Retour"></asp:Literal>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <h6>fin modal 2</h6>
    <hr />

    <h3>MODAL 3</h3>

    <button type="button" class="btn btn-sitpho" data-toggle="modal" data-target="#modal3">
        <asp:Literal runat="server" Text="_bouton_trigmodal" meta:resourcekey="button_trigmodal" />
    </button>
    <div></div>
    <asp:HiddenField ID="modalField" ClientIDMode="Static" OnValueChanged="modalField_ValueChanged" runat="server"></asp:HiddenField>
    <div></div>
    <asp:Label ID="label_1" runat="server" Text="label_1 linfo"></asp:Label>
    <div></div>
    <asp:Button ID="button_test" 
        Style="display: none;"
        runat="server" ClientIDMode="Static" 
        Text="BOUTON TEST" 
        OnClick="button_test_Click" />
    <%-- MODAL ANNULATION DU DOSSIER --%>
    <div class="modal fade" id="modal3" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <%-- bouton fermeture modal --%>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <%-- entête modal --%>
                    <h4 class="modal-title">
                        <asp:Literal runat="server" Text="_abandon procedure" meta:resourcekey="modal_header_abandon_procedure"></asp:Literal>
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <%-- 1er ligne texte d'avertissement --%>
                        <div class="col col-sm-12">
                            <span>
                                <asp:Literal runat="server" meta:resourcekey="modal_info_abandon" Text="_En abandonnant"></asp:Literal>
                            </span>
                        </div>
                    </div>
                    <%-- 2er ligne bouton choix --%>
                    <div style="display: grid; grid-template-columns: 2fr 2fr 2fr">
                        <button type="button" class="btn btn-sitpho" data-toggle="modal" data-dismiss="modal" onclick="setmodalinfo()">
                            <asp:Literal runat="server" Text="_bouton_trigmodal1" meta:resourcekey="modal_button_trigmodal" />
                        </button>
                        <div>* </div>
                        <button type="button" class="btn btn-sitpho" data-toggle="modal" data-dismiss="modal" onclick="setmodalinfo2()">
                            <asp:Literal runat="server" Text="_bouton_trigmodal2" meta:resourcekey="modal_button_trigmodal" />
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <h6>fin modal 3</h6>
    <hr />


    <div class="container">
        <h2 runat="server" id="encart1" meta:resourcekey="_encart_info_1">PANEL TITLE</h2>
        <h2 runat="server" id="encart2" meta:resourcekey="_encart_info_2">PANEL TITLE</h2>
        <p>The panel-group class clears the bottom-margin. Try to remove the class and see what happens.</p>
        <div class="panel-group">
            <div class="panel panel-info">
                <div class="panel-heading">Panel Header</div>
                <div class="panel-body">Panel Content</div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">Panel Header</div>
                <div class="panel-body">Panel Content</div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">Panel Header</div>
                <div class="panel-body">Panel Content</div>
            </div>
        </div>
    </div>
    <hr />

    <h2 runat="server" id="H1" meta:resourcekey="_encart_info_resultat_titre">PANEL TITLE</h2>
    <p>The panel-group class clears the bottom-margin. Try to remove the class and see what happens.</p>
    <div class="panel-group">
        <div class="panel panel-info">
            <div class="panel-heading">Panel Header</div>
            <div class="panel-body">Panel Content</div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">Panel Header</div>
            <div class="panel-body">Panel Content</div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">Panel Header</div>
            <div class="panel-body">Panel Content</div>
        </div>
    </div>

    <hr />
    <asp:Label runat="server" ID="l1" Text="_label" meta:resourcekey="Label1"></asp:Label>

    <hr />
    <div class="container">

        <h2 runat="server" id="H2" meta:resourcekey="_intitule">PANEL TITLE</h2>
        <div class="panel-group">
            <div class="panel panel-info">
                <div class="panel-heading" runat="server" meta:resourcekey="_intitule_choix">Panel Header</div>
                <div class="panel-body">

                    <div class="row">
                        <div class="col-sm-12">
                            <asp:RadioButton ID="rb_erreur" meta:resourcekey="_rb_erreur"
                                OnCheckedChanged="RadioButton_CheckedChanged"
                                AutoPostBack="true"
                                Text="_RF" Checked="False" GroupName="RadioGroup1" runat="server" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <asp:RadioButton ID="rb_statut" Text=" JH"
                                meta:resourcekey="_rb_statut"
                                OnCheckedChanged="RadioButton_CheckedChanged"
                                AutoPostBack="true"
                                Checked="False" GroupName="RadioGroup1" runat="server" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <asp:RadioButton ID="rb_resultat" Text=" QS"
                                meta:resourcekey="_rb_resultat"
                                OnCheckedChanged="RadioButton_CheckedChanged"
                                AutoPostBack="true"
                                Checked="False" GroupName="RadioGroup1" runat="server" />
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <%-- PANEL ERREUR SAISIE --%>
                <asp:Panel ID="panel_erreur" Visible="false" runat="server">
                    <div class="well">
                        <asp:Label ID="labelinfo" runat="server" Text=""></asp:Label>
                    </div>
                </asp:Panel>

                <%-- PANEL STATUT DOSSIER --%>
                <asp:Panel ID="panel_statut" Visible="false" runat="server">
                    <div class="well">
                        <asp:Label ID="label1" runat="server" Text="_text "></asp:Label>
                    </div>
                </asp:Panel>


                <%-- PANEL DES RESULTATS --%>
                <asp:Panel ID="panel_resultat" Visible="false" runat="server">
                    <div class="panel panel-info">
                        <div class="panel-heading" runat="server" meta:resourcekey="_intitule_choix2">Panel Header</div>
                        <div class="panel-body">
                            <%-- ATTESTATION --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_attestation" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_attestation"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_attestation" />
                                </div>
                            </div>
                            <%-- MENTION --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_mention" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_mention"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_mention" />
                                </div>
                            </div>
                            <%-- COMPRENDRE NIVEAU --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_comp_niveau" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_comp_niveau"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_comp_niveau" />
                                </div>
                            </div>
                            <%-- COMPRENDRE ATTESTATION --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_comp_attest" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_comp_attest"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_comp_attest" />
                                </div>
                            </div>
                            <%-- CONTESTATION --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_contestation" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_contestation"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_contestation" />
                                </div>
                            </div>
                            <%-- PERTE --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_perte" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_perte"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_perte" />
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="well">
                        <asp:Label ID="labelinfo2" runat="server" Text="_text "></asp:Label>
                    </div>

                </asp:Panel>

            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="rb_statut" EventName="CheckedChanged" />
                <asp:AsyncPostBackTrigger ControlID="rb_resultat" EventName="CheckedChanged" />
                <asp:AsyncPostBackTrigger ControlID="rb_erreur" EventName="CheckedChanged" />
            </Triggers>
        </asp:UpdatePanel>

    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
    <script type="text/javascript">


        function setmodalinfo() {
            //document.getElementById("modalField").value = "1";
            
            document.getElementById("<%=modalField.ClientID %>").textContent = "1";
            document.getElementById("<%=label_1.ClientID %>").textContent = "bonjour";
            var buttonctrl = document.getElementById('<%=button_test.ClientID %>');
            buttonctrl.click();
            //alert("val1");
        }
        function setmodalinfo2() {
            alert("val2");
            //document.getElementById("<%=modalField.ClientID %>").value = "2";
        }

    </script>
</asp:Content>

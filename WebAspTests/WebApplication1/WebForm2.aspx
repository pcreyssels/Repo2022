<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>
        <asp:Label ID="LabelEncartEtatCivil" runat="server" Text="VALIDATION DU DOSSIER "></asp:Label>
    </h3>

    <div class="container">

        <%-- MODAL --%>
        <div class="modal fade" id="flipFlop" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="modalLabel">Annulation du dossier</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col col-sm-12" style="text-align: center">
                                <span class="label label-info">En refusant votre inscription sera définitivement supprimée</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col col-sm-6" style="text-align: center">
                                <asp:Button CssClass="btn btn-primary" runat="server" ID="button_modal" Text="Confirmer l'annulation" OnClick="button_modal_Click" />
                            </div>
                            <div class="col col-sm-6" style="text-align: center">

                                <button runat="server"
                                    id="button_cancel"
                                    name="cancel"
                                    onserverclick="button_cancel_ServerClick"
                                    type="button"
                                    class="btn btn-secondary"
                                    data-dismiss="modal">
                                    Retour
                                </button>

                            </div>


                        </div>

                    </div>
                    <%--  <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>--%>
                </div>
            </div>
        </div>


        <%-- ENCART EMAIL DOSSIER DATE LIMITE --%>
        <%-- grid --%>
        <div class="panel panel-default">
            <h1 class="panel-title libellePanel">information dossier </h1>
            <div class="panel-body">
                <%-- labels intitules --%>
                <div class="row">
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label2" AssociatedControlID="Label_email" runat="server" Text="email" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label3" AssociatedControlID="Label_nodossier" runat="server" Text="dossier" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label4" AssociatedControlID="Label_datelim" runat="server" Text="date limite" />
                    </div>
                </div>
                <%-- 2è  ligne avec données --%>
                <div class="row">
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_email" runat="server" Text="toto@free.fr" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_nodossier" runat="server" Text="123456" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_datelim" runat="server" Text="15/05/2020" />
                    </div>
                </div>
            </div>
        </div>

        <%-- ENCART INFORMATION --%>
        <div class="well">
            <div class="row">
                <div class="col col-sm-6">
                    <span>Vous vous apprêtez à valider le dépôt de votre dossier, si vous désirez le modifier cliquez ici</span>
                </div>
            </div>
            <div class="row">
                <div class="col col-sm-6">
                    <button type="button" id="button_back" onserverclick="button_back_ServerClick" class="btn btn-default " runat="server">
                        <span class="glyphicon glyphicon-arrow-left"></span>
                    </button>
                </div>
            </div>
        </div>


        <%-- ******** ASP PANELS EXCLUSIFS SELON REGUGIE OU NON ******** --%>
        <%-- asp panel refugie --%>
        <asp:Panel runat="server" ID="panel_refugie">
            <div class="well">
                <div class="row">
                    <div class="col col-sm-6">
                        <span class="label label-info">REFUGIE (dossier gratuit)</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-sm-6">
                        <span class="label label-default" style="font-size: 1.5em">Cochez la confirmation du dépôt de dossier et cliquez sur le bouton ci-dessous</span>
                    </div>
                </div>

                <div class="row">
                    <div class="col col-sm-12">
                        <span style="white-space: pre-wrap">Si vous payez par virement bancaire la prise en compte de votre dossier sera plus longue qu’un paiement par carte bancaire. 
Merci d’utiliser dans ce cas les coordonnées bancaires ci-dessous en rappelant vos références de dossier (numéro de dossier et nom) dans le libellé.
Ci dessous les coordonnées bancaires :
                            <i>Agent comptable de France Éducation international
1, avenue Léon Journault
92318 Sèvres Cedex
Trésorerie Générale des Yvelines
RIB n° FR76 1007 1780 0000 0010 0397 691
BIC N° : TRPUFRP1</i>
                        </span>
                    </div>
                </div>

                <div class="row">
                    <div class="col col-sm-6">
                        <asp:CheckBox runat="server" ID="cb_refugie" Text="&nbsp Je confirme le dépôt de mon dossier " />
                    </div>
                </div>
            </div>


            <fieldset>
                <legend>Faites un choix de paiement</legend>

                <div>
                    <input type="radio" id="radio_CB" name="mode" value="paiement cb" runat="server" checked>
                    <label for="radio_CB">paiement par CB</label>
                </div>

                <div>
                    <input type="radio" id="radio_VI" name="mode" value="paiement virement" runat="server">
                    <label for="radio_VI">paiement par virement</label>
                </div>

                <div>
                    <input type="radio" id="radio_CA" name="mode" value="annuler" runat="server">
                    <label for="radio_CA">J'annule ma demande</label>
                </div>
            </fieldset>

            <asp:Label runat="server" ID="label_info"></asp:Label>

            <br />
            <input type="button" class="btn btn-primary"
                id="Button_valid"
                value="Je valide mon choix"
                onserverclick="Button_valid_ServerClick"
                runat="server" />

            <br />
            <div class="row">
                <div class="col col-sm-12">
                    <span>Merci de noter qu’aucun remboursement ne sera possible une fois votre dossier déposé et payé.
                    </span>
                </div>
            </div>

        </asp:Panel>




        <%-- asp panel non refugie --%>
        <asp:Panel runat="server" ID="panel_nonrefugie">
            <div class="well">
                <div class="row">
                    <div class="col col-sm-6">
                        <span class="label label-info">NON REFUGIE (dossier payant)</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-sm-6">
                        <span class="label label-default">Cochez l’acceptation de l’engagement de paiement et confirmez le dépôt de votre dossier en cliquant sur le bouton ci-dessous</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-sm-6">
                        <span class="label label-default"><b>engagement de paiement</b></span>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-sm-6">
                        <asp:CheckBox runat="server" ID="CheckBox1" Text="&nbsp Je confirme le dépôt de mon dossier " />
                    </div>
                </div>
                <div class="row">
                    <div class="col col-sm-6">
                        <%-- white-space: pre-wrap les espaces et sauts de lignes sont préservés --%>
                        <span style="white-space: pre-wrap">Je m’engage à payer le tarif de <b>20€</b> pour que ma demande de reconnaissance de diplôme soit étudiée.
Si cette demande est acceptée et recevable, je m’engage à payer 50€ pour que mon dossier soit instruit. Vous ne payez rien avant d’avoir reçu la facture correspondant à votre demande qui vous sera transmise par notification (courrier électronique). 

Merci de noter qu’aucun remboursement ne sera possible une fois votre dossier déposé.
                        </span>
                    </div>
                </div>
            </div>
        </asp:Panel>

        <%-- encart info commun aux deux panels --%>
        <div class="well">
            <b>Attention</b> : une fois la confirmation du dépôt de dossier validée, aucune modification ne sera possible. Vous recevrez un courrier électronique confirmant le dépôt de votre dossier  
        </div>

        <%-- Boutons Annulation --%>
        <div class="well">
            <div class="row">
                <div class="col col-sm-6" style="text-align: center">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#flipFlop">
                        J’annule le dépôt de dossier
                    </button>
                    <button id="B2" runat="server" onserverclick="B2_ServerClick" type="button" class="btn btn-info" data-toggle="modal" data-target="#flipFlop">
                        J’annule le dépôt de dossier 
                    </button>
                    <asp:Button ID="Button1"
                        Text="Submit"
                        
                        OnClick="Button1_Click"
                        runat="server" />
                </div>
                <div class="col col-sm-6" style="text-align: center">
                    <asp:Button CssClass="btn btn-primary"
                        runat="server"
                        ID="button_confirm"
                        Text="Je confirme le dépôt du dossier "
                        OnClick="button_confirm_Click" />
                </div>
            </div>
        </div>

        <hr />

        <div class="container">
            <h2>Simple Collapsible</h2>
            <p>Click on the button to toggle between showing and hiding content.</p>
            <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Simple collapsible</button>
            <div id="demo" class="collapse">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
            </div>
        </div>

    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm12.aspx.cs" Inherits="WebApplication1.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="well" style="white-space: pre-wrap">
        Joindre toutes les pièces demandées, valider avec le bouton en fin de formulaire.

Mode d’emploi et règles d’usage :
    -   Tous les documents doivent être au format PDF en cliquant sur « Télécharger ».
    -	Vous pouvez enregistrer au maximum 2 documents en pièces complémentaires.
    -	Les documents rédigés en allemand, anglais, arabe, espagnol, français, italien et portugais ne nécessitent pas de traduction.
    </div>

    <hr />


    <div class="well" style="white-space: pre-wrap">
        <asp:Literal meta:resourcekey="TexteBrut" runat="server" Mode="PassThrough" Text="" />
    </div>


    <%--<asp:Label runat="server">
        <asp:FileUpload ID="fup" runat="server" />
    </asp:Label>--%>

    <hr />

    <asp:FileUpload ID="FileUpload1" runat="server" Style="display: none;" />
    <input id="btnFileUpload" type="button" value="Add" runat="server" />



    <asp:Button runat="server" Text="VERIF FILE" OnClick="Unnamed_Click" />

    <hr />

    <h4 class="modal-title" id="modalLabel" title="HELLO">Annulation du dossier
        <asp:Literal runat="server" meta:resourcekey="literal" Text="_text"></asp:Literal>
    </h4>

    <hr />
    <fieldset>
        <legend>Faites un choix de paiement</legend>

        <div>
            <input type="radio" id="radio_CB" name="mode" value="CB" runat="server" checked>
            <label for="radio_CB" meta:resourcekey="literal_paiementcb"></label>
        </div>

        <div>
            <input type="radio" id="radio_VI" name="mode" value="VIR" runat="server">
            <label for="radio_VI">paiement par virement</label>
        </div>

        <div>
            <input type="radio" id="radio_CA" name="mode" value="CAN" runat="server">
            <label for="radio_CA" runat="server">J'annule ma demande</label>
        </div>
    </fieldset>

    <hr />

    <asp:LinkButton runat="server" ID="linkb" OnClick="linkb_Click" Text="clickme"></asp:LinkButton>

    <hr />
    <h1 class="panel-title libellePanel" runat="server" meta:resourcekey="LabelVotreDossier">_votredossier</h1>

    <hr />





    <%--<asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>--%>

    <%-- Asp update panel permet le partial page update --%>
    <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Always">
        <ContentTemplate>

            <asp:Button ID="buttonOK" runat="server" Text="clickme" OnClick="buttonOK_Click" />
            <hr />

            <asp:Panel runat="server" ID="panel" Visible="false">

                <div class="panel_infovalidation">


                    <div class="row ">
                        <div class="col-sm-8 ">
                            <asp:Label ID="Label2" runat="server" meta:resourcekey="message" Text="message informatif" />
                        </div>
                        <div class="col-sm-2 ">
                            <asp:Button ID="button1" runat="server" Text="Action1" OnClick="button1_Click" />
                        </div>
                        <div class="col-sm-2 ">
                            <asp:Button ID="button2" runat="server" Text="Action2" OnClick="button2_Click" />
                        </div>
                    </div>
                </div>

            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>
        <asp:Label ID="LabelEncartEtatCivil" runat="server" Text="FICHE DOCUMENTS A FOURNIR "></asp:Label>
    </h3>

    <div class="container">
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
                        <asp:Label ID="Label1" AssociatedControlID="Label_nodossier" runat="server" Text="dossier" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label3" AssociatedControlID="Label_datelim" runat="server" Text="date limite" />
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
        <%-- white-space: pre-wrap les espaces et sauts de lignes sont préservés  (https://developer.mozilla.org/en-US/docs/Web/CSS/white-space) --%>
        <div class="well" style="white-space: pre-wrap">
            Joindre toutes les pièces demandées, valider avec le bouton en fin de formulaire.

Mode d’emploi et règles d’usage :
    -   Tous les documents doivent être au format PDF en cliquant sur « Télécharger ».
    -	Vous pouvez enregistrer au maximum 2 documents en pièces complémentaires.
    -	Les documents rédigés en allemand, anglais, arabe, espagnol, français, italien et portugais ne nécessitent pas de traduction.
        </div>

        <hr />

        <%-- GRIDVIEW --%>
        <asp:GridView ID="GridView1" runat="server"
            HeaderStyle-BackColor="LightGray"
            ShowHeader="true"
            ShowFooter="false"
            DataKeyNames="Pieceaj"
            AutoGenerateColumns="false"
            AutoGenerateSelectButton="false"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
            SelectedRowStyle-Font-Bold="true"
            SelectedRowStyle-BackColor="LightBlue"
            CssClass="spacebefaft"
            AlternatingRowStyle-BackColor="LightGreen">

            <Columns>
                <asp:BoundField DataField="Pieceaj" HeaderText="Pièce à joindre" />
                <asp:BoundField DataField="Precisions" HeaderText="Précisions" />
                <asp:BoundField DataField="Obligatoire" HeaderText="Obligatoire" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="Piecej" HeaderText="Pièce jointe" />

                <asp:ButtonField ButtonType="Image"
                    CommandName="Select"
                    HeaderText="Choix"
                    Text="télécharger" />
            
                <asp:ImageField HeaderText="ok" />
            </Columns>

        </asp:GridView>

        <hr />

        <%-- bouton VALIDER--%>
        <div class="row">
            <div class="col-sm-12" style="text-align: end">
                <asp:Button runat="server" CssClass="btn btn-primary" Enabled="false" ID="Button_valid" OnClick="Button_valid_Click" Text="Valider" />
            </div>
           <%-- <div class="col-sm-6" style="background-color:aquamarine; justify-items: end">
                <asp:Button runat="server" ID="Button1"  Text="Valider2" />
            </div>--%>
        </div>

        <%-- panel téléchargement --%>
        <asp:Panel runat="server" ID="panel1" Visible="false">
            <h4>
                <asp:Label runat="server" ID="labelUploadinfo" ></asp:Label>
            </h4>
            <%-- Document à télécharger (max 2 Mo) --%>
            <span class="label label-info">Document à télécharger (max 2 Mo)</span>

            <br />

            <div class="panel panel-default">
                <div class="panel-body">

                    <asp:FileUpload ID="FileUpload1"
                        runat="server"></asp:FileUpload>

                    <br />

                    <asp:Button ID="UploadButton"
                        Text="Upload file"
                        OnClick="UploadButton_Click"
                        CausesValidation="true"
                        runat="server"></asp:Button>

                    <asp:Label ID="UploadStatusLabel"
                        runat="server">
                    </asp:Label>

                </div>
            </div>


        </asp:Panel>


    </div>

</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AspTables.aspx.cs" Inherits="WebApplication1.AspTables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="Content/Site.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Table HorizontalAlign="Justify" ID="TableRecap" runat="server" CellPadding="5" GridLines="None">
            <%-- header --%>
            <asp:TableRow TableSection="TableHeader" BackColor="LightYellow">
                <asp:TableCell HorizontalAlign="Center" Text="récapitulatif des données : " ColumnSpan="4" />
            </asp:TableRow>
            <%-- table body --%>
            <asp:TableRow>
                <asp:TableCell Font-Bold="true" Text="&nbsp &nbsp &nbsp &nbsp obtenu le : &nbsp &nbsp &nbsp &nbsp" BackColor="LightBlue"></asp:TableCell>
                <asp:TableCell Font-Bold="true" Text="&nbsp &nbsp &nbsp &nbsp Nom du diplôme : &nbsp &nbsp &nbsp &nbsp" BackColor="LightGreen"></asp:TableCell>
                <asp:TableCell Font-Bold="true" Text="&nbsp &nbsp &nbsp &nbsp Pays du diplôme : &nbsp &nbsp &nbsp &nbsp" BackColor="LightBlue"></asp:TableCell>
                <asp:TableCell Font-Bold="true" Text=" &nbsp &nbsp &nbsp &nbsp Etablissement de délivrance : &nbsp &nbsp &nbsp &nbsp" BackColor="LightGreen"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center" ID="cellObtenu" Text="texte col 1" BackColor="LightBlue"></asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" ID="cellDiplome" Text="texte colonne 2"></asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" ID="cellPays" Text="texte de la colonne 3" BackColor="LightBlue"></asp:TableCell>
                <asp:TableCell HorizontalAlign="Center" ID="cellEtab" Text="texte 4"></asp:TableCell>
            </asp:TableRow>
            <%-- footer --%>
            <asp:TableRow gr HorizontalAlign="Center" TableSection="TableFooter">
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Button ID="recapRetour" runat="server" Text="RETOUR" OnClick="recapRetour_Click" />
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Button ID="recapValider" runat="server" Text="VALIDER" OnClick="recapValider_Click" />
                </asp:TableCell>
            </asp:TableRow>


        </asp:Table>

        <hr />

        <asp:Table HorizontalAlign="Justify" ID="Table1" runat="server" CellPadding="5" GridLines="None">
            <%-- header --%>
            <asp:TableRow TableSection="TableHeader" BackColor="LightYellow" Font-Bold="true" Font-Names="Arial, Tahoma">
                <asp:TableCell BackColor="LightBlue" Text="Charger">
                     
                </asp:TableCell>
                <asp:TableCell Text="&nbsp &nbsp &nbsp &nbsp Pièce à joindre  &nbsp &nbsp &nbsp &nbsp" BackColor="LightBlue"></asp:TableCell>
                <asp:TableCell Text="&nbsp &nbsp &nbsp &nbsp Nature du document : &nbsp &nbsp &nbsp &nbsp" BackColor="LightGreen"></asp:TableCell>
                <asp:TableCell Text="&nbsp &nbsp &nbsp &nbsp Précisions  &nbsp &nbsp &nbsp &nbsp" BackColor="LightBlue"></asp:TableCell>
                <asp:TableCell Text=" &nbsp &nbsp &nbsp &nbsp Obligatoire  &nbsp &nbsp &nbsp &nbsp" BackColor="LightGreen"></asp:TableCell>
                <asp:TableCell Text=" &nbsp &nbsp &nbsp &nbsp Pièces jointes : &nbsp &nbsp &nbsp &nbsp" BackColor="LightGreen"></asp:TableCell>
            </asp:TableRow>
            <%-- table body --%>
            <asp:TableRow>
                <asp:TableCell BackColor="LightBlue">
                    <asp:Button ID="Button3" runat="server" Text="Charger" OnClick="Button3_Click" />
                </asp:TableCell>
                <asp:TableCell Text="&nbsp &nbsp &nbsp &nbsp obtenu le : &nbsp &nbsp &nbsp &nbsp"></asp:TableCell>
                <asp:TableCell Text="&nbsp &nbsp &nbsp &nbsp Nom du diplôme : &nbsp &nbsp &nbsp &nbsp"></asp:TableCell>
                <asp:TableCell Text="&nbsp &nbsp &nbsp &nbsp Pays du diplôme : &nbsp &nbsp &nbsp &nbsp"></asp:TableCell>
                <asp:TableCell Text=" &nbsp &nbsp &nbsp &nbsp Etablissement de délivrance : &nbsp &nbsp &nbsp &nbsp"></asp:TableCell>
                <asp:TableCell Text=" &nbsp &nbsp &nbsp &nbsp Etablissement de délivrance : &nbsp &nbsp &nbsp &nbsp"></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell BackColor="LightBlue">
                    <asp:Button ID="Button4" runat="server" Text="Charger" OnClick="Button3_Click" />
                </asp:TableCell>

            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell BackColor="LightBlue">
                    <asp:Label runat="server" ></asp:Label>
                </asp:TableCell>
                <asp:TableCell Text=""></asp:TableCell>
                <asp:TableCell Text=""></asp:TableCell>
                <asp:TableCell Text=""></asp:TableCell>
                <asp:TableCell Text=""></asp:TableCell>
                <asp:TableCell Text=""></asp:TableCell>
            </asp:TableRow>


            <%-- footer --%>
            <asp:TableRow HorizontalAlign="Center" TableSection="TableFooter">
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Button ID="Button1" runat="server" Text="RETOUR" OnClick="recapRetour_Click" />
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Button ID="Button2" runat="server" Text="VALIDER" OnClick="recapValider_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <hr />

        <%-- ************************* GRIDVIEW ************************** --%>
        <h5>GRID WIEW</h5>
        <div>

            <asp:GridView ID="GridView1" runat="server"
                HeaderStyle-BackColor="LightGray"
                ShowHeader="true"
                ShowFooter="true"
                DataKeyNames="Pieceaj"
                AutoGenerateColumns="false"
                AutoGenerateSelectButton="false"
                OnRowCommand="GridView1_RowCommand"
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                SelectedRowStyle-Font-Bold="true"
                SelectedRowStyle-BackColor="LightBlue"
                CssClass="spacebefaft"
                AlternatingRowStyle-BackColor="LightGreen">

                <Columns>
                    <asp:BoundField DataField="Pieceaj" HeaderText="Pièce à joindre" />
                    <asp:BoundField DataField="NatureDoc" HeaderText="Nature du document" />
                    <asp:BoundField DataField="Precisions" HeaderText="Précisions" />
                    <asp:BoundField DataField="Obligatoire" HeaderText="Obligatoire" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="Piecej" HeaderText="Pièce jointe" />

                    <asp:ButtonField ButtonType="Image"
                        CommandName="Select"
                        HeaderText="Choix"
                        Text="Selectionner" />

                </Columns>

            </asp:GridView>

        </div>

        <hr />

        <asp:Panel runat="server" ID="panel1" Visible="false">
            <h4>
                <asp:Label runat="server" ID="labelUploadinfo"></asp:Label>
            </h4>
            <asp:FileUpload ID="FileUpload1"
                runat="server"></asp:FileUpload>

            <br />
            <br />

            <asp:Button ID="UploadButton"
                Text="Upload file"
                OnClick="UploadButton_Click"
                CausesValidation="true"
                runat="server"></asp:Button>

            <hr />

            <asp:Label ID="UploadStatusLabel"
                runat="server">
            </asp:Label>
        </asp:Panel>

        <hr />

        <div class="well">
            Les formations de moins de 6500 heures à temps complet ne seront pas prises en compte. 
            Mode d’emploi et règles d’usage :
            -   Tous les documents doivent être au format PDF en cliquant sur « Télécharger ».
            -	Vous pouvez enregistrer au maximum 2 documents en pièces complémentaires.
            -	Les documents rédigés en allemand, anglais, arabe, espagnol, français, italien et portugais ne nécessitent pas de traduction.
        </div>

    </form>

    <hr />

</body>
</html>

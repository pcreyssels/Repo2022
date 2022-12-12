<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm13.aspx.cs" Inherits="WebApplication1.WebForm13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <%--  pas d'update panel dans cette page à acause de la gridview --%>
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
                    </div>
                </div>
            </div>
        </div>

        <%-- ENCART INFORMATION --%>
        <div class="well" style="white-space: pre-wrap">
            <asp:Literal meta:resourcekey="EncartInfos" runat="server" Mode="PassThrough" />
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
            OnRowCommand="GridView1_RowCommand"
            SelectedRowStyle-Font-Bold="true"
            SelectedRowStyle-BackColor="LightBlue"
            CssClass="spacebefaft"
            AlternatingRowStyle-BackColor="LightGreen">

            <Columns>
                <asp:BoundField DataField="Pieceaj" meta:resourcekey="gridcolumn_Pieceaj" HeaderText="_Pièce à joindre" />
                <asp:BoundField DataField="Precisions" meta:resourcekey="gridcolumn_Precisions" HeaderText="_Précisions" />
                <asp:BoundField DataField="Obligatoire" meta:resourcekey="gridcolumn_Obligatoire" HeaderText="_Obligatoire" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundField DataField="Piecej" meta:resourcekey="gridcolumn_Piecej" HeaderText="_Pièce jointe" />

                <asp:TemplateField>
                    <ItemTemplate>

                        <%--<asp:FileUpload  runat="server" />--%>
                        <%--<asp:LinkButton ID="btn1" runat="server" CommandName="Command2" />--%>
                    </ItemTemplate>
                </asp:TemplateField>

                <%-- <asp:ButtonField ButtonType="Image"
                    CommandName="Select"
                    HeaderText="_Choix"
                    Text="_télécharger"
                    meta:resourcekey="BoutondeLigne" />
                <asp:ImageField HeaderText="ok" />--%>
            </Columns>

        </asp:GridView>

        <hr />

        <input type="button" value="BONJOUR"/>

        <input class="buttonlikelink" type="button" value="BONJOUR2"/>

        <hr />

        <%-- bouton VALIDER--%>
        <div class="row">
            <div class="col-sm-12" style="text-align: end">
                <asp:Button runat="server" CssClass="btn btn-primary" Enabled="false" ID="Button_valid" OnClick="Button_valid_Click" meta:resourcekey="BoutonValider" Text="_Valider" />
            </div>
        </div>

        <hr />
        <div>TEST :</div>
        <asp:FileUpload ID="FileUpload2" Style="display: none" runat="server" onchange="upload()" />
        <input type="button" value="Carica Documento" onclick="showBrowseDialog()" />

        <asp:Button runat="server" ID="hideButton" Text="" Style="display: none;" OnClick="hideButton_Click" />


        <div>FIN TEST :</div>

        <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>



        
    </div>


</asp:Content>
<%-- SCRIPT pour les popover --%>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">

    <script type="text/javascript" language="javascript">
        function showBrowseDialog() {
            var fileuploadctrl = document.getElementById('<%= FileUpload2.ClientID %>');
            fileuploadctrl.click();
        }

      
        function upload() {
            var btn = document.getElementById('<%= hideButton.ClientID %>');
            btn.click();
        }

    </script>
</asp:Content>


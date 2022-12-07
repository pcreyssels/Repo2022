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

    

    <asp:Button runat="server" Text="VERIF FILE" OnClick="Unnamed_Click"/>

</asp:Content>

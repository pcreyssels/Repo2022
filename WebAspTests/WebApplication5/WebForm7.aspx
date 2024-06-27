<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebApplication5.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:PlaceHolder runat="server" ID="ph1"></asp:PlaceHolder>

    <script>



        // bouton valider enlève le popup preventdefault SERT 0 RIEN ICI
        function bclick() {
            console.log('appel bclick ');

            // console.log('remove beforeunload ');
            //var v0 = document.getElementById('preventflag').getAttribute('value');

            // Page_ClientValidate() ou Page_IsValid pas de validateur asp dans cette page
            // if (v0 == 'ok' || Page_IsValid) {
            //if (v0 == 'ok') {
            //    console.log('rem beforeunload ');
            //    window.removeEventListener("beforeunload", beforeUnloadHandler);
            //}
        }




    </script>

</asp:Content>

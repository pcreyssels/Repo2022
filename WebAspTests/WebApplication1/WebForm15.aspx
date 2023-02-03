<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm15.aspx.cs" Inherits="WebApplication1.WebForm15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <button type="button" class="btn btn-primary" data-toggle="popover" data-trigger="hover" data-placement="right" data-content="Now hover out.">
        Hover over me outside update pannel popover
    </button>

    <asp:LinkButton ID="paidButton" runat="server" meta:resourcekey="paid_linkbutton" Text="_pailig" OnClick="paidButton_Click" />
    
    <div>
        Vous souhaitez aller webform14 <a href="Webform14.aspx">cliquer ici</a>
    </div>
    <div>
        Vous souhaitez aller webform17 <a href="Webform17.aspx">cliquer ici</a>
    </div>
    <div>
        voici un lien hash vers un texte ailleurs dans la page
        <a href="#basdepage">clic bas de page</a>
    </div>
    <hr />

    <%--<asp:ScriptManager ID="ScriptManager1" runat="server" />--%>

    <hr style="border-top: 1px solid blue" />
    <asp:UpdatePanel ID="UpdatePanel1"
        runat="server">
        <ContentTemplate>


            <button type="button" class="btn btn-primary" data-toggle="popover" data-trigger="focus" data-placement="right" data-content="Now click somewhere else">
                Click me popover
            </button>

            <hr />

            <button type="button" class="btn btn-alert" data-toggle="popover" data-trigger="click" data-placement="right" data-content="Now click somewhere else">
                Click me popover data-trigger click
            </button>

            <hr />

            <button type="button" class="btn btn-info" data-toggle="popover" data-trigger="hover" data-placement="right" data-html="true" data-content="Now <b>click somewhere</b> else">
                Click me popover data-trigger hover
            </button>

            <hr />

            <button type="button" class="btn btn-primary" data-toggle="tooltip" title="Top shoes" style="margin: 30px;">
                Shoes tooltip
            </button>

            <hr />

            <asp:Button runat="server" ID="Button2" OnClick="Button2_Click" Text="bouton dans update" />

        </ContentTemplate>
    </asp:UpdatePanel>
    <hr style="border-top: 1px solid blue" />

    <asp:Button runat="server" ID="bouton1" OnClick="bouton1_Click" Text="bouton hors update" />

    <hr />
    <a href="/WebForm12">Website</a>

    <hr />
    <div runat="server" id="d1" meta:resourcekey="_data">BONJOUR </div>

    <div runat="server" id="d2">BONJOUR </div>

    <div runat="server" id="id3" meta:resourcekey="_valeur1">_BONJOUR </div>

    <asp:Literal runat="server" ID="L1" Text="_literal" Mode="PassThrough" meta:resourcekey="_valeur_literal">_BONJOUR </asp:Literal>

    <hr />
    <asp:TextBox ID="textbox1" runat="server" Text="init"></asp:TextBox>
    <asp:Button runat="server" CausesValidation="true" ID="Button3" OnClick="Button3_Click" Text="textbox CV true" />
    <asp:Button runat="server" CausesValidation="false" ID="Button4" OnClick="Button4_Click" Text="textbox CV false" />


    <hr />

    <div id="basdepage">
        voici un texte en bas de page acces par le hash # href="//site.example/#basdepage"
    </div>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">

    <script>
        //$(function () {
        //    $('[data-toggle="popover"]').popover()
        //})

        //$(function () {
        //    $('[data-toggle="tooltip"]').tooltip()
        //})

        //function pageLoad(sender, args) {
        //    if (args.get_isPartialLoad()) {
        //        //Specific code for partial postbacks can go in here.
        //        //alert("Hello! I am an alert box!!");
        //        $(function () {
        //            $('[data-toggle="popover"]').popover()
        //        })
        //    }
        //}

        //window.onload = function (e) {
        //    alert("onload event !!!");
        //    $('[data-toggle="popover"]').popover()
        //}

        //this.history.forward(-1);


        // https://stackoverflow.com/questions/7080269/javascript-before-leaving-the-page
        // f you want to show a prompt before the user leaves the page, use onbeforeunload:
        // déclenché même sur un <a href="#xxx"> sur la même page
        //$(window).bind('beforeunload', function () {
        //    return 'Are you sure you want to leave?';
        //});

        // https://www.viralpatel.net/disable-back-button-browser-javascript/
        // les browsers n'affichent pas le message mais une fenêtre type'
        // window.onbeforeunload = function () { return "You work will be lost."; };

        // https://www.geeksforgeeks.org/how-to-display-warning-before-leaving-the-web-page-with-unsaved-changes-using-javascript/
        // Variables to store the input text
        //let fname = '';
        //let lname = '';
        //let subject = '';
        //window.addEventListener('beforeunload',
        //    function (e) {

        //        // Check if any of the input
        //        // fields are filled
        //        if (fname !== '' ||
        //            lname !== '' ||
        //            subject !== '') {

        //            // Cancel the event and
        //            // show alert that the unsaved
        //            // changes would be lost
        //            e.preventDefault();
        //            e.returnValue = '';
        //        }
        //    });

        //https://developer.mozilla.org/en-US/docs/Web/API/Window/hashchange_event
        window.addEventListener('hashchange', () => {
            console.log('The hash has changed!')
        }, false);

        // https://stackoverflow.com/questions/34736430/can-we-detect-browsers-refresh-and-back-button-events
        // popstate fires on both forwards and backwards button presses.
        // https://developer.mozilla.org/en-US/docs/Web/API/Window/popstate_event
        // The popstate event of the Window interface is fired when the active history entry changes while the user navigates the session history.

        window.addEventListener('popstate', function (event) {
            //Your code here
            console.log('back or forward button clic !!');
            // this.alert('back click');
        });

        //window.onbeforeunload = function (e) {
        //    console.log(' window.onbeforeunload fired !!')
        //    //e.preventDefault();
        //    //e.returnValue = 'There are unsaved changes. Sure you want to leave?';
        //};

    </script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebApplication3.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="panel panel-default2">
        <div class="panel-heading">
            <h3 class="panel-title">Panel title</h3>
        </div>
        <div>
            <asp:Label runat="server" id="LabelH3" >Panel title</asp:Label>
        </div>
        <div class="panel-body">
            <h1 class="panel-title libellePanel">
                <asp:Literal runat="server" Text="_votre dossier :" meta:resourcekey="LabelVotreDossier" />
            </h1>
            <div class="panel-body">
                <%-- labels intitules --%>
                <div class="row">
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label14" AssociatedControlID="Label_email" runat="server" meta:resourcekey="IntituleEmail" Text="_email" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label15" AssociatedControlID="Label_nodossier" runat="server" meta:resourcekey="IntituleDossier" Text="_dossier" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label16" AssociatedControlID="Label_datelim" runat="server" meta:resourcekey="IntituleDatelimite" Text="_date limite" />
                    </div>
                </div>
                <%-- 2è  ligne avec données --%>
                <div class="row">
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_email" runat="server" Text="_email" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_nodossier" runat="server" Text="_no_dossier" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_datelim" runat="server" Text="_datelimite" />
                        <span runat="server" style="display: inline-block; height: 2em;"
                            data-toggle="tooltip"
                            title="__vous avez"
                            meta:resourcekey="iconinfodatelimite"
                            data-placement="right"
                            data-html="true">
                            <img runat="server" id="Img1"
                                style="height: 100%; width: 100%; object-fit: contain"
                                src="~/Images/infoiconred.png"
                                alt="attention" />
                        </span>

                        <button type="button"
                            title="Tooltip on left"
                            data-toggle="tooltip"
                            meta:resourcekey="iconinfodatelimite"
                            data-content="__vous avez"
                            data-placement="right"
                            data-html="true">
                            POPO
                        </button>

                    </div>
                </div>
            </div>
        </div>
    </div>


    <hr style="height: 2px; border-width: 0; background-color: lightgreen" />
    <div class="RedRoundedBorderedText">
        texte cerclé en rouge
    </div>

    <br />
    <hr style="height: 2px; border-width: 0; background-color: lightpink" />

    <span runat="server" meta:resourcekey="spanitem" class="RedRoundedBorderedText">
        <span runat="server" style="display: inline-block; height: 4em;">
            <img runat="server" id="Img2"
                style="height: 100%; width: 100%; object-fit: contain"
                src="~/Images/Attention 512x512px.png"
                alt="attention" />
        </span>
    </span>


    <br />

    <span class="RedRoundedBorderedText">
        <span runat="server" style="display: inline-block; height: 4em;">
            <img runat="server" id="Img3"
                style="height: 100%; width: 100%; object-fit: contain"
                src="~/Images/Attention 512x512px.png"
                alt="attention" />
        </span>
        <span runat="server" meta:resourcekey="spanitem2"></span>
    </span>

    <br />

    <span class="RedRoundedBorderedText">
        <span runat="server" style="display: inline-block; height: 4em;">
            <img runat="server" id="Img4"
                style="height: 100%; width: 100%; object-fit: contain"
                src="~/Images/Attention 512x512px.png"
                alt="attention" />
        </span>
        <span runat="server" meta:resourcekey="spanitem3"></span>
    </span>

    <br />

    <hr style="height: 2px; border-width: 0; background-color: maroon" />

    <div class="CGVText CGVBordered" style="width: fit-content">
        <img style="height: 4em; width: 4em" src="/Images/Attention 512x512px.png"
            alt="caution" />
        Merci de noter que vous devrez <b>utiliser obligatoirement le même mode paiement que celui utilisé lors du dépôt de votre demande<br />
            Merci de noter que vous devrez <b>utiliser obligatoirement le même mode paiement que celui utilisé lors du dépôt de votre demande<br />
                Merci de noter que vous devrez <b>utiliser obligatoirement le même mode paiement que celui utilisé lors du dépôt de votre demande<br />
                    Merci de noter que vous devrez <b>utiliser obligatoirement le même mode paiement que celui utilisé lors du dépôt de votre demande<br />
                        Merci de noter que vous devrez <b>utiliser obligatoirement le même mode paiement que celui utilisé lors du dépôt de votre demande<br />
    </div>

    <hr style="height: 2px; border-width: 0; background-color: maroon" />

    <hr style="height: 2px; border-width: 0; background-color: orangered" />

    <div style="display: inline-grid; grid-template-columns: auto fit-content(); align-items: center; border: 2px solid; border-color: cadetblue">

        <span runat="server" style="display: inline-block; height: 4em;">
            <img runat="server" id="Img5"
                style="height: 100%; width: 100%; object-fit: contain"
                src="~/Images/Attention 512x512px.png"
                alt="attention" />
        </span>

        <div style="grid-row: 1 / 2; grid-column: 2 / 3; width: fit-content; border: 2px solid">
            Merci de noter que vous devrez <b>utiliser obligatoirement le même mode paiement que celui utilisé lors du dépôt de votre demande<br />
                Merci de noter que vous devrez <b>utiliser obligatoirement le même mode paiement que celui utilisé lors du dépôt de votre demande<br />
                    Merci de noter que vous devrez <b>utiliser obligatoirement le même mode paiement que celui utilisé lors du dépôt de votre demande<br />
                        Merci de noter que vous devrez <b>utiliser obligatoirement le même mode paiement que celui utilisé lors du dépôt de votre demande<br />
                            Merci de noter que vous devrez <b>utiliser obligatoirement le même mode paiement que celui utilisé lors du dépôt de votre demande<br />
        </div>
    </div>

    <hr style="height: 2px; border-width: 0; background-color: orangered" />


    <hr style="height: 2px; border-width: 0; background-color: greenyellow" />

    <div style="display: inline-grid; grid-template-columns: auto fit-content(); align-items: center;" class="RedRoundedBorderedText">

        <span runat="server" style="display: inline-block; height: 4em;">
            <img runat="server" id="Img6"
                style="height: 100%; width: 100%; object-fit: contain"
                src="~/Images/Attention 512x512px.png"
                alt="attention" />
        </span>

        <div runat="server" meta:resourcekey="spanitem4"
            style="grid-row: 1 / 2; grid-column: 2 / 3; width: fit-content">
        </div>
    </div>

    <hr style="height: 2px; border-width: 0; background-color: greenyellow" />



    <%--<span id="sp1" runat="server" meta:resourcekey="spanitem"></span>--%>

    <br />

    <span class="CGVText CGVBordered" style="width: fit-content">
        <img style="height: 4em; width: 4em" src="/Images/Attention 512x512px.png"
            alt="caution" />
        Merci de noter que vous devrez 
    </span>

    <br />
    <br />

    ***

    <span style="border-radius: 1em; border-color: red; border: 2px solid; padding: 5px;">texte 1  cerclé en rouge
    </span>

    ***

    <span style="border-radius: 1.5em; border-color: pink; border: 2px solid; padding: 5px;">texte 2 cerclé en rouge
    </span>


    <hr style="height: 2px; border-width: 0; background-color: lightblue" />

    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left">Tooltip on left</button>

    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Tooltip on top">Tooltip on top</button>

    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">Tooltip on bottom</button>

    <button class="btn btn-default tooltip-primary" runat="server" id="tooltip1" meta:resourcekey="tooltipright" type="button" data-toggle="tooltip" data-placement="right" title="Tooltip à droite">Tooltip on right</button>

    <hr style="height: 2px; border-width: 0; background-color: green" />

    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
        Popover on left
    </button>

    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
        Popover on top
    </button>

    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus
sagittis lacus vel augue laoreet rutrum faucibus.">
        <span class="glyphicon glyphicon-info-sign">Popover on bottom</span>
    </button>

    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
        Popover on right
    </button>

    <hr style="height: 2px; border-width: 0; background-color: green" />

    <button class="btn btn-default tooltip-primary" runat="server"
        id="Button1"
        type="button" data-toggle="tooltip"
        data-placement="right"
        data-html="true"
        data-content="Contenu tooltip "
        title="Tooltip <h1>gras</h1> à droite">
        Tooltip on right</button>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
    <%-- SCRIPT pour les popover --%>
    <script>
        $(function () {
            $('[data-toggle="popover"]').popover()
        })

        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })

        // fonction ms-ajax API évite la disparition des popovers apres un partial update
        // https://stackoverflow.com/questions/301473/rebinding-events-in-jquery-after-ajax-update-updatepanel
        function pageLoad(sender, args) {
            if (args.get_isPartialLoad()) {
                //Specific code for partial postbacks can go in here.
                //alert("Hello! I am an alert box!!");
                $(function () {
                    $('[data-toggle="popover"]').popover()
                })
                $(function () {
                    $('[data-toggle="popover"]').tooltip()
                })
            }
        }

        // simule un click de bouton pour renvoyer au serveur
        function setmodalinfo() {
            <%--var buttonctrl = document.getElementById('<%=butscriptModal.ClientID %>');
            buttonctrl.click();--%>
            //alert("val1");
        }
        function setmodalinfo2() {
            //alert("val2");
        }
    </script>
</asp:Content>

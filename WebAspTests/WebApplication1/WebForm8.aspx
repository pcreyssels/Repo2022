<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="WebApplication1.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label runat="server" Text="Webform 8"></asp:Label>

    <style>
        h1 {
            color: maroon;
            margin-left: 40px;
        }

        .row > .col-sm-3 {
            border: thin solid green
        }

        .centerow {
            display: flex;
            align-items: center;
        }

        .centegrid {
            display: grid;
            align-items: center;
            grid-template-columns: 1fr 1fr 1fr 1fr;
            column-gap: 10px;
        }

        .centegrid > div {
            border: thin solid blue
        }

    </style>




    <input type="button" value="Add to favorites">
    <h1>BONJOUR1</h1>
    <hr />
    <div class="container">
        <div class="row centerow">

            <div class="col-sm-3">
                COL0
            </div>
            <div class="col-sm-3" style="font-size: 1.2em">
                COL1
            </div>
            <div class="col-sm-3">
                COL2
            </div>
            <div class="col-sm-3">
                <button runat="server" id="bhtml" onserverclick="bhtml_ServerClick">CLICK ME</button>
                <button runat="server" id="Button2" onserverclick="bhtml_ServerClick">CLICK ME2</button>
            </div>

        </div>


    </div>

    <h1>BONJOUR 2</h1>
    <hr />

    <div class="centegrid">

        <div>
            COL0
        </div>
        <div style="font-size: 1.5em">
            COL1
        </div>
        <div>
            COL2
        </div>
        <div>
            <button runat="server" id="Button4" onserverclick="bhtml_ServerClick">CLICK ME</button>
            <button runat="server" id="Button5" onserverclick="bhtml_ServerClick">CLICK ME2</button>
        </div>
        <div>
            COL3
        </div>

    </div>
    <hr />
    <asp:PlaceHolder runat="server" ID="PlaceHolder2"></asp:PlaceHolder>



    <hr />
    <asp:PlaceHolder runat="server" ID="PlaceHolderN"></asp:PlaceHolder>
    <hr />
    <div class="container">

        <div class="row" style="border: thin solid green">
            <div class="col-sm-3">
                COL0
            </div>
            <div class="col-sm-3">
                COL1
            </div>
            <div class="col-sm-3">
                COL2
            </div>
            <div class="col-sm-3">
                <button runat="server" id="Button1" onserverclick="bhtml_ServerClick">CLICK ME</button>
                <button runat="server" id="Button3" onserverclick="bhtml_ServerClick">CLICK ME2</button>
            </div>
        </div>
        <hr />
        <asp:PlaceHolder runat="server" ID="PlaceHolder1"></asp:PlaceHolder>

    </div>


    <h6>place holder Z</h6>

    <asp:PlaceHolder runat="server" ID="PlaceHolderZ"></asp:PlaceHolder>

    <h6>fin place holder Z</h6>




    <hr />

    <h6>place holder W</h6>

    <asp:PlaceHolder runat="server" ID="PlaceHolderW"></asp:PlaceHolder>

    <h6>fin place holder W</h6>

    <div class="row">
        <div class="col col-sm-6" style="background-color: aquamarine">
            <span style="white-space: pre-wrap">Je m’engage à payer le tarif de <b>20€</b> pour que ma demande de reconnaissance de diplôme soit étudiée.
Si cette demande est acceptée et recevable, je m’engage à payer 50€ pour que mon dossier soit instruit. Vous ne payez rien avant d’avoir reçu la facture correspondant à votre demande qui vous sera transmise par notification (courrier électronique). 

Merci de noter qu’aucun remboursement ne sera possible une fois votre dossier déposé.
            </span>
        </div>
    </div>


    <div class="row">
        <div class="col col-sm-6">
            <span style="white-space: pre-wrap">
                <asp:Literal runat="server" Text="<%$Resources:Resource,Engagement_paiement%>"></asp:Literal>
            </span>
        </div>
    </div>

</asp:Content>

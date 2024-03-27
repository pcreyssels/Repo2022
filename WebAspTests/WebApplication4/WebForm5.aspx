<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication4.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Button runat="server" Text="Bonjour" />
    <br />

    <asp:Label runat="server"> Label bonjour </asp:Label>

    <br />
    <input type="text" name="name" id="name" />

    <br />
    <br />

    <div style="display: inline-grid; grid-template-columns: auto fit-content(); align-items: center" class="RedRoundedBorderedText">
        <span style="display: inline-block; height: 3em;">
            <img runat="server" style="height: 100%; width: 100%; object-fit: contain"
                src="~/Images/Attention 450x450px.png"
                alt="attention" />
        </span>
        <div class="bolder-larger" runat="server" meta:resourcekey="EncartInformation2"
            style="grid-row: 1 / 2; grid-column: 2 / 3; width: fit-content">
            _les formations..
        </div>
    </div>


    <br />
    <br />
    <ol>
        <li>Première étape
            <ul>
                <li>Paiement de 20 €, le centre ENIC-NARIC France étudiera la recevabilité de votre dossier. Si votre dossier est déclaré recevable, il pourra être expertisé dans le cadre d’une 2e étape</li>
            </ul>
        </li>
        <li>Deuxième étape
            <ul>
                <li>Paiement complémentaire de 70€, votre dossier sera expertisé en vue de la délivrance d’une attestation de comparabilité de votre diplôme ou d’une attestation de reconnaissance de période d’études.</li>
            </ul>
        </li>
    </ol>

    <br />
    <br />


    <div class="row">
        <div class="col col-sm-6">
            <span>
                <asp:Literal runat="server" Text="_je mengage" meta:resourcekey="panel_nonrefugie_lig5" /></span>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">

    <script type="text/javascript"> 


        const beforeUnloadHandler = (event) => {
            // Recommended
            event.preventDefault();

            // Included for legacy support, e.g. Chrome/Edge < 119
            event.returnValue = true;
        };

        const nameInput = document.querySelector("#name");

        nameInput.addEventListener("input", (event) => {
            if (event.target.value !== "") {
                window.addEventListener("beforeunload", beforeUnloadHandler);
            } else {
                window.removeEventListener("beforeunload", beforeUnloadHandler);
            }
        });


    </script>
</asp:Content>

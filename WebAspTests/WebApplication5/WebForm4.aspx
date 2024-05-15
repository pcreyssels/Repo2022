<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication5.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox runat="server" ID="TextBoxSession" ClientIDMode="Static"></asp:TextBox>

    <asp:RegularExpressionValidator ID="Regv_tbs" runat="server"
        ValidationExpression="^([0]?[1-9]|[1][0-2])[\/](19[5-9]\d|20[0-4]\d|2050)$"
        ErrorMessage="JJ/MMMM"
        ControlToValidate="TextBoxSession" Display="Dynamic" meta:resourcekey="regvAnnee">
    </asp:RegularExpressionValidator>
    <br />
    <hr />

    <asp:CustomValidator ID="CusvDatesSessionDelivrance"
        meta:resourcekey="CusvDatesSessionDelivrance"
        ClientValidationFunction="ClientDatesSessVal"
        OnServerValidate="CusvDatesSessionDelivrance_ServerValidate"
        Display="Dynamic"
        ErrorMessage="_erreur_dates_annees"
        CssClass="formulaire-erreur"
        runat="server" />

    <br />
    <hr />

    <asp:TextBox ID="TextBoxDatDeliv" ClientIDMode="Static" runat="server" CssClass="form-control formulaire-control"
        TextMode="Date" />


    <br />
    <hr />
    <asp:Button runat="server" Text="CLICK" />


    <script>

        $(function () {
            var numbox = document.getElementById("NumberBox");
            //numbox.setAttribute("value", "12");
            //document.getElementById('CheckBox1').checked = true;


            //var form = $("#TextBoxX");
            //form.validate();

        })


        const nbo = document.getElementById("TextBoxSession");
        nbo.addEventListener("focusout", (event) => {
            Page_ClientValidate();
        });

        function ClientDatesSessVal(source, arguments) {

            console.log('validate');
            var datev = document.getElementById("TextBoxDatDeliv").value;
            var annee = datev.substring(0, 4);
            var annee_n = parseInt(annee);

            var sessionMA = document.getElementById("TextBoxSession").value; //..getAttribute("value");
            var sessionA = sessionMA.substring(3, 7);
            console.log('valeur session :' + sessionMA)
            console.log('annee extraite :' + sessionA)
            var sessionA_n = parseInt(sessionA);
            if (!isNaN(annee_n) && !isNaN(sessionA_n)) {
                if (sessionA_n > annee_n) {
                    console.log('annee > number');
                    arguments.IsValid = false;
                }
                else {
                    arguments.IsValid = true;
                }
            }
        }


    </script>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:LinkButton ID="LinkButton1" runat="server" Text="CLICK">
        <img runat="server" id="IL" src="~Images/gb.png" width="50" height="50" />
    </asp:LinkButton>

    <asp:LinkButton ID="LinkButton2" runat="server" Text="CLICK">
        <img runat="server" id="Img1" src="~Images/fr.png"
            width="50" height="50" />
    </asp:LinkButton>

    <%-- <div class="block200x500">
        <asp:Panel runat="server" CssClass="bandeaulegal">
            <asp:Label CssClass="information-justify-center" runat="server" ID="Label2" Text="info globale" meta:resourcekey="Site_footer_infoglobal">
                France FR Education international - Département reconnaissance des diplômes - Centre ENIC-NARIC France
            </asp:Label>

            <asp:Label CssClass="information-justify-left" runat="server" ID="Label1" Text="info globale" meta:resourcekey="Site_footer_infoglobal">
    Les informations recueillies font l'objet d'un traitement informatique nécessaire à l'instruction de votre demande d'attestation de comparabilité.
    Les destinataires des données sont le Département reconnaissance des diplômes de France Education international. <br />
                Conformément <b>à la loi « Informatique et libertés » du 6 janvier 1978</b>, vous bénéficiez d'un droit d'accès et de rectification aux informations qui vous concernent.<br /><br />
    Vous pouvez l'exercer en vous adressant au Département reconnaissance des diplômes de France Education international.
            </asp:Label>
        </asp:Panel>

    </div>--%>

    <asp:TextBox runat="server" TextMode="Date">

    </asp:TextBox>

    <asp:Calendar runat="server"></asp:Calendar>


    <asp:HiddenField runat="server" ID="hf1" Value="bonjourinit" ClientIDMode="Static" />

    <asp:Button runat="server" Text="Speech"
        CausesValidation="false"
        OnClientClick="texttospeech();return false;" />

    <button runat="server" onclick="texttospeech()">SPEECH2</button>

    <hr style="border: 1px solid red;" />
    <asp:Label runat="server" ID="lab1" ClientIDMode="Static"></asp:Label>
    <hr style="border: 1px solid red;" />




</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
    <script type="text/javascript">

        $(function () {
            var l1 = document.getElementById('<%=lab1.ClientID %>');


            // alert(l1.innerText);

            // l1.innerText = 'toto';

            var hf1 = document.getElementById('<%=hf1.ClientID %>');
            var v = hf1.getAttribute("value");
            alert(v.toString());

            const message = new SpeechSynthesisUtterance();

            // set the text to be spoken
            message.text = v;

            // create an instance of the speech synthesis object
            const speechSynthesis = window.speechSynthesis;

            // start speaking
            speechSynthesis.speak(message);

        })



        function texttospeech() {
            var hf1 = document.getElementById('<%=hf1.ClientID %>');
            var v2 = hf1.getAttribute("value");

            alert(v2);

            const message2 = new SpeechSynthesisUtterance();

            // set the text to be spoken
            message2.text = v2;

            // create an instance of the speech synthesis object
            const speechSynthesis = window.speechSynthesis;

            // start speaking
            speechSynthesis.speak(message2);
            //alert("val1");
        }

    </script>
</asp:Content>

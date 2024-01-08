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

    <button runat="server" causesvalidation="false" type="button" id="button_refresh" onclick="texttospeech()" class="btn btn-default " runat="server">
        <span class="glyphicon glyphicon glyphicon-volume-up"></span>
    </button>

    <button runat="server" onclick="texttospeech()">SPEECH2</button>

    <hr style="border: 1px solid red;" />
    <asp:Label runat="server" ID="lab1" ClientIDMode="Static"></asp:Label>
    <hr style="border: 1px solid red;" />

    <br />
    <hr style="border: 1px solid green;" />

    <asp:TextBox ID="TextBoxDate" runat="server" TextMode="Date" />


    <%-- \b(19|[2-9][0-9])\d{2}-([0|1])\d-([0-3])\d\b  > année >1900 --%>
    <%-- ^([0-9]{4}|[0-9]{2})[-]([0]?[1-9]|[1][0-2])[-]([0]?[1-9]|[1|2][0-9]|[3][0|1])$ matche YYYY-MM-DD --%>
    <%-- ^((19[3-9][0-9])|(20[0-9]{2}))[-]([0]?[1-9]|[1][0-2])[-]([0]?[1-9]|[1|2][0-9]|[3][0|1])$ matche YYYY-MM-DD  avec YYYY dans [1930 -2100]--%>
    <asp:RegularExpressionValidator ID="reqvDateRegex" runat="server"
        ControlToValidate="TextBoxDate" Display="Dynamic" ErrorMessage="date invalide"
        EnableClientScript="true"
        ValidationExpression="^((19[3-9][0-9])|(20[0-9]{2}))[-]([0]?[1-9]|[1][0-2])[-]([0]?[1-9]|[1|2][0-9]|[3][0|1])$" />

    <br />
    <asp:Button ID="bval" runat="server" Text="VALID" OnClick="bval_Click" />

    <br />
    <hr style="border: 1px solid blue;" />

    <asp:Label ID="Label2" runat="server" Text=" comparaison de dates " />
    <br />
    <asp:Label ID="ld1" runat="server" Text=" DATE1 " />
    <asp:TextBox ID="TextBox_Date1" runat="server" TextMode="Date" />
    <br />
    <asp:Label ID="Label1" runat="server" Text=" DATE2 " />
    <asp:TextBox ID="TextBox_Date2" runat="server" TextMode="Date" />

    <%-- OPERATOR definit la condition pour que la comparaison entraine la validité (pas d'erreur affichée 'la valeur est différente de...)--%>
    <br />
    <asp:Label  runat="server" Text=" egalite :  " />
    <asp:CompareValidator ID="CpmvDates" runat="server"
        Operator="Equal"
        Type="Date"
        ControlToCompare="TextBox_Date2"
        ControlToValidate="TextBox_Date1" Display="Dynamic"
        ErrorMessage="date 1 doit etre égale à date 2"
        EnableClientScript="true"
        />

    <br />
    <%-- OPERATOR GreaterThan ControlToValidate doit être supérieur à ControlToCompare )--%>
    <asp:Label  runat="server" Text=" superieur :  " />
    <asp:CompareValidator ID="CompareValidator1" runat="server"
        Operator="GreaterThan"
        Type="Date"
        ControlToCompare="TextBox_Date2"
        ControlToValidate="TextBox_Date1" Display="Dynamic"
        ErrorMessage="date 1 doit être supérieur à  date 2"
        EnableClientScript="true"
        />

    <br />
    <%-- OPERATOR GreaterThan ControlToValidate doit être inférieur à ControlToCompare )--%>
    <asp:Label  runat="server" Text=" inferieur :  " />
    <asp:CompareValidator ID="CompareValidator2" runat="server"
        Operator="LessThan"
        Type="Date"
        ControlToCompare="TextBox_Date2"
        ControlToValidate="TextBox_Date1" Display="Dynamic"
        ErrorMessage="date 1 doit être inférieur à  date 2"
        EnableClientScript="true"
       />

    <br />
    <%-- OPERATOR GreaterThan ControlToValidate doit être différente à ControlToCompare )--%>
    <asp:Label  runat="server" Text=" différent :  " />
    <asp:CompareValidator ID="CompareValidator3" runat="server"
        Operator="NotEqual"
        Type="Date"
        ControlToCompare="TextBox_Date2"
        ControlToValidate="TextBox_Date1" Display="Dynamic"
        ErrorMessage="date 1 doit etre différente à date 2"
        EnableClientScript="true"
       />

    <br />
    <%-- OPERATOR GreaterThan ControlToValidate doit être supérieure ou égale à ControlToCompare )--%>
    <asp:Label  runat="server" Text=" sup ou = " />
    <asp:CompareValidator ID="CompareValidator4" runat="server"
        Operator="GreaterThanEqual"
        Type="Date"
        ControlToCompare="TextBox_Date2"
        ControlToValidate="TextBox_Date1" Display="Dynamic"
        ErrorMessage="date 1 doit etre supérieure ou égale à date 2"
        EnableClientScript="true"
        />

    <br />
    <%-- OPERATOR GreaterThan ControlToValidate doit être supérieure ou égale à ControlToCompare )--%>
    <asp:Label  runat="server" Text=" inf ou = " />
    <asp:CompareValidator ID="CompareValidator5" runat="server" Text=" doit etre inférieure ou égale "
        Operator="LessThanEqual"
        Display="Static"
        Type="Date"
        ControlToCompare="TextBox_Date2"
        ControlToValidate="TextBox_Date1" 
        ErrorMessage="date 1 doit etre inférieure ou égale à date 2"
        EnableClientScript="true"
        />
        
    <br />


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
    <script type="text/javascript">

        $(function () {
            var l1 = document.getElementById('<%=lab1.ClientID %>');


            // alert(l1.innerText);

            // l1.innerText = 'toto';

            var hf1 = document.getElementById('<%=hf1.ClientID %>');
            var v = hf1.getAttribute("value");

            //alert(v.toString());

            const message = new SpeechSynthesisUtterance();

            // set the text to be spoken
            message.text = v;

            // create an instance of the speech synthesis object
            const speechSynthesis = window.speechSynthesis;

            // start speaking
            //speechSynthesis.speak(message);

        })



        function texttospeech() {
            var hf1 = document.getElementById('<%=hf1.ClientID %>');
            var v2 = hf1.getAttribute("value");

            const message = new SpeechSynthesisUtterance();

            // set the text to be spoken
            message.text = v2;

            // create an instance of the speech synthesis object
            const speechSynthesis = window.speechSynthesis;

            // start speaking
            speechSynthesis.speak(message);
        }

    </script>
</asp:Content>

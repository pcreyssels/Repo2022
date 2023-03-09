<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm22.aspx.cs" Inherits="WebApplication1.WebForm22" %>

<%@ Implements Interface="System.Web.UI.ICallbackEventHandler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:TextBox ID="TextBoxTelPort" runat="server" MaxLength="50" CssClass="form-control formulaire-control" meta:resourcekey="phone" ToolTip="_" />
    <%-- validateur --%>
    <%-- https://www.regextester.com/1978 --%>
    <%-- ((?:\+|00)[17](?: |\-)?|(?:\+|00)[1-9]\d{0,2}(?: |\-)?|(?:\+|00)1\-\d{3}(?: |\-)?)?(0\d|\([0-9]{3}\)|[1-9]{0,3})(?:((?: |\-)[0-9]{2}){4}|((?:[0-9]{2}){4})|((?: |\-)[0-9]{3}(?: |\-)[0-9]{4})|([0-9]{7})) --%>

    <asp:RegularExpressionValidator ID="reqvTelPort" runat="server"
        ControlToValidate="TextBoxTelPort" Display="Static"
        ErrorMessage="non valide "
        ValidationExpression="((?:\+|00)[17](?: |\-)?|(?:\+|00)[1-9]\d{0,2}(?: |\-)?|(?:\+|00)1\-\d{3}(?: |\-)?)?(0\d|\([0-9]{3}\)|[1-9]{0,3})(?:((?: |\-)[0-9]{2}){4}|((?:[0-9]{2}){4})|((?: |\-)[0-9]{3}(?: |\-)[0-9]{4})|([0-9]{7}))"
        CssClass="formulaire-erreur" />
    <hr />

    <asp:CheckBox ID="checkbox2" runat="server"
                AutoPostBack="true"
                Text="texte checkbox 2"
                CausesValidation="false"
                TextAlign="Right" />
            <br />
    <hr />

    <%--<asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>--%>
    <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Always">
        <ContentTemplate>

            <asp:CheckBox ID="checkbox1" runat="server"
                AutoPostBack="true"
                Text="texte checkbox"
                OnCheckedChanged="checkbox1_CheckedChanged"
                CausesValidation="true"
                TextAlign="Right" />
            <br />


            <asp:TextBox CausesValidation="false" ID="TextBox1" runat="server" MaxLength="50"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1"
                Display="Static"
                ErrorMessage="error"
                ForeColor="green"
                Font-Names="verdana"
                Font-Size="10pt"
                OnServerValidate="CustomValidator1_ServerValidate"
                runat="server" />

            <br />
            <br />
            <br />

            <asp:Button ID="BV" runat="server" OnClick="BV_Click" Text="VALIDER" />
            <asp:ValidationSummary
                ID="valSum"
                DisplayMode="List"
                ShowSummary="true"
                ShowValidationErrors="true"
                runat="server"
                HeaderText="entete validation summary"
                Font-Names="verdana"
                Font-Size="12" />

            <br />
            <br />
        </ContentTemplate>
        <Triggers>
            <%--<asp:AsyncPostBackTrigger ControlID="checkbox1" EventName="CheckedChanged" />--%>
        </Triggers>
    </asp:UpdatePanel>




    <br />
    <h4>PARTIE APPELS PAR CALLBACK </h4>
    <%-- partie envoi data par callback --%>
    <input type="button" value="Callback"
        onclick="CallServer('bonjour', alert('Callback sent to Server'))" />
    <br />
    <div>****** </div>
    <input type="button" value="Callback2"
        onclick="CallServer('bonjour', null))" />
    <br />
    <span id="Message">span_message1</span>
    <div>****** </div>
    <span id="Message2">span_message2</span>
    <br />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
    <script type="text/javascript">
        function ReceiveServerData(arg, context) {
            Message.innerText = "Date from server: " + arg;
        }

        function Evaluate() {
            Message2.innerText = "COUCOU from client: " + arg;
        }
        $(function () {
            $('[data-toggle="popover"]').popover()
        })
    </script>

     
</asp:Content>

<%@ Page Title="" Language="C#" Culture="en-US" UICulture="en-US" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="WebApplication3.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

    <h3>
        <asp:Label ID="intitule_page" meta:resourcekey="_intitule_page" runat="server" Text="_suivi"></asp:Label>
    </h3>


    <div class="well">
        <div class="row">
            <div class="col col-sm-12" style="white-space: pre-wrap">
                <asp:Literal ID="literal_information" runat="server" meta:resourcekey="message_info_choixPaiement_CB" Text="_information" />
            </div>
        </div>
    </div>


    <asp:CheckBox ID="checkboxAutre" runat="server"
        ClientIDMode="Static"
        AutoPostBack="False"
        Text="1"
        onclick="cbclick()"
        TextAlign="Right" />

    <asp:CheckBox ID="checkbox1" runat="server"
        ClientIDMode="Static"
        AutoPostBack="False"
        Text="2"
        onclick="cbclick()"
        TextAlign="Right" />

    <div runat="server" id="bloc">
         <asp:TextBox ID="tb1" runat="server">BONJOUR</asp:TextBox>
        <br />
        <asp:Label ID="label1" runat="server">LABEL</asp:Label>
    </div>
   

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
    <script>
     <%--$(function () {
         var bacc = document.getElementById('<%=button_accept.ClientID%>');
         bacc.disabled = true;
     })--%>

        function cbclick() {
            var cb1s = document.getElementById('<%=checkboxAutre.ClientID%>');

           

            //var cb3s = document.getElementById('cb3');
            //var cb4s = document.getElementById('cb4');

            var bacc = document.getElementById('bloc');

            if (cb1s.checked) {
                bacc.style.visibility = "hidden";
            }
            else {
                bacc.style.visibility = "visible";
            }

            //if (cb2s.checked) {
            //    bacc.style.visibility = "hidden";
            //}
            //else {
            //    bacc.style.visibility = "visible";
            //}
        }
    </script>
</asp:Content>

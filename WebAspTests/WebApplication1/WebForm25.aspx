<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm25.aspx.cs" Inherits="WebApplication1.WebForm25" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="Button1" ClientIDMode="Static" runat="server" Text="Click" OnClick="Button1_Click" />

    <br />

    <asp:Label ID="label1" runat="server" Text="bonjour"/>

    <br />

    <asp:Label ID="label2" ClientIDMode="Static" runat="server" Text="bonjour 2 "/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
    <script>



     <%-- SCRIPT pour les popover --%>
        $(function () {
            $('[data-toggle="popover"]').popover()
        })

        Mousetrap.bind('command+shift+k', function (e) {
            var buttonctrl = document.getElementById('<%=Button1.ClientID %>');
            buttonctrl.click();
            return false;
        });

        Mousetrap.bind(['ctrl+y'], function (e) {
            var buttonctrl = document.getElementById('<%=Button1.ClientID %>');
            return false;
        });

        Mousetrap.bind('command+shift+l', function (e) {
            var label1 = document.getElementById('<%=label2.ClientID %>');
            label1.innerText = 'shortcut';
            return false;
        });


    </script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="WebApp2.Accueil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>BONJOUR</h3>

    <asp:Label runat="server">entrer utilisateur</asp:Label>
    <asp:TextBox runat="server" ID="user"></asp:TextBox>
    <hr /><br />
    <asp:Label runat="server">entrer password</asp:Label>
    <asp:TextBox runat="server" ID="pwd"></asp:TextBox>
    <hr /><br />
    <asp:Button ID="valider" runat="server" Text="Valider" OnClick="valider_Click"/>
    <hr /><br />
    <asp:Label ID="statutval" runat="server">statut validité</asp:Label>
</asp:Content>

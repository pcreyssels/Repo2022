<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApp2.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Login ID="login1" runat="server"
        OnAuthenticate= "login1_Authenticate"
        OnLoggedIn="login1_LoggedIn"
        OnLoggingIn="login1_LoggingIn"
        DestinationPageUrl="~/Accueil.aspx"
        
        >

    </asp:Login>

</asp:Content>

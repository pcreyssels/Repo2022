<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebFormLogin.aspx.cs" Inherits="AspWebFormNoupd.WebFormLogin" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="server" >

    <link rel="stylesheet" href="Content/StyleSheet1.css" />
    <link rel="stylesheet" href="Content/StyleSheet1.scss" />
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Login ID="Login1" runat="server"></asp:Login>

    <hr />

    <button class="btn btn-danger">BONJOUR</button>
    <hr />

    <button class="btn btn-custom">BONJOUR 2</button>
</asp:Content>

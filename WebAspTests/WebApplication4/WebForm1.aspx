<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div>
        <h3>Popover Example</h3>
        <a href="#" title="Dismissible popover" data-toggle="popover" data-content="Click anywhere in the document to close this popover">Click me</a>
    </div>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="cphScript" runat="server">

    <script>
        $(document).ready(function () {
            $('[data-toggle="popover"]').popover();
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

</asp:Content>


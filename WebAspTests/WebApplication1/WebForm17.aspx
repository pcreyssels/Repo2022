<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm17.aspx.cs" Inherits="WebApplication1.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <button type="button" class="btn btn-primary" data-toggle="popover" data-trigger="hover" data-placement="right" data-content="Now hover out.">
        Hover over me outside update pannel popover
    </button>

  <div>
        Vous souhaitez aller webform15 <a href="Webform15.aspx">cliquer ici</a>
    </div>
    <div>
        Vous souhaitez aller webform16 <a href="Webform16.aspx">cliquer ici</a>
    </div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
</asp:Content>

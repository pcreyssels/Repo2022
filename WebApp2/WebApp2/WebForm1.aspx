<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Button runat="server"
        CssClass="btn btn-default"
        Text="Bonjour" />

    <asp:Button runat="server"
        CssClass="btn btn-info"
        Text="Bonjour info" />

    <hr />

    <asp:Button runat="server"
        CssClass="btn btn-danger btn-block"
        Text="Bonjour info" />

    <hr />

    <div class="pull-left">

         <asp:Button runat="server"
        CssClass="btn btn-warning"
        Text="Bonjour warning" />

    </div>

    <br /><hr />

    <div class="pull-right">

         <asp:Button runat="server"
        CssClass="btn btn-warning"
        Text="Bonjour warning" />

    </div>

    <br /><hr />
    <div>cote gauche</div>
    <div class="center-block"> texte centre 2 </div>
    <div>cote droit</div>
     <br /><hr />

    <img src="..." alt="..." class="img-rounded">
    <img src="..." alt="..." class="img-circle">
    <img src="..." alt="..." class="img-thumbnail">

    <p class="bg-warning">texte avec fond warning</p>
    <span class="caret"></span>
    <hr />

    <div class="row">
        <div class="col-xs-12 col-md-8">.col-xs-12 .col-md-8</div>
        <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
    </div>

    <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
    <div class="row">
        <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
        <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
        <div class="col-xs-6 col-md-4">.col-xs-6 .col-md-4</div>
    </div>

    <!-- Columns are always 50% wide, on mobile and desktop -->
    <div class="row">
        <div class="col-xs-6">.col-xs-6</div>
        <div class="col-xs-6">.col-xs-6</div>
    </div>

</asp:Content>

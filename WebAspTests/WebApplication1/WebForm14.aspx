<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm14.aspx.cs" Inherits="WebApplication1.WebForm14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <button type="button" class="btn btn-primary" data-toggle="popover" data-trigger="hover" data-placement="right" data-content="Now hover out.">
        Hover over me outside update pannel popover
    </button>

    <asp:LinkButton ID="paidButton" runat="server" meta:resourcekey="paid_linkbutton" Text="_pailig" OnClick="paidButton_Click" />

    <div>
        Vous souhaitez aller webform15 <a href="Webform15.aspx">cliquer ici</a>
    </div>
    <div>
        Vous souhaitez aller webform17 <a href="Webform17.aspx">cliquer ici</a>
    </div>
    <div>
        voici un lien hash vers un texte ailleurs dans la page
        <a href="#basdepage">clic bas de page</a>
    </div>
    <hr />

    <%--<asp:ScriptManager ID="ScriptManager1" runat="server" />--%>

    <hr style="border-top: 1px solid blue" />
    <asp:UpdatePanel ID="UpdatePanel1"
        runat="server">
        <ContentTemplate>


            <button type="button" class="btn btn-primary" data-toggle="popover" data-trigger="focus" data-placement="right" data-content="Now click somewhere else">
                Click me popover
            </button>

            <hr />

            <button type="button" class="btn btn-alert" data-toggle="popover" data-trigger="click" data-placement="right" data-content="Now click somewhere else">
                Click me popover data-trigger click
            </button>

            <hr />

            <button type="button" class="btn btn-info" data-toggle="popover" data-trigger="hover" data-placement="right" data-html="true" data-content="Now <b>click somewhere</b> else">
                Click me popover data-trigger hover
            </button>

            <hr />

            <button type="button" class="btn btn-primary" data-toggle="tooltip" title="Top shoes" style="margin: 30px;">
                Shoes tooltip
            </button>

            <hr />

            <asp:Button runat="server" ID="Button2" OnClick="Button2_Click" Text="bouton dans update" />

        </ContentTemplate>
    </asp:UpdatePanel>
    <hr style="border-top: 1px solid blue" />

    <asp:Button runat="server" ID="bouton1" OnClick="bouton1_Click" Text="bouton hors update" />

    <hr />
    <a href="/WebForm12">Website</a>

    <hr />
    <div runat="server" id="d1" meta:resourcekey="_data">BONJOUR </div>

    <div runat="server" id="d2">BONJOUR </div>

    <div runat="server" id="id3" meta:resourcekey="_valeur1">_BONJOUR </div>

    <asp:Literal runat="server" ID="L1" Text="_literal" Mode="PassThrough" meta:resourcekey="_valeur_literal">_BONJOUR </asp:Literal>

    <hr />
    <asp:TextBox ID="textbox1" runat="server" Text="init"></asp:TextBox>
    <asp:Button runat="server" CausesValidation="true" ID="Button3" OnClick="Button3_Click" Text="textbox CV true" />
    <asp:Button runat="server" CausesValidation="false" ID="Button4" OnClick="Button4_Click" Text="textbox CV false" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
</asp:Content>

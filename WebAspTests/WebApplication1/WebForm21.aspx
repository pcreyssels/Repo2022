<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm21.aspx.cs" Inherits="WebApplication1.WebForm21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel panel-default">
        <div class="panel-body">
            <div style="display: grid; grid-template-columns: 4fr 4fr 1fr 8fr 8fr; align-items: center">

                <button id="b1" runat="server" type="button" class="btn btn-sitpho">B1</button>

                <button id="b2" type="button" runat="server" onserverclick="b2_ServerClick" class="btn btn-sitpho">B2</button>


                <div>&nbsp</div>

                <asp:Literal runat="server" Text="TEXTE 2 BONJOUR" ID="info1" />
                <div>
                    TEXTE 3 BONJOUR
                </div>

            </div>
        </div>
    </div>

    <asp:Button Text="BOUTON3" ID="B3" OnClick="B3_Click" runat="server" />
    <br />
    <asp:Button Text="BOUTON4" ID="B4" OnClick="B4_Click" runat="server" />

    <br />
    <asp:Button Text="BOUTON sitpho" CssClass="btn btn-sitpho" ID="Button5" runat="server" />

    <br />
    <asp:Button Text="BOUTON btn-info" CssClass="btn btn-info" ID="Button6" runat="server" />

    <br />
    <h2>GRILLE 1 </h2>
    <div style="display: grid; grid-template-columns: 8fr 1fr 1fr; grid-template-rows: 1fr">
        <%--<asp:Button Text="bouton 2" runat="server" CssClass="grid-column-start: 3;grid-column-end: 4;"  />
        <asp:Button Text="bouton 1" runat="server" CssClass="grid-column-start: 1;grid-column-end: 2;"  />--%>
        <%--<button style="grid-column-start: 1;grid-column-end: 2;grid-row-start: 1;grid-row-end: 2;">BOUTON HTML</button>--%>
        <button>BOUTON HTML 1</button>
        <button>BOUTON HTML 2</button>
        <button>BOUTON HTML 3</button>
    </div>
    <h2>GRILLE 2 </h2>
    <%-- 3 elements  1&fr  10fr & fr  --%>
    <div style="display: grid; gap: 0.5em; align-items: center; grid-template-columns: 8fr 3fr 3fr; grid-template-rows: 1fr">
        <button runat="server" style="grid-column: 3 / 4; grid-row: 1 / 2">BOUTON HTML 4</button>
        <button style="grid-column: 2 / 3; grid-row: 1 / 2">BOUTON HTML 5</button>
        <asp:Label runat="server" Style="background-color: burlywood; grid-column: 1 / 2; grid-row: 1 / 2" Text="asp:literal"></asp:Label>
    </div>


    <h2>GRILLE 2.1 </h2>
    <%-- 3 elements  1&fr  10fr & fr  --%>
    <div style="display: grid; gap: 0.5em; align-items: stretch; grid-template-columns: 8fr 3fr 3fr; grid-template-rows: 1fr">
        <button runat="server" style="grid-column: 3 / 4; grid-row: 1 / 2">BOUTON HTML 4</button>
        <button style="grid-column: 2 / 3; grid-row: 1 / 2">BOUTON HTML 5</button>
        <asp:Label runat="server" Style="background-color: burlywood; grid-column: 1 / 2; grid-row: 1 / 2" Text="asp:literal"></asp:Label>
    </div>

    <h2>GRILLE 2.2 </h2>
    <%-- 3 elements  1&fr  10fr & fr  --%>
    <div style="display: grid; gap: 0; align-items: stretch; grid-template-columns: 8fr 3fr 3fr; grid-template-rows: 1fr">
        <button runat="server" style="grid-column: 3 / 4; grid-row: 1 / 2">BOUTON HTML 4</button>
        <button style="grid-column: 2 / 3; grid-row: 1 / 2">BOUTON HTML 5</button>
        <span style="background-color: burlywood; grid-column: 1 / 2; grid-row: 1 / 2; margin-block:auto">span htmlL</span>
    </div>

    <h2>GRILLE 2.3 </h2>
    <%-- 3 elements  1&fr  10fr & fr  --%>
    <div style="display: grid; gap: 0; align-items: stretch; grid-template-columns: 8fr 3fr 3fr; grid-template-rows: 1fr">
        <button runat="server">BOUTON HTML 4</button>
        <button>BOUTON HTML 5</button>
        <%--<div style="background-color:lightpink; align-self:center">RAW HTML</div>--%>
        <%--<div style="background-color:lightpink; text-align:center">RAW HTML</div>--%>
        <label style="display:inline; background-color: lightpink; vertical-align: sub">html label</label>
    </div>

    <h2>GRILLE 2.4 OK ! </h2>
    <%-- 3 elements  1&fr  10fr & fr  --%>
    <div style="display: grid; gap: 0.5em; align-items: stretch; grid-template-columns: 8fr 3fr 3fr; grid-template-rows: 1fr">
        <button runat="server">BOUTON HTML 4</button>
        <button>BOUTON HTML 5</button>
        <%--<div style="background-color:lightpink; align-self:center">RAW HTML</div>--%>
        <%--<div style="background-color:lightpink; text-align:center">RAW HTML</div>--%>
        <div style="background-color: lightpink; display:inline-grid; justify-content:center; align-items:center" > RAW HTML insp</div>
    </div>

    <hr />

    <h2>GRILLE 2.5  </h2>
    <%-- 3 elements  1&fr  10fr & fr  --%>
    <div style="display: grid; gap: 0.5em; align-items: stretch; grid-template-columns: 8fr 3fr 3fr; grid-template-rows: 1fr">
        <button class="btn btn-sitpho" runat="server">BOUTON HTML 4 texte vraiment long à afficher -----------</button>
        <asp:Button runat="server" CssClass="btn btn-sitpho" Text="B5"></asp:Button>
        <%--<div style="background-color:lightpink; align-self:center">RAW HTML</div>--%>
        <%--<div style="background-color:lightpink; text-align:center">RAW HTML</div>--%>
        <div style="background-color: lightpink; display:inline-grid; justify-content:center; align-items:center" > RAW HTML insp</div>
    </div>

    <hr />
    <asp:Button ID="basp" runat="server" Style="background-color: aquamarine" Text="Bouton ASP"  OnClick="basp_Click"/>
    <hr />
    <div id="aze" runat="server" style="color:red">DIV RUNAT SERVER </div>
    <h2>GRILLE 3 </h2>
    <div style="display: grid; grid-template-columns: 8fr 4fr 1fr 1fr; grid-template-rows: 1fr">
        <asp:Button runat="server" Style="grid-column: 4 / 5; grid-row: 1 / 2" Text="BOUTON HTML 7"></asp:Button>
        <asp:Button runat="server" Style="grid-column: 3 / 4; grid-row: 1 / 2" Text="BOUTON HTML 8"></asp:Button>
        <asp:Button runat="server" Style="grid-column: 2 / 3; grid-row: 1 / 2" Text="BOUTON HTML 9"></asp:Button>
        <asp:Button runat="server" Style="grid-column: 1 / 2; grid-row: 1 / 2" Text="BOUTON HTML 9"></asp:Button>
    </div>

    <hr />
    <h2>ELEMENT SEUL </h2>
    <div style="background-color: aquamarine;">
        <span>texte niveau normal </span>----- <span style="vertical-align: sub">niveau sub</span> ------ <span style="vertical-align: super">niveau super</span>
    </div>
    <div style="background-color: lightgreen;">
        <span>texte niveau normal </span>----- <span style="vertical-align: text-bottom">niveau text bottom</span> ------ <span style="vertical-align: text-top">niveau text top</span>
    </div>
    <div style="background-color: lightcyan; display: table-cell; vertical-align: top;">
        texte top
    </div>
    <div style="background-color: lightpink; display: table-cell; vertical-align: bottom;">
        texte bottom
    </div>
    <br />

    <div class="container ">
        <%-- <div class="row aligned-row display-flex-center"> --%>
        <div class="row" style="padding: 40px 0">
            <div class="col-md-3 " style="background-color: aquamarine; text-align: center">
                <asp:Label ID="Panel_infovalidation_message" runat="server" Text="asp:label centré horizontal" />
                <%--<asp:Label ID="Label2" CssClass="label-info" runat="server" Text="texte 2  centré" />--%>
            </div>
            <div class="col-md-3 " style="background-color: lightgreen;">
                <asp:Label ID="Label2" runat="server" Text="asp:label centré vertical" />
            </div>
            <div class="col-md-3 " style="background-color: lightsalmon;">
                <span>element SPAN3 </span>
                <%--<span style="display:inline-block; vertical-align:middle"> element SPAN2 </span>--%>
            </div>
            <div class="col-md-3 ">
                <asp:Button ID="Panel_infovalidation_button_Fermer" CssClass="btn btn-sitpho" meta:resourcekey="Panel_infovalidation_button_Fermer" runat="server" Text="_Action2" />
            </div>
        </div>
    </div>

    <br />

    <div style="display: grid; grid-template-columns: 8fr 2fr 2fr; align-items: center">
        <asp:Label ID="Label1" CssClass="label-info" runat="server" Text="texte à afficher centré" />
        <asp:Button ID="Button1" CssClass="btn btn-sitpho" meta:resourcekey="Panel_infovalidation_button_Accueil" runat="server" Text="_Action1" />
        <asp:Button ID="Button2" CssClass="btn btn-sitpho" meta:resourcekey="Panel_infovalidation_button_Fermer" runat="server" Text="_Action2" />
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
</asp:Content>

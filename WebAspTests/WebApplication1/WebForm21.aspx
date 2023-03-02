<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm21.aspx.cs" Inherits="WebApplication1.WebForm21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel panel-default">
        <div class="panel-body">
            <div style="display: grid; grid-template-columns: 4fr 4fr 1fr 8fr 8fr; align-items: center">

                 <button id="b1" runat="server"  type="button" class="btn btn-sitpho" >B1</button>

                <button id="b2"  type="button" runat="server" onserverclick="b2_ServerClick" class="btn btn-sitpho" >B2</button>
               

                <div>&nbsp</div>

                <asp:Literal runat="server" Text="TEXTE 2 BONJOUR" ID="info1" />
                <div>
                    TEXTE 3 BONJOUR
                </div>

            </div>
        </div>
    </div>

    <asp:Button Text="BOUTON3" ID="B3" OnClick="B3_Click" runat="server" />
    <br/>
    <asp:Button Text="BOUTON4" ID="B4" OnClick="B4_Click" runat="server" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
</asp:Content>

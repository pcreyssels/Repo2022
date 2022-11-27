<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="WebApplication1.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <h3>BONJOUR </h3>
    <hr />

    <div class="centegrid0">

        <div>
            COL0
        </div>
        <div style="font-size: 1.5em">
            COL1
        </div>
        <div>
            COL2
        </div>
        <div>
            <button runat="server" id="Button4" onserverclick="Button4_ServerClick">CLICK ME</button>
            <button runat="server" id="Button5" onserverclick="Button5_ServerClick">CLICK ME2</button>
        </div>
        <div>
            COL3
        </div>

    </div>
    <hr />


    <h3>BONJOUR 2 </h3>
    
    <div class="centegrid0">
        <asp:PlaceHolder runat="server" ID="PlaceHolder0"></asp:PlaceHolder>
    </div>

</asp:Content>

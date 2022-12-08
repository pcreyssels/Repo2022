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


     <hr />


    <div class="centegrid0">
        <span> A </span> 
        <span> B </span> 
        <span> C </span>
        <span> D </span>
        <span> E </span>
        <input type="text" />
        <input type="file" />
    </div>

    <hr />


    <div class="centegrid1">
        <span> A </span> 
        <span> B </span> 
        <span> C </span>
        <span> D </span>
        <span> E </span>
        <input type="text" />
        <input type="file" />
        <span class="box1" >F</span>
        <span style="grid-column: 3 / 4; grid-row: 4 / 5 "> G </span>
    </div>

    <hr />


    Select File to Upload: 
    <input id="File1"
        type="file"
        runat="server" />

    <input type="button" 
              id="Button1" 
              value="Upload" 
              onserverclick="Button1_ServerClick"
              runat="server" />

</asp:Content>

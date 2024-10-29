<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="WebApplication4.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <p>video.mp4</p>
        <div class="progressbar-wrapper">
            <div title="downloaded" class="progressbar mp4">100%</div>
        </div>

        <p>musique.mp3</p>
        <div class="progressbar-wrapper">
            <div title="downloading" class="progressbar mp3">50%</div>
        </div>

        <br />
        <hr />

        <div class="progress">
            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
        </div>

        <div class="progress">
            <div id="pb1" runat="server" class="progress-bar" role="progressbar" style="width: 12%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">12%</div>
        </div>

    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">
</asp:Content>

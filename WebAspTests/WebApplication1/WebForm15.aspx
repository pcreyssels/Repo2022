﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm15.aspx.cs" Inherits="WebApplication1.WebForm15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <button type="button" class="btn btn-primary" data-toggle="popover" data-trigger="hover" data-placement="right" data-content="Now hover out.">
        Hover over me outside update pannel popover
    </button>

    <hr />

    <%--<asp:ScriptManager ID="ScriptManager1" runat="server" />--%>

    <hr style="border-top: 1px solid blue"/>
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

            <asp:Button runat="server" ID="Button2" OnClick="Button2_Click" Text="bouton dans update"/>

        </ContentTemplate>
    </asp:UpdatePanel>
    <hr style="border-top: 1px solid blue"/>

    <asp:Button runat="server" ID="bouton1" OnClick="bouton1_Click" Text="bouton hors update"/>

    <hr />
    <a href="/WebForm12">Website</a>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">

    <script>
        //$(function () {
        //    $('[data-toggle="popover"]').popover()
        //})

        //$(function () {
        //    $('[data-toggle="tooltip"]').tooltip()
        //})

        //function pageLoad(sender, args) {
        //    if (args.get_isPartialLoad()) {
        //        //Specific code for partial postbacks can go in here.
        //        //alert("Hello! I am an alert box!!");
        //        $(function () {
        //            $('[data-toggle="popover"]').popover()
        //        })
        //    }
        //}

        //window.onload = function (e) {
        //    alert("onload event !!!");
        //    $('[data-toggle="popover"]').popover()
        //}

        

    </script>
</asp:Content>
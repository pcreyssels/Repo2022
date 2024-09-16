<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="WebApplication4.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">

    <div class="col-md-9 col-md-offset-3">
        <div class="row">
            <div class="col-sm-6 col-sm-push-6">
                contenu col 1
            </div>
            <div class="col-sm-6 col-sm-pull-6">
                contenu col 2
            </div>
        </div>
    </div>

    <br />
    <hr />

    <div class="col-md-9">
        <div class="row">
            <div class="col-sm-6 testclass">
                contenu col 1
            </div>
            <div class="col-sm-6 ">
                contenu col 2
            </div>
        </div>
    </div>

    <br />
    <hr />
    <div class="testclass">
        contenu col 1
    </div>

    <br />
    <hr />
    <div class="testclass2">
        ctx
    </div>
    <asp:GridView>


    </asp:GridView>
</asp:Content>

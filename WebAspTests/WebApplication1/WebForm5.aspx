<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication1.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>
        <asp:Label ID="LabelEncartEtatCivil" runat="server" Text="SUIVI DU DOSSIER "></asp:Label>
    </h3>

    <style>
        .preserve_br_sp{
            white-space: pre-wrap
        }
    </style>

    <div class="container">

        <%-- ENCART EMAIL DOSSIER DATE LIMITE --%>
        <%-- grid --%>
        <div class="panel panel-default">
            <h1 class="panel-title libellePanel">votre dossier : </h1>
            <div class="panel-body">
                <%-- labels intitules --%>
                <div class="row">
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label2" AssociatedControlID="Label_email" runat="server" Text="email" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label3" AssociatedControlID="Label_nodossier" runat="server" Text="dossier" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label4" AssociatedControlID="Label_datelim" runat="server" Text="date limite" />
                    </div>
                </div>
                <%-- 2è  ligne avec données --%>
                <div class="row">
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_email" runat="server" Text="------" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_nodossier" runat="server" Text="------" />
                    </div>
                    <div class="col-sm-4 control-label formulaire-zone-label">
                        <asp:Label ID="Label_datelim" runat="server" Text="------" />
                    </div>
                </div>
            </div>
        </div>

        <%-- bloc --%>
        <div class="well">
            <div class="row">
                <div class="col col-sm-12" style="white-space: pre-wrap" >
                    <asp:Label runat="server" ID="label_info" Text=""></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="col col-sm-12" >
                    <asp:Label CssClass="preserve_br_sp" runat="server" ID="label_info2" Text=""></asp:Label>
                </div>
            </div>

            <div> --- TEXTAREA : ---</div>
            <textarea runat="server" readonly="readonly" id="text_area"></textarea>

            <div> --- HTMLGENERICCONTROL : ---</div>
            <span runat="server" id="aspspan" style="white-space: pre-wrap"  ></span>


            <div class="row">
                <div class="col col-sm-12">
                    <asp:Literal  runat="server" ID="literal_info" Text="" Mode="PassThrough"></asp:Literal>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebApplication1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <h3>
        <asp:Label ID="LabelEncartEtatCivil" runat="server" Text="PERIODE DE FERMETURE DU SITE "></asp:Label>
    </h3>

    <div class="container">
        <div class="panel panel-default">
            <h1 class="panel-title libellePanel">
                Fermeture administrative du <span runat="server" id="aspspan1_df"></span> à <span runat="server" id="aspspan1_hf"></span> au <span runat="server" id="aspspan1_do"></span> inclus 
            </h1>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-12" style="white-space: pre-wrap">
<span class="glyphicon glyphicon-hand-right"></span> Le centre ENIC-NARIC France vous informe que les services de demande d’attestation (dépôt des dossiers) et paiement en ligne ne sont pas accessibles du <span runat="server" id="aspspan2_df"></span> à <span runat="server" id="aspspan2_hf"></span> au <span runat="server" id="aspspan2_do"></span> inclus
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12" style="white-space: pre-wrap">
<span class="glyphicon glyphicon-hand-right"></span> Ces services reprendront normalement le <span runat="server" id="aspspan3_do"></span> à <span runat="server" id="aspspan3_ho"></span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12" style="white-space: pre-wrap">
<span class="glyphicon glyphicon-hand-right"></span> Nous vous remercions de votre compréhension.
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

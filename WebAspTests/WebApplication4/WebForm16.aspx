<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm16.aspx.cs" Inherits="WebApplication4.WebForm16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="panel_erreur" Visible="true" runat="server">
        <section class="well panelheadingfrombs341 polices10541" aria-labelledby="ariadesc_paneldemande_erreursaisie labelinfo_erreur">
            <asp:Label ID="labelinfo_erreur" ClientIDMode="Static" runat="server" Text=""></asp:Label>
        </section>
    </asp:Panel>

    <br />
    <hr />
    <br />

    <div>Merci de nous transmettre votre demande, en précisant les informations suivantes :</div>
    <br aria-hidden="true" />
    <ul>
        <li>Votre numéro de dossier,</li>
        <li>Vos informations d'état civil,</li>
        <li>Les coordonnées que vous souhaitez modifier.</li>
    </ul>
    <div>
        <span class="glyphicon glyphicon-pushpin" style="color: red" aria-hidden="true"></span>
        À noter : Aucun document ne sera envoyé par courrier postal. Une erreur d’adresse postale n’a donc pas d’incidence sur la
réception de votre attestation.
    </div>
    <br aria-hidden="true" />
    <div><span style="color: #55acee" aria-hidden="true">&#x2BC1;</span> Cas spécifiques :</div>
    <br aria-hidden="true" />
    <ul>
        <li>Si votre dossier est en cours de traitement, veuillez contacter directement l'adresse <a href="mailto:ENIC-NARICFrance@france-education-international.fr">contact ENIC-NARIC</a></li>
        <li>Si vous avez déjà reçu votre attestation et qu’elle comporte une erreur, vous pouvez adresser votre demande à la boîte <a href="mailto:ENIC-NARICFrance@france-education-international.fr">contact RECOURS.</a></li>
    </ul>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">
</asp:Content>

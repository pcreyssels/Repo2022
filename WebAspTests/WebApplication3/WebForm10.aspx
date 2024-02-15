<%@ Page Title="" Language="C#" Culture="en-US" UICulture="en-US" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="WebApplication3.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

    <h3>
        <asp:Label ID="intitule_page" meta:resourcekey="_intitule_page" runat="server" Text="_suivi"></asp:Label>
    </h3>


    <div class="well">
     <div class="row">
         <div class="col col-sm-12" style="white-space: pre-wrap">
             <asp:Literal ID="literal_information" runat="server" meta:resourcekey="message_info_choixPaiement_CB" Text="_information" />
         </div>
     </div>
 </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
</asp:Content>

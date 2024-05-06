<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebApplication4.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <input type="text">

    <br />

    <asp:TextBox runat="server" ID="TextBox2"></asp:TextBox>

    <br />

    <ajaxToolkit:MaskedEditExtender runat="server"
    TargetControlID="TextBox2" 
    Mask="999-999-9999" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">

     <script type="text/javascript"> 


         (function ($) {
             $('input').inputmask("datetime", {
                 mask: "1-2-y h:s",
                 placeholder: "dd-mm-yyyy hh:mm",
                 leapday: "-02-29",
                 separator: "-",
                 alias: "dd/mm/yyyy"
             });

         })(jQuery)
     

     </script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication4.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Button runat="server" Text="Bonjour" />
    <br />

    <asp:Label runat="server"> Label bonjour </asp:Label>

    <br />
    <input type="text" name="name" id="name" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">

    <script type="text/javascript"> 


        const beforeUnloadHandler = (event) => {
            // Recommended
            event.preventDefault();

            // Included for legacy support, e.g. Chrome/Edge < 119
            event.returnValue = true;
        };

        const nameInput = document.querySelector("#name");

        nameInput.addEventListener("input", (event) => {
            if (event.target.value !== "") {
                window.addEventListener("beforeunload", beforeUnloadHandler);
            } else {
                window.removeEventListener("beforeunload", beforeUnloadHandler);
            }
        });


    </script> 
</asp:Content>

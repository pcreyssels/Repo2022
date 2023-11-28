<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebApplication3.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:CheckBox ID="cb1" AutoPostBack="true" runat="server" Text="click" OnCheckedChanged="cb1_CheckedChanged" />

    <hr style="height: 2px; border-width: 0; background-color: orangered" />

    <button type="button" onclick="showhideinfo()">
        <asp:Literal runat="server" Text="CLICK PANEL" />
    </button>

    <input type="checkbox" id="checkbox1"
        onclick="showhideinfo2()"
        name="cbname" value="Bike">
    <label for="cbname">checkbox </label>
    <br>

    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />

    <asp:Panel ID="panel1" ClientIDMode="Static" runat="server" Visible="true">
        <asp:Label runat="server" Text="Bonjour Label">

        </asp:Label>
        <button type="button" id="buttok" onclick="hideinfo()">OK</button>
    </asp:Panel>

    <hr style="height: 2px; border-width: 0; background-color: blue" />


    <div style="display: inline-grid; grid-template-columns: auto fit-content(); grid-template-rows: auto auto; align-items: center;" class="lightbluebordered">


        <div style="grid-row: 2 / 3; grid-column: 2 / 3; text-align:right">
            <button type="button" class="btn-sitpho2" id="buttonok2" onclick="hideinfo()">OK</button>
        </div>

        <span runat="server" style="display: inline-block; height: 4em; grid-row: 1 / 2; grid-column: 1 / 2;">
            <img runat="server" id="Img6"
                style="height: 100%; width: 100%; object-fit: contain"
                src="~/Images/Attention 512x512px.png"
                alt="attention" />
        </span>

        <div runat="server" meta:resourcekey="spanitem4"
            style="grid-row: 1 / 2; grid-column: 2 / 3; width: fit-content">
        </div>



        <%--<div runat="server" style="display: block; grid-row: 2 / 3; grid-column: 1 / 2; background-color: yellow">
            <button type="button" id="buttonok" onclick="hideinfo()">OK texte long texte long</button>
        </div>

        <div runat="server" style="display: block; grid-row: 2 / 3; grid-column: 2 / 3; background-color: orange">
            <button type="button" id="buttonok2" onclick="hideinfo()">OK2 texte long </button>
        </div>--%>
    </div>





</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">

    <script>

 <%-- SCRIPT pour les popover --%>
        // fonction ms-ajax API évite la disparition des popovers apres un partial update
        // https://stackoverflow.com/questions/301473/rebinding-events-in-jquery-after-ajax-update-updatepanel
        function pageLoad(sender, args) {
            if (args.get_isPartialLoad()) {
                //Specific code for partial postbacks can go in here.
                //alert("Hello! I am an alert box!!");
                $(function () {
                    $('[data-toggle="popover"]').popover()
                })
            }
        }

        $(function () {
            $('[data-toggle="popover"]').popover()
        })

        function showhideinfo() {
            var panel = document.getElementById('<%=panel1.ClientID %>').style.display = "none";
            /*var v = panel.getAttribute()*/
        }

        function hideinfo() {
            document.getElementById('<%=panel1.ClientID %>').style.display = "none";
        }

        function showhideinfo2() {
            // Get the checkbox
            var checkBox = document.getElementById("checkbox1");
            // Get the output text
            var text = document.getElementById('<%=panel1.ClientID %>');

            // If the checkbox is checked, display the output text
            if (checkBox.checked == true) {
                text.style.display = "block";
            } else {
                text.style.display = "none";
            }
        }

    </script>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebApplication3.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:CheckBox ID="cb1" AutoPostBack="true" runat="server" Text="click" OnCheckedChanged="cb1_CheckedChanged" />

    <hr style="height: 2px; border-width: 0; background-color: orangered" />

    <button type="button" onclick="showhideinfo()">
        <asp:Literal runat="server" Text="CLICK PANEL" />
    </button>


    <h3>CSS container queries </h3>

    <div class="post" style="border: 2px solid blue; width: 600px; height: 300px">
        <div class="card" style="margin-top: 10cqh; border: 2px solid purple;">
            <h2 style="border: 2px solid green">Card title</h2>
            <p style="border: 2px solid red">Card content</p>
        </div>
    </div>


    <h3>fin CSS container queries </h3>


    <h3>CSS container queries 2 </h3>

    <div  style="container-type: size; border: 2px solid blue; width: 600px; height: 300px">
        <div class="card" style="margin-top: 20cqh; border: 2px solid purple;">
            <h2 style="border: 2px solid green">Card title</h2>
            <p style="border: 2px solid red">Card content</p>
        </div>
    </div>


    <h3>fin CSS container queries 2 </h3>


    <asp:CheckBox runat="server" meta:resourcekey="libelle_checkbox" Text="__ Poursuite d’études " ID="checkbox_1" ClientIDMode="Static" />

    <div style="display: grid; grid-template-columns: auto auto; border: 3px solid red; gap: 1em; margin: 20px; padding: 30px">


        <asp:Label runat="server" BackColor="Yellow" Text="Label 1"></asp:Label>

        <asp:DropDownList ID="ColorList"
            AutoPostBack="True"
            runat="server">

            <asp:ListItem Selected="True" Value="White"> White </asp:ListItem>
            <asp:ListItem Value="Silver"> Silver </asp:ListItem>
            <asp:ListItem Value="DarkGray"> Dark Gray </asp:ListItem>
            <asp:ListItem Value="Khaki"> Khaki </asp:ListItem>
            <asp:ListItem Value="DarkKhaki"> Dark Khaki </asp:ListItem>

        </asp:DropDownList>

        <asp:Label runat="server" BackColor="LightCoral" Text="Interlocuteur"></asp:Label>

        <asp:TextBox runat="server" BackColor="LightCyan" Text="Interlocuteur"></asp:TextBox>

        <div>
            <asp:CheckBox runat="server" meta:resourcekey="libelle_checkbox" Text="__ Poursuite d’études " ID="checkbox2" ClientIDMode="Static" />
            <br />
            <asp:Label runat="server" BackColor="LightGray" Text="Texte1"></asp:Label>
            <br />
            <asp:Label Font-Size="Smaller" runat="server" BackColor="LightGray" Text="Texte 2"></asp:Label>
        </div>

        <%--<div style="display: flex; align-items: center">
            <asp:TextBox CssClass="form-control" runat="server" Text="Interlocuteur"></asp:TextBox>
        </div>--%>

        <div style="grid-row: 3 / 4; grid-column: 2 / 3; border: 2px solid red;">
            <%--<asp:TextBox CssClass="form-control" runat="server" Text="Interlocuteur"></asp:TextBox>--%>
            <input type="text" style="margin-top: 0.5lh" />
        </div>


    </div>

    <h3>FIN CHECKBOX H3 </h3>

    <%--<button style="color:red;"></button>--%>


    <asp:HiddenField runat="server" ID="hiddencheckbox" Value="0" ClientIDMode="Static" />
    <input type="checkbox" id="checkbox1"
        onclick="showhideinfo();"
        name="cbname1" value="Bike">
    <label for="cbname1">checkbox </label>
    <br>

    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />
    <asp:Button Text="valid button" ID="validbutton" runat="server" OnClick="validbutton_Click" />
    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />

    <asp:Panel ID="panelinfo2" ClientIDMode="Static" runat="server" Visible="true">
        <asp:Label runat="server" Text="Bonjour Label">

        </asp:Label>
        <button type="button" id="buttok" onclick="hideinfo()">OK</button>
    </asp:Panel>

    <hr style="height: 2px; border-width: 0; background-color: blue" />


    <div id="panelinfo" style="display: inline-grid; grid-template-columns: auto auto; grid-template-rows: auto auto; align-items: center;"
        class="lightbluebordered">
        <div style="grid-row: 2 / 3; grid-column: 2 / 3; text-align: right">
            <button type="button" class="btn-sitpho2" id="buttonok2" onclick="hideinfo()">OK</button>
        </div>
        <span runat="server" style="display: inline-block; height: 4em; grid-row: 1 / 2; grid-column: 1 / 2;">
            <img runat="server" id="Img6"
                style="height: 100%; width: 100%; object-fit: contain"
                src="~/Images/Attention 512x512px.png"
                alt="attention" />
        </span>
        <div style="grid-row: 1 / 2; grid-column: 2 / 3; max-width: 30vw">
            <div runat="server" meta:resourcekey="panelinfonatu" />
        </div>
    </div>

    <hr style="height: 2px; border-width: 0; background-color: blue" />

    <div runat="server" meta:resourcekey="panelinfonatuactsecu" style="aspect-ratio: 16 / 9; max-width: 30vw" />

    <hr style="height: 2px; border-width: 0; background-color: blue" />


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
                document.getElementById('panelinfo').style.display = "none";
            }
        }

        $(function () {
            $('[data-toggle="popover"]').popover()
            document.getElementById('panelinfo').style.display = "none";
        })

        function showhideinfo() {
            // Get the checkbox
            var checkBox = document.getElementById('checkbox1');
            var hiddencheckbox = document.getElementById('hiddencheckbox');
            // Get the output text
            var text = document.getElementById('panelinfo');

            // If the checkbox is checked, display the output text
            if (checkBox.checked == true) {
                text.style.display = "inline-grid";
                hiddencheckbox.setAttribute("value", "1");
            } else {
                text.style.display = "none";
                hiddencheckbox.setAttribute("value", "0");
            }
        }

        function showhideinfo_1() {
            // Get the checkbox
            var checkBox = document.getElementById('checkbox_1');
            // Get the output text
            var text = document.getElementById('panelinfo');

            // If the checkbox is checked, display the output text
            if (checkBox.checked == true) {
                text.style.display = "inline-grid";
            } else {
                text.style.display = "none";
            }
        }

        function hideinfo() {
            document.getElementById('panelinfo').style.display = "none";
        }

        function showhideinfo2() {
            // Get the checkbox
            var checkBox = document.getElementById("checkbox1");
            // Get the output text
            var text = document.getElementById('panelinfo');

            // If the checkbox is checked, display the output text
            if (checkBox.checked == true) {
                text.style.display = "inline-grid";
            } else {
                text.style.display = "none";
            }
        }

    </script>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication4.WebForm5" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Button runat="server" Text="Bonjour" />
    <br />

    <

    <asp:HiddenField runat="server" ID="preventflag" ClientIDMode="Static" Value="toto" ViewStateMode="Enabled"/>

    <%-- OnClientClick="bclick();return false;" --%>
    <asp:Button runat="server" ID="Button_prevent" OnClick="Button_prevent_Click" OnClientClick="bclick()" Text="CLICK OK" />
    <br />
    <asp:Button runat="server" ID="Button_notprevent" OnClick="Button_notprevent_Click" OnClientClick="bclick2()" Text="CLICK NOK" />


    <asp:Label runat="server"> Label bonjour </asp:Label>

    <br />
    <input type="text" name="name" id="name" />

    <br />
    <br />

    <div style="display: inline-grid; grid-template-columns: auto fit-content(); align-items: center" class="RedRoundedBorderedText">
        <span style="display: inline-block; height: 3em;">
            <img runat="server" style="height: 100%; width: 100%; object-fit: contain"
                src="~/Images/Attention 450x450px.png"
                alt="attention" />
        </span>
        <div class="bolder-larger" runat="server" meta:resourcekey="EncartInformation2"
            style="grid-row: 1 / 2; grid-column: 2 / 3; width: fit-content">
            _les formations..
        </div>
    </div>


    <br />
    <br />
    <ol>
        <li>Première étape
            <ul>
                <li>Paiement de 20 €, le centre ENIC-NARIC France étudiera la recevabilité de votre dossier. Si votre dossier est déclaré recevable, il pourra être expertisé dans le cadre d’une 2e étape</li>
            </ul>
        </li>
        <li>Deuxième étape
            <ul>
                <li>Paiement complémentaire de 70€, votre dossier sera expertisé en vue de la délivrance d’une attestation de comparabilité de votre diplôme ou d’une attestation de reconnaissance de période d’études.</li>
            </ul>
        </li>
    </ol>

    <br />
    <br />


    <div class="row">
        <div class="col col-sm-6">
            <span>
                <asp:Literal runat="server" Text="_je mengage" meta:resourcekey="panel_nonrefugie_lig5" /></span>
        </div>
    </div>

    <br />
    <br />


    <div>
        <asp:CheckBox ID="CheckBox_BenProSub" runat="server" GroupName="CbGroup1" Text="AQS1" />
    </div>
    <div>
        <asp:CheckBox ID="CheckBox1" runat="server" GroupName="CbGroup1" Text="AQS2" />
    </div>
    <div>
        <asp:CheckBox ID="CheckBox2" runat="server" GroupName="CbGroup1" Text="AQS3" />
    </div>
    <div>
        <asp:CheckBox ID="CheckBox3" runat="server" GroupName="CbGroup1" Text="AQS4" />
    </div>

    <%--<ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender1" runat="server" />--%>

    <ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="mecbe1" runat="server"
        TargetControlID="CheckBox1" Key="YesNo" />
    <ajaxToolkit:MutuallyExclusiveCheckBoxExtender ID="mecbe2" runat="server"
        TargetControlID="CheckBox2" Key="YesNo" />
    <br />


    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>Item 1</asp:ListItem>
        <asp:ListItem>Item 2</asp:ListItem>
        <asp:ListItem>Item 3</asp:ListItem>
        <asp:ListItem>Item 4</asp:ListItem>
        <asp:ListItem>Item 5</asp:ListItem>
        <asp:ListItem>Item 6</asp:ListItem>
    </asp:RadioButtonList>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">

    <script type="text/javascript"> 


        const beforeUnloadHandler = (event) => {
            // Recommended
            event.preventDefault();

            // Included for legacy support, e.g. Chrome/Edge < 119
            event.returnValue = true;
        };

        // locke la navigation
        $(function () {
            window.addEventListener("beforeunload", beforeUnloadHandler);
            const v = document.getElementById('preventflag').getAttribute('value');
            console.log('preventflag = ' + v);
        })

        function bclick() {
            console.log('bclick ');
            document.getElementById('preventflag').setAttribute('value', 'ok');
            var v1 = document.getElementById('preventflag').getAttribute('value');
            console.log('preventflag = ' + v1);
            if (v1 == 'ok') {
                console.log('removingEventListener');
                window.removeEventListener("beforeunload", beforeUnloadHandler);
            }
        }

        function bclick2() {
            console.log('bclick2 ');
            document.getElementById('preventflag').setAttribute('value', 'nok');
            var v2 = document.getElementById('preventflag').getAttribute('value');
            console.log('preventflag = ' + v2);
            if (v2 == 'ok') {
                console.log('removingEventListener');
                window.removeEventListener("beforeunload", beforeUnloadHandler);
            }
        }

        //var cb1s = document.getElementById('preventflag').innerText;

        //const nameInput = document.querySelector("#name");

        //nameInput.addEventListener("input", (event) => {
        //    if (event.target.value !== "") {
        //        window.addEventListener("beforeunload", beforeUnloadHandler);
        //    } else {
        //        window.removeEventListener("beforeunload", beforeUnloadHandler);
        //    }
        //});


    </script>
</asp:Content>

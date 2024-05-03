<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication5.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox runat="server" ClientIDMode="Static" ID="DateBox" TextMode="Date"></asp:TextBox>

    <asp:CustomValidator id="CustomValidator1"
           
           ClientValidationFunction="ClientValidate"
           OnServerValidate="CustomValidator1_ServerValidate"
           Display="Dynamic"
           ErrorMessage="erreur dates annees"
           ForeColor="green"
           Font-Name="verdana" 
           Font-Size="10pt"
           runat="server"/>

    <div>hidden field</div>
    *<asp:TextBox ID="hf1" Visible="true" runat="server" Text="0" ClientIDMode="Static" />*
    <%--<asp:CompareValidator runat="server" EnableClientScript="true" 
        ErrorMessage="erreur !"
        Type="String" ValueToCompare="1" ControlToValidate="hf1">

    </asp:CompareValidator>--%>

    <br />
    <br />

    <asp:TextBox runat="server" ClientIDMode="Static" ID="NumberBox" TextMode="Number"></asp:TextBox>

    <br />
    <asp:Button runat="server" ID="B1" OnClientClick="test();return false;" Text="Click No valid" CausesValidation="false" />
    <br />
    <asp:Button runat="server" ID="B2"  Text="Click valid" CausesValidation="true" />

    <br />
    <asp:TextBox runat="server" ClientIDMode="Static" ID="TB1" Text="label" />
    <br />
    <asp:TextBox runat="server" ClientIDMode="Static" ID="TB3" Text="compare TB3" />
    *
    <asp:TextBox runat="server" ClientIDMode="Static" ID="TB4" Text="compare TB4" />
     <br />
    <asp:TextBox runat="server" ClientIDMode="Static" ID="TextBoxX" Text="TextBoxX" />

    <script>

        $(function () {
            var numbox = document.getElementById("NumberBox");
            //numbox.setAttribute("value", "12");
            //document.getElementById('CheckBox1').checked = true;


            //var form = $("#TextBoxX");
            //form.validate();

        })

        //$.validator.addMethod("compbox",
        //    function (value, element, parameters) {
        //        // Here goes your IsValueExist logic that returns bool
        //        var TB3_value = document.getElementById("TB3").value;
        //        var TB4_value = document.getElementById("TB4").value;
        //        return TB4_value == TB3_value
        //    }," les valeurs sont differentes");

        function test() {
            console.log('bonjour');
            document.getElementById("hf1").value = '1';
        }

        function ClientValidate(source, arguments) {

            console.log('validate');
            var datev = document.getElementById("DateBox").value; 
            var annee = datev.substring(0, 4);
            var annee_n = parseInt(annee);
           
            var numberv = document.getElementById("NumberBox").value; //..getAttribute("value");
            var number_n = parseInt(numberv);
            if (!isNaN(annee_n) && !isNaN(number_n)) {
                if (number_n > annee_n) {
                    console.log('annee > number');
                    arguments.IsValid = true;
                }
                else {
                    arguments.IsValid = false;
                }
            }

           
        }

        function validate() {
            //console.log('validate');
            //var date_value = document.getElementById("DateBox").value; //.getAttribute("value");
            //console.log('date : ' + date_value);
            //console.log('typeof date field :' + typeof (date_value));
            //var annee = date_value.substring(0, 4);
            //var annee_n = parseInt(annee);
            //console.log('substring :' + annee);
            //console.log('parse : ' + parseInt(annee));
            //var number_value = document.getElementById("NumberBox").value; //..getAttribute("value");
            //var number_n = parseInt(number_value);
            //console.log('number : ' + number_value);
            //if (!isNaN(annee_n) && !isNaN(number_n)) {
            //    if (number_n > annee_n) {
            //        console.log('annee > number');
            //        document.getElementById("hf1").value = '1';
            //    }
            //    else {
            //        document.getElementById("hf1").value = '0';
            //    }
            //}
            //Page_ClientValidate();
            

        }

        const dbo = document.getElementById("DateBox");
        dbo.addEventListener("focusout", (event) => {
            Page_ClientValidate();
        });

        dbo.addEventListener("change", (event) => {
            Page_ClientValidate();
        });

        const nbo = document.getElementById("NumberBox");
        nbo.addEventListener("focusout", (event) => {
            Page_ClientValidate();
        });

        nbo.addEventListener("change", (event) => {
            Page_ClientValidate();
        });

        const lab = document.getElementById("TB1");

        lab.addEventListener("focusin", (event) => {
            event.target.style.background = "pink";
        });

        lab.addEventListener("focusout", (event) => {
            event.target.style.background = "green";
        });


    </script>

</asp:Content>

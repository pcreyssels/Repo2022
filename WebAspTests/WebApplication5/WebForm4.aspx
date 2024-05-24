<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication5.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox runat="server" ID="TextBoxSession" ClientIDMode="Static"></asp:TextBox>

    <asp:RegularExpressionValidator ID="Regv_tbs" runat="server"
        ValidationExpression="^([0]?[1-9]|[1][0-2])[\/](19[5-9]\d|20[0-4]\d|2050)$"
        ErrorMessage="JJ/MMMM"
        ControlToValidate="TextBoxSession" Display="Dynamic" meta:resourcekey="regvAnnee">
    </asp:RegularExpressionValidator>
    <br />
    <hr />

    <asp:CustomValidator ID="CusvDatesSessionDelivrance"
        meta:resourcekey="CusvDatesSessionDelivrance"
        ClientValidationFunction="ClientDatesSessVal"
        OnServerValidate="CusvDatesSessionDelivrance_ServerValidate"
        Display="Dynamic"
        ErrorMessage="_erreur_dates_annees"
        CssClass="formulaire-erreur"
        runat="server" />

    <br />
    <hr />

    <asp:TextBox ID="TextBoxDatDeliv" ClientIDMode="Static" runat="server" CssClass="form-control formulaire-control"
        TextMode="Date" />


    <br />
    <hr />
    <asp:Button runat="server" Text="CLICK" />


    <br />
    <hr />
    DATE DD/MMM
     <asp:TextBox ID="TextBox1" ClientIDMode="Static" runat="server" CssClass="form-control formulaire-control" />

    DATE2 DD/MMM

    <br />
    <hr />
    <input type="text" id="text1" />

    <br />
    <hr style="height: 2px; border-width: 0; background-color: green" />
    <div>jQuery UI Datepicker</div>

    <div>
        <input type="text" id="date1" />
    </div>
    <div>
        <input id="datepicker" type="text">
    </div>


    <script>

        //$("#datepicker").datepicker({
        //    showButtonPanel: true,
        //    beforeShow: function (input) {
        //        setTimeout(function () {
        //            var buttonPane = $(input)
        //                .datepicker("widget")
        //                .find(".ui-datepicker-buttonpane");

        //            var btn = $('<button type="button" class="ui-datepicker-current ui-state-default ui-priority-secondary ui-corner-all">Clear</button>');
        //            btn
        //                .unbind("click")
        //                .bind("click", function () {
        //                    $.datepicker._clearDate(input);
        //                });

        //            btn.appendTo(buttonPane);

        //        }, 1);
        //    }
        //});  

        $("#datepicker").datepicker({
            dateFormat: "mm/yy", showWeek: true
            , altField: "#date1", altFormat: "mm/yy"
            , appendText: "(mm/yy)"
            , showButtonPanel: true

        });
        $("#datepicker").datepicker({
            buttonText: "Choose"
            , currentText: "Maintenant"
            , closeText: "Close"
            , navigationAsDateFormat: false
            , changeMonth: true
            , changeYear: true
            , showOn: "both"

        });
        //$("#datepicker").datepicker({
        //    beforeShow: function (input) {
        //        setTimeout(function () {
        //            var headerPane = $(input)
        //                .datepicker("widget")
        //                .find(".ui-datepicker-header");
        //            $("<button>", {
        //                text: "Close",
        //                click: function () {

        //                    $('#ui-datepicker-div').hide();

        //                }
        //            }).appendTo(headerPane);
        //        }, 1);
        //    }
        //});

        var separator = "/";
        $(function () {
            var numbox = document.getElementById("NumberBox");
            //numbox.setAttribute("value", "12");
            //document.getElementById('CheckBox1').checked = true;


            //var form = $("#TextBoxX");
            //form.validate();

            var input1 = document.getElementById("TextBox1");
            input1.addEventListener("keyup", logKeyu);

            var input1 = document.getElementById("TextBox1");
            input1.addEventListener("keydown", logKeyd);


            var input2 = document.getElementById("text1");
            input2.addEventListener("keydown", logKey2);

        });


        function IsNumeric(e) {
            console.log('event .key : ' + e.key);

            return true;
        }

        function logKey2(e) {
            //console.log('event .code : ' + e.code);
            //console.log('event .keyCode : ' + e.keyCode);
            console.log('event .key : ' + e.key);
            /* console.log('type of  .key ' + typeof (e.key))*/
            if (Number(e.key) > 0 && Number(e.key) <= 10) {
                console.log('ok')
            }
            else {
                console.log('not ok')
                e.preventDefault();
            }


            //if (e.key == '2') {
            //    console.log('2')
            //    e.preventDefault();
            //}
            //var in1 = document.getElementById("TextBox1");
            //if (in1.value.length == 2) {
            //    in1.value += separator;
            //}
        }

        function logKeyu(e) {
            //console.log('event .code : ' + e.code);
            //console.log('event .keyCode : ' + e.keyCode);
            console.log('keyup : ' + e.key);

            var in1 = document.getElementById("TextBox1");
            if (in1.value.length == 2 && !in1.value.includes('/')) {
                in1.value += separator;
            }
        }

        function logKeyd(e) {
            //console.log('event .code : ' + e.code);
            //console.log('event .keyCode : ' + e.keyCode);
            console.log('keydown : ' + e.key);

            if (!((Number(e.key) >= 0 && Number(e.key) <= 10) || e.key == 'ArrowLeft' || e.key == 'ArrowRight' || e.key == 'Backspace')) {
                console.log('not ok')
                e.preventDefault();
                //e.stopPropagation();
            }
        }

        function IsNumeric(input, keyCode) {
            if (keyCode == 16) {
                isShift = true;
            }
            //Allow only Numeric Keys.
            if (((keyCode >= 48 && keyCode <= 57) || keyCode == 8 || keyCode <= 37 || keyCode <= 39 || (keyCode >= 96 && keyCode <= 105)) && isShift == false) {
                if ((input.value.length == 2 || input.value.length == 5) && keyCode != 8) {
                    input.value += seperator;
                }

                return true;
            }
            else {
                return false;
            }
        };


        const nbo = document.getElementById("TextBoxSession");
        nbo.addEventListener("focusout", (event) => {
            Page_ClientValidate();
        });

        function ClientDatesSessVal(source, arguments) {

            console.log('validate');
            var datev = document.getElementById("TextBoxDatDeliv").value;
            var annee = datev.substring(0, 4);
            var annee_n = parseInt(annee);

            var sessionMA = document.getElementById("TextBoxSession").value; //..getAttribute("value");
            var sessionA = sessionMA.substring(3, 7);
            console.log('valeur session :' + sessionMA)
            console.log('annee extraite :' + sessionA)
            var sessionA_n = parseInt(sessionA);
            if (!isNaN(annee_n) && !isNaN(sessionA_n)) {
                if (sessionA_n > annee_n) {
                    console.log('annee > number');
                    arguments.IsValid = false;
                }
                else {
                    arguments.IsValid = true;
                }
            }
        }


    </script>

</asp:Content>

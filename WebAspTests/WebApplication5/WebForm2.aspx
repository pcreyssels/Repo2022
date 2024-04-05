<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication5.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:CheckBox runat="server" Text="CB1" ID="CheckBox1" ClientIDMode="Static" onclick="cbclick(1)" />

    <asp:CheckBox runat="server" Text="CB2" ID="CheckBox2" ClientIDMode="Static" onclick="cbclick(2)" />

    <asp:CheckBox runat="server" Text="CB3" ID="CheckBox3" ClientIDMode="Static" onclick="cbclick(3)" />

    <asp:CheckBox runat="server" Text="CB4" ID="CheckBox4" ClientIDMode="Static" onclick="cbclick(4)" />

    <hr style="height: 2px; border-width: 0; background-color: greenyellow" />

    <div>TEXTBOX</div>
    <asp:TextBox ID="TB1" runat="server" oninput="this.value = this.value.toUpperCase()"></asp:TextBox>

    <hr style="height: 2px; border-width: 0; background-color: red" />

    <input name="yourInput" oninput="this.value = this.value.toUpperCase()" />

    <asp:CompareValidator runat="server" EnableClientScript="true" ControlToValidate="TB1"
        Type="String" ErrorMessage="no match"
        ValueToCompare="FENETRE">

    </asp:CompareValidator>

    <hr style="height: 2px; border-width: 0; background-color: greenyellow" />

    <asp:CheckBox runat="server" Text="CB5" ID="CheckBox5" ValidationGroup="VG1" ClientIDMode="Static" />
    <br />
    <asp:CheckBox runat="server" Text="CB6" ID="CheckBox6" ValidationGroup="VG1" ClientIDMode="Static" />
    <br />
    <asp:CheckBox runat="server" Text="CB7" ID="CheckBox7" ValidationGroup="VG1" ClientIDMode="Static" />
    <br />
    <asp:CheckBox runat="server" Text="CB8" ID="CheckBox8" ValidationGroup="VG1" ClientIDMode="Static" />
    <br />
    <asp:TextBox runat="server" Text="TB2" ID="TB2" ValidationGroup="VG1" ClientIDMode="Static" />
    <br />

    cusval
    <br />
    <%--<asp:CustomValidator runat="server" ID="CustomValidator2"
    OnServerValidate="CustomValidator1_ServerValidate"
    ControlToValidate ="TB2"
    ClientValidationFunction="javascript:CheckBoxValidation(param1,oaram2);return true;"
    ValidationGroup="VG1"
    Display="Static"
    EnableClientScript="true"
    ErrorMessage=" erreurs sur les checkbox " />--%>

    <asp:CustomValidator runat="server" ID="CustomValidator1"
        OnServerValidate="CustomValidator1_ServerValidate"
        ClientValidationFunction="CheckBoxsValidation"
        ValidationGroup="VG1"
        Display="Dynamic"
        EnableClientScript="true"
        ErrorMessage=" au moins un choix doit être fait " />
    cusval
    <br />

    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />

    <asp:Button runat="server" ID="B2" OnClick="B2_Click" ValidationGroup="VG1" CausesValidation="true" Text="VALID" />


    <script>
        $(function () {
            $('[data-toggle="popover"]').popover();
            let i = 'toto'
            console.log('bonjour !!!!');
            document.getElementById('CheckBox1').checked = true;
        })

        function CheckBoxsValidation(sender, args) {
            console.log(' -> CheckBoxValidation called !!');
            var myCheckBox5 = document.getElementById("CheckBox5");
            var myCheckBox6 = document.getElementById("CheckBox6");
            var myCheckBox7 = document.getElementById("CheckBox7");
            var myCheckBox8 = document.getElementById("CheckBox8");

            if (myCheckBox5.checked || myCheckBox6.checked || myCheckBox7.checked || myCheckBox8.checked)
                args.IsValid = true;
            else
                args.IsValid = false;

        }

        function cbclick(x) {
            console.log('cbclick' + x);
            var cb1s = document.getElementById('CheckBox1');

            var cb2s = document.getElementById('CheckBox2');
            var cb3s = document.getElementById('CheckBox3');
            var cb4s = document.getElementById('CheckBox4');
            if (x == 1) {
                if (cb1s.checked) {
                    console.log('cb1 checked');
                    document.getElementById('CheckBox2').checked = false;
                    document.getElementById('CheckBox3').checked = false;
                    document.getElementById('CheckBox4').checked = false;
                }
                else if (!cb1s.checked) {
                    document.getElementById('CheckBox1').checked = true;
                }
            }
            else if (x == 2) {
                if (cb2s.checked) {
                    console.log('cb2 checked');
                    document.getElementById('CheckBox1').checked = false;
                    document.getElementById('CheckBox3').checked = false;
                    document.getElementById('CheckBox4').checked = false;
                }
                else if (!cb2s.checked) {
                    document.getElementById('CheckBox1').checked = true;
                }
            }
            else if (x == 3) {
                if (cb3s.checked) {
                    console.log('cb3 checked');
                    document.getElementById('CheckBox1').checked = false;
                    document.getElementById('CheckBox2').checked = false;
                    document.getElementById('CheckBox4').checked = false;
                }
                else if (!cb3s.checked) {
                    document.getElementById('CheckBox1').checked = true;
                }
            }
            else if (x == 4) {
                if (cb4s.checked) {
                    console.log('cb4 checked');
                    document.getElementById('CheckBox1').checked = false;
                    document.getElementById('CheckBox2').checked = false;
                    document.getElementById('CheckBox3').checked = false;
                }
                else if (!cb4s.checked) {
                    document.getElementById('CheckBox1').checked = true;
                }
            }


            //if (cb2s.checked && x == 2) {
            //    console.log('cb2 checked');
            //    document.getElementById('CheckBox1').checked = false;
            //    document.getElementById('CheckBox3').checked = false;
            //    document.getElementById('CheckBox4').checked = false;
            //}
            //if (cb3s.checked && x == 3) {
            //    console.log('cb3 checked');
            //    document.getElementById('CheckBox1').checked = false;
            //    document.getElementById('CheckBox2').checked = false;
            //    document.getElementById('CheckBox4').checked = false;
            //}
            //if (cb4s.checked && x == 4) {
            //    console.log('cb4 checked');
            //    document.getElementById('CheckBox1').checked = false;
            //    document.getElementById('CheckBox2').checked = false;
            //    document.getElementById('CheckBox3').checked = false;
            //}
        }
    </script>


</asp:Content>

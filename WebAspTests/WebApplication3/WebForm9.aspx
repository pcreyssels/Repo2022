<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="WebApplication3.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />

    <input style="text-transform: lowercase;" type="text" name="fieldname">

    <br />
    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />

    <asp:TextBox ID="TextBoxalc" runat="server"  style="text-transform: lowercase;" />

    <br />
    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />

    <asp:Button runat="server" Text="Abandon" ID="butt_abandon" OnClick="butt_abandon_Click" />

     <br />
 <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />

    <asp:CheckBox ID="CheckBox1" ClientIDMode="Static" ValidationGroup="VG1" AutoPostBack="false"
        OnCheckedChanged="CheckBox1_CheckedChanged" Text="Checkbox 1" Checked="False" GroupName="CheckBoxGroup" runat="server" />


    <%--<asp:CompareValidator ID="Compare1"
        ControlToValidate="CheckBox1"
        ValueToCompare="true"
        EnableClientScript="True"
        Type=
        Operator="Equal"
        ErrorMessage="NOT CHECKED"
        Display="Dynamic"
        runat="server" />--%>

    <br />
    <asp:CheckBox ID="CheckBox2" ValidationGroup="VG1" AutoPostBack="false" OnCheckedChanged="CheckBox2_CheckedChanged" Text="Checkbox 2" Checked="False" GroupName="CheckBoxGroup" runat="server" />
    <br />
    <asp:CheckBox ID="CheckBox3" ValidationGroup="VG1" AutoPostBack="false" OnCheckedChanged="CheckBox3_CheckedChanged" Text="Checkbox 3" Checked="False" GroupName="CheckBoxGroup" runat="server" />
    <br />
    <asp:CheckBox ID="CheckBox4" ValidationGroup="VG1" AutoPostBack="false" OnCheckedChanged="CheckBox4_CheckedChanged" Text="Checkbox 4" Checked="False" GroupName="CheckBoxGroup" runat="server" />
    <br />


    <input type="checkbox" id="cb1" onclick="cbclick()" name="scales" />
    <br />
    <input type="checkbox" id="cb2" onclick="cbclick()" name="scales" />
    <br />
    <input type="checkbox" id="cb3" onclick="cbclick()" name="scales" />
    <br />
    <input type="checkbox" id="cb4" onclick="cbclick()" name="scales" />
    <br />

    <asp:Button ClientIDMode="Static" Enabled="false"
        CssClass="btn btn-sitpho2" ID="button_accept" OnClick="button_accept_Click" runat="server" Text="_J'accepte" meta:resourcekey="texte_jaccepte" />


    <br />
    <asp:Button runat="server" ID="ButtonValid" ValidationGroup="VG1" Text="VALIDER" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">

    <%-- SCRIPT pour les popover --%>
    <script>
        $(function () {
            $('[data-toggle="popover"]').popover();
            let i = 'toto'
            console.log('bonjour !!!!');
            bacc.disabled = true;
        })

        function cbclick() {
            var cb1s = document.getElementById('cb1');
            var cb2s = document.getElementById('cb2');
            var cb3s = document.getElementById('cb3');
            var cb4s = document.getElementById('cb4');

            var bacc = document.getElementById('<%=button_accept.ClientID%>');
            bacc.disabled = true;

            var s = 'A'
            if (cb1s.checked && cb2s.checked && cb3s.checked && cb4s.checked) {
                s = "checked";
                bacc.disabled = false;
            }
            else {
                s = "unchecked";
                bacc.disabled = true;
            }

            console.log('click !!!!' + s)
        }

    <%--function modalshow22() {
        var wmr = document.getElementById('<%=warning_message_1.ClientID%>');
        wmr.style.display = "initial";
        var wmr2 = document.getElementById('<%=warning_message_2.ClientID%>');
        wmr2.style.display = "none";
        $('#modal_warning2').modal('show');
    }--%>



        function okfrommodal() {
        }


    </script>

</asp:Content>

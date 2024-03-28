<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication5.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:CheckBox runat="server" Text="CB1" ID="CheckBox1" ClientIDMode="Static" onclick="cbclick(1)" />

    <asp:CheckBox runat="server" Text="CB2" ID="CheckBox2" ClientIDMode="Static" onclick="cbclick(2)" />

    <asp:CheckBox runat="server" Text="CB3" ID="CheckBox3" ClientIDMode="Static" onclick="cbclick(3)" />

    <asp:CheckBox runat="server" Text="CB4" ID="CheckBox4" ClientIDMode="Static" onclick="cbclick(4)" />

    <script>
        $(function () {
            $('[data-toggle="popover"]').popover();
            let i = 'toto'
            console.log('bonjour !!!!');
            document.getElementById('CheckBox1').checked = true;
        })

        function cbclick(x) {
            console.log('cbclick'+x);
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


            if (cb2s.checked && x == 2) {
                console.log('cb2 checked');
                document.getElementById('CheckBox1').checked = false;
                document.getElementById('CheckBox3').checked = false;
                document.getElementById('CheckBox4').checked = false;
            }
            if (cb3s.checked && x == 3) {
                console.log('cb3 checked');
                document.getElementById('CheckBox1').checked = false;
                document.getElementById('CheckBox2').checked = false;
                document.getElementById('CheckBox4').checked = false;
            }
            if (cb4s.checked && x == 4) {
                console.log('cb4 checked');
                document.getElementById('CheckBox1').checked = false;
                document.getElementById('CheckBox2').checked = false;
                document.getElementById('CheckBox3').checked = false;
            }
        }
    </script>


</asp:Content>

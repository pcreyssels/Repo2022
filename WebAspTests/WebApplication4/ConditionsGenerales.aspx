<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConditionsGenerales.aspx.cs" Inherits="WebApplication4.ConditionsGenerales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Always">
        <ContentTemplate>

            <div class="panel panel-default">
                <%-- corps de panel --%>
                <div class="panel-body">

                    <%-- conditions generales --%>
                    <asp:Literal runat="server" ID="CG" meta:resourcekey="ConditionsGenerales" />

                    <br />

                    <div class="CGV" style="display: grid; grid-template-columns: 1fr  auto 10fr; grid-template-rows: 1fr auto 1fr auto 1fr auto 1fr auto;">
                        <%-- *** ligne condition 1 *** --%>
                        <div style="display: inline-grid; align-content: start; justify-content: right; grid-row: 1 / 2; grid-column: 1 / 2;">
                            <input type="checkbox" id="cb1" onclick="cbclick()" />
                        </div>
                        <div>
                            &nbsp &nbsp
                        </div>
                        <div>
                            <asp:Literal Mode="PassThrough" runat="server" ID="LiteralAck1" meta:resourcekey="TexteAck1" />
                        </div>

                        <%-- ligne blanche --%>
                        <div style="grid-row: 2 / 3; grid-column: 1 / 4;">
                            &nbsp
                        </div>

                        <%-- *** ligne condition 2 *** --%>
                        <div style="display: inline-grid; align-content: start; justify-content: right; grid-row: 3 / 4; grid-column: 1 / 2;">
                            <input type="checkbox" id="cb2" onclick="cbclick()" />
                        </div>
                        <div>
                            &nbsp &nbsp
                        </div>
                        <div>
                            <asp:Literal runat="server" ID="LiteralAck2" meta:resourcekey="TexteAck2" />
                        </div>

                        <%-- ligne blanche --%>
                        <div style="grid-row: 4 / 5; grid-column: 1 / 4;">
                            &nbsp
                        </div>

                        <%-- *** ligne condition 3 *** --%>
                        <div style="display: inline-grid; align-content: start; justify-content: right; grid-row: 5 / 6; grid-column: 1 / 2;">
                            <input type="checkbox" id="cb3" onclick="cbclick()" />
                        </div>
                        <div>
                            &nbsp  &nbsp
                        </div>
                        <div>
                            <asp:Literal Text="J'ai pris connaissance 3" runat="server" ID="LiteralAck3" meta:resourcekey="TexteAck3" />
                        </div>

                        <%-- ligne blanche --%>
                        <div style="grid-row: 6 / 7; grid-column: 1 / 4;">
                            &nbsp
                        </div>

                        <%-- *** ligne condition 4 *** --%>
                        <div style="display: inline-grid; align-content: start; justify-content: right; grid-row: 7 / 8; grid-column: 1 / 2;">
                            <input type="checkbox" id="cb4" onclick="cbclick()" />
                        </div>
                        <div>
                            &nbsp  &nbsp
                        </div>
                        <div>
                            <asp:Literal Text="J'ai pris connaissance 4" runat="server" ID="LiteralAck4" meta:resourcekey="TexteAck4" />
                        </div>

                        <%-- ligne blanche --%>
                        <div style="grid-row: 8 / 9; grid-column: 1 / 4;">
                            &nbsp
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <asp:Button ClientIDMode="Static" CssClass="btn btn-sitpho2" ID="button_accept" OnClick="Button_accept_Click" runat="server" Text="_J'accepte" meta:resourcekey="texte_jaccepte" />
                        </div>

                        <div class="col-sm-6">
                            <asp:Button CssClass="btn btn-sitpho2 btn-sitpho2-red" ID="button_dontaccept" OnClick="Button_dontaccept_Click" runat="server" Text="_Je n'accepte pas" meta:resourcekey="texte_jenacceptepas" />
                        </div>
                    </div>

                </div>
            </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">

    <script>
        $(function () {
            var bacc = document.getElementById('<%=button_accept.ClientID%>');
            bacc.disabled = true;
        })

        function cbclick() {
            var cb1s = document.getElementById('cb1');
            var cb2s = document.getElementById('cb2');
            var cb3s = document.getElementById('cb3');
            var cb4s = document.getElementById('cb4');

            var bacc = document.getElementById('<%=button_accept.ClientID%>');

            if (cb1s.checked && cb2s.checked && cb3s.checked && cb4s.checked) {
                bacc.disabled = false;
            }
            else {
                bacc.disabled = true;
            }
        }
    </script>

</asp:Content>

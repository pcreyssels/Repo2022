<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebApplication1.WebForm7" %>
<%-- Page Culture="en-US" UICulture="en-US" --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server"
        HeaderStyle-BackColor="LightGray"
        ShowHeader="true"
        ShowFooter="false"
        DataKeyNames="Pieceaj"
        AutoGenerateColumns="false"
        AutoGenerateSelectButton="false"
        OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
        SelectedRowStyle-Font-Bold="true"
        SelectedRowStyle-BackColor="LightBlue"
        CssClass="spacebefaft"
        AlternatingRowStyle-BackColor="LightGreen">

        <Columns>
            <asp:BoundField DataField="Pieceaj" HeaderText="Pièce à joindre" />
            <asp:BoundField DataField="Precisions" HeaderText="Précisions" />
            <asp:BoundField DataField="SansEntete" HeaderText="Obligatoire" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="Piecesj" HeaderText="Pièces jointes" />

            <asp:ButtonField ButtonType="Image"
                CommandName="Select"
                HeaderText="Choix"
                Text="télécharger" />
            <asp:ImageField HeaderText="ok" />
        </Columns>

    </asp:GridView>

    <hr />

    <asp:Button runat="server" ID="b1" OnClick="b1_Click" />
    <hr />


   <%-- <table class="table table-condensed">
        <thead>
            <tr>
                <th>Header 1</th>
                <th>Header 2</th>
                <th>Header 3</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Footer 1</th>
                <th>Footer 2</th>
                <th>Footer 3</th>
            </tr>
        </tfoot>
        <tbody>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
            </tr>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>Cell</td>
            </tr>
            <tr>
                <td>Cell</td>
                <td>Cell</td>
                <td>
                    <button>CLICK</button>
                </td>
            </tr>
        </tbody>
    </table>--%>


    <hr />

    <h3>TABLE GENEREEE AUTO</h3>


    <div class="container">
        <%-- CIVILITE --%>
        <div class="row">
            <div class="col-sm-3 ">
                COL0
            </div>
            <div class="col-sm-3">
                COL1
            </div>
            <div class="col-sm-3">
                COL2
            </div>
            <div class="col-sm-3">
                <button runat="server" id="bhtml" onserverclick="bhtml_ServerClick">CLICK ME</button>
                <button runat="server" id="Button2" onserverclick="bhtml_ServerClick">CLICK ME2</button>
            </div>
        </div>
    </div>

    <h6>place holder N</h6>

    <asp:PlaceHolder runat="server" ID="PlaceHolderN"></asp:PlaceHolder>

    <h6> fin place holder N</h6>

    <h3>FIN TABLE GENEREEE AUTO</h3>

    <hr />

  <%--  <table id="Table1" class="table table-condensed"
        style="border-width: 1; border-color: Black; padding: 5"
        cellspacing="0"
        runat="server" />--%>

    <hr />


    <asp:PlaceHolder ID="ControlContainer"
        runat="server" />

    <div style="color: aqua">BONJOUR </div>


    <div class="row">
        <div class="col col-sm-6">
            <span style="white-space: pre-wrap">Je m’engage à payer le tarif de <b>20€</b> pour que ma demande de reconnaissance de diplôme soit étudiée.
Si cette demande est acceptée et recevable, je m’engage à payer 50€ pour que mon dossier soit instruit. Vous ne payez rien avant d’avoir reçu la facture correspondant à votre demande qui vous sera transmise par notification (courrier électronique). 

Merci de noter qu’aucun remboursement ne sera possible une fois votre dossier déposé.
            </span>
        </div>
    </div>

    <hr />
    <h2> labels </h2>
    <asp:Button runat="server"  ID="button_lng" Text="ch LNG EN" OnClick="button_lng_Click"/>
    <asp:Button runat="server"  ID="button_lng2" Text="ch LNG FR" OnClick="button_lng2_Click"/>
    <asp:Label ID="lblAddress" runat="server" Text="<% $Resources:Resource,Name %>"></asp:Label> 
</asp:Content>

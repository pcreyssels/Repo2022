<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication3.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display: grid; grid-template-columns: 1fr 10fr; align-items: center">
        <div>
            <asp:CheckBox ID="CheckBox1" AutoPostBack="false" OnCheckedChanged="CheckBox1_CheckedChanged" Text="" Checked="False" GroupName="CheckBoxGroup" runat="server" />
        </div>
        <div>
            <asp:Literal Text="J'ai pris connaissance 1" runat="server" ID="LiteralAck1" meta:resourcekey="TexteAck1" />
        </div>
        <div style="display: flex; justify-content: right;">
            <asp:CheckBox ID="CheckBox2" AutoPostBack="false" OnCheckedChanged="CheckBox2_CheckedChanged" Text="" Checked="False" GroupName="CheckBoxGroup" runat="server" />
        </div>
        <div>
            <asp:Literal Mode="PassThrough" Text="&nbsp  J'ai pris connaissance 2" runat="server" ID="LiteralAck2" meta:resourcekey="TexteAck2" />
        </div>
        <div>
            <asp:CheckBox ID="CheckBox3" AutoPostBack="false" OnCheckedChanged="CheckBox3_CheckedChanged" Text="" Checked="False" GroupName="CheckBoxGroup" runat="server" />
        </div>
        <div>
            <asp:Literal Text="J'ai pris connaissance 3" runat="server" ID="LiteralAck3" meta:resourcekey="TexteAck3" />
        </div>
        <div>
            <asp:CheckBox ID="CheckBox4" AutoPostBack="false" OnCheckedChanged="CheckBox4_CheckedChanged" Text="" Checked="False" GroupName="CheckBoxGroup" runat="server" />
        </div>
        <div>
            <asp:Literal Text="J'ai pris connaissance 4" runat="server" ID="LiteralAck4" meta:resourcekey="TexteAck4" />
        </div>
    </div>


    <hr />

    <div style="display: grid; grid-template-columns: 1fr  auto 10fr; grid-template-rows: repeat(4, 1fr);">
        <div style="display: flex; justify-content: right; grid-row: 1 / 2; grid-column: 1 / 2; background-color: lightyellow">
            <asp:CheckBox ID="CheckBox5" AutoPostBack="false" OnCheckedChanged="CheckBox1_CheckedChanged" Text="" Checked="False" GroupName="CheckBoxGroup" runat="server" />
        </div>
        <div>
            &nbsp &nbsp
        </div>
        <div>
            <asp:Literal Text="J'ai pris connaissance 1" runat="server" ID="Literal1" meta:resourcekey="TexteAck1" />
        </div>
        <div style="display: flex; justify-content: right; grid-row: 2 / 3; grid-column: 1 / 2; background-color: lightgreen">
            <asp:CheckBox ID="CheckBox6" AutoPostBack="false" OnCheckedChanged="CheckBox2_CheckedChanged" Text="" Checked="False" GroupName="CheckBoxGroup" runat="server" />
        </div>
        <div>
            &nbsp &nbsp
        </div>
        <div>
            <asp:Literal Mode="PassThrough" Text="&nbsp  J'ai pris connaissance 2" runat="server" ID="Literal2" meta:resourcekey="TexteAck2" />
        </div>
        <div style="display: flex; justify-content: right; grid-row: 3 / 4; grid-column: 1 / 2; background-color: lightcyan">
            <asp:CheckBox ID="CheckBox7" AutoPostBack="false" OnCheckedChanged="CheckBox3_CheckedChanged" Text="" Checked="False" GroupName="CheckBoxGroup" runat="server" />
        </div>
        <div>
            &nbsp &nbsp
        </div>
        <div>
            <asp:Literal Text="J'ai pris connaissance 3" runat="server" ID="Literal3" meta:resourcekey="TexteAck3" />
        </div>
        <div style="display: flex; justify-content: right; grid-row: 4 / 5; grid-column: 1 / 2; background-color: lightpink">
            <asp:CheckBox ID="CheckBox8" AutoPostBack="false" OnCheckedChanged="CheckBox4_CheckedChanged" Text="" Checked="False" GroupName="CheckBoxGroup" runat="server" />
        </div>
        <div>
            &nbsp &nbsp
        </div>
        <div>
            <asp:Literal Text="J'ai pris connaissance 4" runat="server" ID="Literal4" meta:resourcekey="TexteAck4" />
        </div>
    </div>


    <hr />


    <div style="display: grid; grid-template-columns: repeat(3, 1fr); grid-template-rows: repeat(4, 50px);">
        <div style="grid-row: 1 / 3; grid-column: 1 / 2; background-color: yellow">CELL 11 </div>

        <div style="grid-row: 2 / 3; grid-column: 2 / 3; background-color: greenyellow">CELL 21 </div>

        <div style="grid-row: 3 / 4; grid-column: 3 / 4; background-color: lightcyan">CELL 31 </div>
    </div>

    <hr />
    <div class="wrapper">
        <div class="box1">One</div>
        <div class="box2">Two</div>
        <div class="box3">Three</div>
        <div class="box4">Four</div>
    </div>


    <asp:Button CssClass="btn btn-sitpho2"
    ID="Button_Valider"
    runat="server"
    Text="VALIDER"
    meta:resourcekey="_Button_Valider"
    OnClick="Button_Valider_Click"
    CausesValidation="true" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" MaintainScrollPositionOnPostback="false" AutoEventWireup="true" CodeBehind="WebForm23.aspx.cs" Inherits="WebApplication1.WebForm23" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:FileUpload ID="FileUpload1" AllowMultiple="true"
        runat="server"></asp:FileUpload>

    <br />

    <asp:Button ID="ButtonAny"
        ClientIDMode="Static"
        Text="ANYBUTTON"
        OnClick="ButtonAny_Click"
        runat="server" />
     <asp:Button ID="ButtonAny2"
        ClientIDMode="Static"
        Text="ANYBUTTON2"
        OnClick="ButtonAny2_Click"
        runat="server" />
     <asp:Button ID="ButtonAny3"
        ClientIDMode="Static"
        Text="ANYBUTTON3"
        OnClick="ButtonAny3_Click"
        runat="server" />
     <asp:Button ID="ButtonAny4"
        ClientIDMode="Static"
        Text="ANYBUTTON4"
        OnClick="ButtonAny4_Click"
        runat="server" />
    <asp:Button ID="ButtonStatus"
        ClientIDMode="Static"
        Text="STATUS"
        OnClick="ButtonStatus_Click"
        runat="server" />

    <button onclick="gotoanchor();return false;">ANCHOR return false</button>
     <br />

    <input type="button" onclick="gotoanchor()" value="input_type_button"/>
     <br />

    <asp:Button ID="Button4"
        CausesValidation="false"
        ClientIDMode="Static"
        Text="GOTOANCHOR"
        OnClientClick="gotoanchor();return false;"
        runat="server" />

    <br />

    <asp:Button ID="Button0"
        ClientIDMode="Static"
        Text="Upload file"
        OnClick="UploadButton_Click"
        OnClientClick="upload()"
        runat="server" />
    <asp:Button ID="Button1"
        Text="Upload file 2"
        OnClick="UploadButton_Click"
        OnClientClick="upload()"
        runat="server" />
    <asp:Button ID="Button2"
        Text="Upload file 3"
        OnClick="UploadButton_Click"
        OnClientClick="upload()"
        runat="server" />
    <asp:Button ID="Button3"
        Text="Upload file 4"
        OnClick="UploadButton_Click"
        OnClientClick="upload()"
        runat="server" />


    <asp:Label runat="server" Text="label" />
    <br />
    <asp:Label runat="server" Text="label" />
    <br />
    <asp:Label runat="server" Text="label" />
    <br />
    <asp:Label runat="server" Text="label" />
    <br />

    <asp:Label runat="server" Text="label" />
    <br />

    <asp:Label runat="server" Text="label" />
    <br />
    <asp:Label runat="server" Text="label" />
    <br />
    <asp:Label runat="server" Text="label" />
    <br />
    <br />
    <asp:Label runat="server" Text="label" />
    <br />
    <asp:Label runat="server" Text="label" />
    <br />
    <asp:Label runat="server" Text="label" />
    <br />
    <asp:Label runat="server" Text="label" />
    <br />
    <div id="ANCH">ANCH</div>
    <asp:HiddenField runat="server" ClientIDMode="Static" ID="Hidden1" />
    <br />
    <asp:Label ID="LabelFocus" runat="server" Text="label" />
    <br />

    <asp:Label runat="server" Text="label" />
    <br />
    <asp:Label runat="server" Text="label" />
    <br />
    <asp:Label ID="labelend" ClientIDMode="Static" runat="server" Text="label" />
    <br />
    <asp:TextBox runat="server" ID="TB1"></asp:TextBox>
     <asp:TextBox  runat="server" ID="TB2"></asp:TextBox>
    <br />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
    <script type="text/javascript" language="javascript">
        <%--function showBrowseDialog() {
            var fileuploadctrl = document.getElementById('<%= FileUpload2.ClientID %>');
            fileuploadctrl.click();
        }--%>


        function upload() {
            var fup = document.getElementById('<%= FileUpload1.ClientID %>');
            fup.click();
        }

        function gotoanchor() {
            var label = document.getElementById('<%= labelend.ClientID %>');
            label.innerText = "COUCOU";
            const element = document.getElementById('ANCH');
            element.scrollIntoView(true);
        }

    </script>
</asp:Content>

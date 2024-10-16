<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="WebApplication3.WebForm11" %>

<%@ Register Src="~/ProgressBar.ascx" TagPrefix="uc" TagName="Progress_Bar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
        <ContentTemplate>
            <%=DateTime.Now.ToString() %>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Refresh Panel" OnClick="Button_Click" />
            <br />
            Clicking the button while an asynchronous postback is in progress will
    cancel the new postback. New postbacks are only allowed if one is not
    already in progress.
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:Label runat="server" Text="bonjour"></asp:Label>

    <hr />
    <br />

    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            Update in progress...
        </ProgressTemplate>
    </asp:UpdateProgress>

    <asp:Label runat="server" Text="bonjour2"></asp:Label>

    <hr />
    <br />

    <uc:Progress_Bar ID="pb1" runat="server" />

    <hr />
    <br />

    <label for="file">File progress:</label>

    <progress id="file" max="100" value="70">70%</progress>

    <hr />
    <br />

    <label for="pg2">File progress:</label>

    <progress runat="server" id="pg2" max="100"  value="70"></progress>

    <hr />
    <br />
    <asp:Button ID="Button2" runat="server" Text="update progress" OnClick="Button2_Click" />

    <hr />
    <br />
    <div aria-busy="true" aria-describedby="progress-bar">
        BONJOUR
        <!-- content is for this region is loading -->
    </div>

    <div aria-describedby="progress-bar">
        BONJOUR2
    <!-- content is for this region is loading -->
    </div>
    <!-- ... -->

    <progress id="progress-bar" aria-label="Content loading…"></progress>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
</asp:Content>

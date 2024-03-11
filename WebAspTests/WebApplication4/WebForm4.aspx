<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication4.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <%-- <asp:ScriptManagerProxy ID="ScriptManager1Proxy" runat="server">
    </asp:ScriptManagerProxy>--%>

    <asp:DropDownList ID="ColorList"
        AutoPostBack="True"
        OnSelectedIndexChanged="ColorList_SelectedIndexChanged"
        runat="server">

        <asp:ListItem Selected="True" Value="White"> White </asp:ListItem>
        <asp:ListItem Value="Silver"> Silver </asp:ListItem>
        <asp:ListItem Value="DarkGray"> Dark Gray </asp:ListItem>
        <asp:ListItem Value="Khaki"> Khaki </asp:ListItem>
        <asp:ListItem Value="DarkKhaki"> Dark Khaki </asp:ListItem>

    </asp:DropDownList>

    <br />
    <hr style="height: 2px; border-width: 0; background-color: green" />

    <asp:Button ID="Button1" runat="server" Text="Update Panel" OnClick="Button1_Click" />
    <br />
    <hr style="height: 2px; border-width: 0; background-color: red" />
    <asp:Button ID="Button2" runat="server" Text="Refresh Page" OnClick="Button2_Click" />
    <br />
    <hr style="height: 2px; border-width: 0; background-color: blue" />

    <asp:Panel runat="server" BorderStyle="Solid" BorderColor="LightBlue">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
            <ContentTemplate>
                <hr style="height: 2px; border-width: 0; background-color: gray" />
                <br />
                <legend>Update Panel</legend>
                <asp:Label ID="Label1" runat="server">Initial postback occurred.</asp:Label>
                &nbsp
            <br />
                <asp:Label ID="Label3" ClientIDMode="Static" runat="server" Text="_Label3_" />
                <br />
                <asp:Label ID="Label5" ClientIDMode="Static" runat="server" Text="_Label5_nojavascript" />
                <br />
                <asp:Button ID="Button3" runat="server" Text="inside upd pan" OnClick="Button3_Click" />
                &nbsp
            <asp:Button ID="Button33" runat="server" Text="inside upd postback" OnClick="Button33_Click" />
                <hr style="height: 2px; border-width: 0; background-color: gray" />
                <br />

                <hr style="height: 4px; border-width: 0; background-color: orange" />
                <br />


                <asp:DropDownList ID="DropDownList2"
                    AutoPostBack="True"
                    OnSelectedIndexChanged="ColorList_SelectedIndexChanged"
                    runat="server">

                    <asp:ListItem Selected="True" Value="White"> White </asp:ListItem>
                    <asp:ListItem Value="Silver"> Silver </asp:ListItem>
                    <asp:ListItem Value="DarkGray"> Dark Gray </asp:ListItem>
                    <asp:ListItem Value="Khaki"> Khaki </asp:ListItem>
                    <asp:ListItem Value="DarkKhaki"> Dark Khaki </asp:ListItem>

                </asp:DropDownList>

            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button4" EventName="Click" />
                <asp:PostBackTrigger ControlID="Button33" />
                <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>
    </asp:Panel>

    <br />
    <hr style="height: 2px; border-width: 0; background-color: blue" />
    <asp:Button ID="Button4" runat="server" Text="triggerButt" OnClick="Button4_Click" />


    <hr style="height: 2px; border-width: 0; background-color: blue" />
    <asp:Label ID="Label2" ClientIDMode="Static" runat="server" Text="_label2_" />
    <hr style="height: 2px; border-width: 0; background-color: blue" />
    <asp:Label ID="Label4" ClientIDMode="Static" runat="server" Text="_label4_" />

    <br />
    <hr style="height: 2px; border-width: 0; background-color: pink" />
    <asp:Label ID="Label6" ClientIDMode="Static" runat="server" Text="_label6_ out of update panel" />
    <br />


    <asp:Calendar ID="Calendar1"
        ShowTitle="True"
        OnSelectionChanged="Calendar1_SelectionChanged"
        runat="server" />
    <div>
        Background:
                        <br />
        <asp:DropDownList ID="DropDownList1"
            AutoPostBack="True"
            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            runat="server">
            <asp:ListItem Selected="True" Value="White"> 
                            White </asp:ListItem>
            <asp:ListItem Value="Silver"> 
                            Silver </asp:ListItem>
            <asp:ListItem Value="DarkGray"> 
                            Dark Gray </asp:ListItem>
            <asp:ListItem Value="Khaki"> 
                            Khaki </asp:ListItem>
            <asp:ListItem Value="DarkKhaki"> D
                            ark Khaki </asp:ListItem>
        </asp:DropDownList>
    </div>
    <br />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">
    <script type="text/javascript" language="javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_pageLoading(PageLoadingHandler);
        function PageLoadingHandler(sender, args) {
            console.log('appel PageLoadingHandler');
            var dataItems = args.get_dataItems();
            if ($get('Label3') !== null) {
                $get('Label3').innerHTML = dataItems['Label3'];
            }
            if ($get('Label2') !== null) {
                $get('Label2').innerHTML = dataItems['Label2'];
            }
            if ($get('Label3') !== null) {
                $get('Label3').innerHTML = dataItems['Label3'];
            }
            if ($get('Label4') !== null) {
                $get('Label4').innerHTML = dataItems['Label4'];
            }

        }
    </script>
</asp:Content>

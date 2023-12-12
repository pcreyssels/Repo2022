<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="WebApplication3.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- GRIDVIEW --%>
    <asp:GridView ID="GridView1" runat="server"
        Font-Size="Small"
        HeaderStyle-BackColor="LightGray"
        EnableViewState="true"
        ShowHeader="true"
        ShowFooter="false"
        DataKeyNames="Pieceaj"
        AutoGenerateColumns="false"
        AutoGenerateSelectButton="false"
        SelectedRowStyle-Font-Bold="true"
        SelectedRowStyle-BackColor="LightBlue"
        OnRowDataBound="GridView1_RowDataBound"
        CssClass="spacebefaft"
        OnLoad="GridView1_Load"
        OnInit="GridView1_Init"
        AlternatingRowStyle-BackColor="LightGreen">

        <Columns>
            <asp:BoundField DataField="Pieceaj" meta:resourcekey="gridcolumn_Pieceaj" HeaderText="_Pièce à joindre" />
            <asp:BoundField DataField="Precisions" meta:resourcekey="gridcolumn_Precisions" HeaderText="_Précisions" />
            <asp:BoundField DataField="Obligatoire" meta:resourcekey="gridcolumn_Obligatoire" HeaderText="_Obligatoire" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="Piecej" meta:resourcekey="gridcolumn_Piecej" HeaderText="_Pièce jointe" />

            <%-- boutons upload --%>
            <asp:TemplateField>
                <ItemTemplate>
                </ItemTemplate>
            </asp:TemplateField>

            <%-- coche --%>
            <asp:ImageField />

        </Columns>

    </asp:GridView>

    <br />

    <span style="display: inline-block; height: 3em;">
        <img runat="server" style="height: 100%; width: 100%; object-fit: contain"
            src="~/Images/Attention 450x450px.png"
            alt="attention" />
    </span>
    <br />

    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />

   <asp:Literal runat="server" meta:resourcekey="HtmlText"></asp:Literal>

    <span>
        Copie lisible d'une pièce d'identité (carte d'identité, passeport, titre de séjour, récépissé ou <b>justificatif de réfugié ou assimilé).</b> <br/> 
            Visa, permis de conduire ou carte vitale <b>ne sont pas acceptés. Merci de fournir un justificatif de changement de nom, si nécessaire</b>.
    </span>

    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />
    <div style="color:blue"></div>

    <asp:Button runat="server" Text="CLICK" ID="Button1" OnClick="Button1_Click" />

    <br />

    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>

    <br />

    <asp:Table CssClass="tab1" ID="Table1" ClientIDMode="Static" runat="server"
        CellPadding="10"
        GridLines="Both"
        HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell>
                Row 0, <b>Col 0</b>
                <asp:FileUpload ID="FileUpload1"
                    runat="server"></asp:FileUpload>
                <asp:Button ID="UploadButton"
                    Text="Upload file"
                    OnClick="UploadButton_Click"
                    runat="server"></asp:Button>
            </asp:TableCell>
            <asp:TableCell>
                Row 0, <i>Col 1</i>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Row 1, Col 0
                <asp:FileUpload ID="FileUpload2"
                    runat="server"></asp:FileUpload>
                <asp:Button ID="Button2"
                    Text="Upload file"
                    OnClick="UploadButton_Click"
                    runat="server"></asp:Button>
            </asp:TableCell>
            <asp:TableCell>
                Row 1, Col 1
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <br />

    <asp:Label ID="UploadStatusLabel" Text="_text_"
        runat="server">
    </asp:Label>

    <br />

    <asp:Table CssClass="tab1" ID="Table2" ClientIDMode="Static" runat="server"
        CellPadding="10"
        GridLines="Both"
        HorizontalAlign="Left">
        <asp:TableRow>
            <asp:TableCell>
               Row 0, Col 0
            </asp:TableCell>
            <asp:TableCell>
               Row 0, Col 1
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
               Row 1, Col 0
            </asp:TableCell>
            <asp:TableCell>
               Row 1, Col 1
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Row 2, Col 0
            </asp:TableCell>
            <asp:TableCell>
                Row 2, Col 1
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
</asp:Content>

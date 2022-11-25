<%@ Page Title="MA PAGE WEBFORM10" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="WebApplication1.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <div>
        <div>
            Pour plus d’informations sur les activités du Centre ENIC-NARIC France, <a href="https://www.france-education-international.fr/expertises/enic-naric">cliquer ici </a>
        </div>
        <div>
            Consulter le <a href="https://phoenix.france-education-international.fr/inscriptions/Ressources/PDF/instructions.pdf">mode d'emploi</a> pour remplir le dossier de demande d’attestation.
        </div>
        <div style="color: red">
            Un seul diplôme par dossier peut faire l'objet d'une demande d'attestation.
        </div>
    </div>
    <br />


    <br />
    <asp:Literal runat="server" Text="message info" meta:resourcekey="messageinfo" Mode="PassThrough"></asp:Literal>
    <br />

    <div>
        Vous souhaitez déposer une demande cliquer <a href="https://phoenix.france-education-international.fr/inscriptions/Ressources/PDF/instructions.pdf">cliquer ici</a>

    <br />

    <h3>TreeView Declarative Syntax Example</h3>

    <asp:TreeView ID="SampleTreeView"
        runat="server">

        <Nodes>

            <asp:TreeNode Value="Home"
                NavigateUrl="Home.aspx"
                Text="Home"
                Target="Content"
                Expanded="True">

                <asp:TreeNode Value="Page 1"
                    NavigateUrl="Page1.aspx"
                    Text="Page1"
                    Target="Content">

                    <asp:TreeNode Value="Section 1"
                        NavigateUrl="Section1.aspx"
                        Text="Section 1"
                        Target="Content" />

                </asp:TreeNode>

                <asp:TreeNode Value="Page 2"
                    NavigateUrl="Page2.aspx"
                    Text="Page 2"
                    Target="Content"></asp:TreeNode>

            </asp:TreeNode>

        </Nodes>

    </asp:TreeView>

    <hr />

    <asp:Menu ID="NavigationMenu"
        DisappearAfter="2000"
        StaticDisplayLevels="2"
        StaticSubMenuIndent="10"
        Orientation="Vertical"
        Font-Names="Arial"
        Target="_blank"
        runat="server">

        <StaticMenuItemStyle BackColor="LightSteelBlue"
            ForeColor="Black" />
        <StaticHoverStyle BackColor="LightSkyBlue" />
        <DynamicMenuItemStyle BackColor="Black"
            ForeColor="Silver" />
        <DynamicHoverStyle BackColor="LightSkyBlue"
            ForeColor="Black" />

        <Items>
            <asp:MenuItem NavigateUrl="Home.aspx"
                Text="Home"
                ToolTip="Home">
                <asp:MenuItem NavigateUrl="Music.aspx"
                    Text="Music"
                    ToolTip="Music">
                    <asp:MenuItem NavigateUrl="Classical.aspx"
                        Text="Classical"
                        ToolTip="Classical" />
                    <asp:MenuItem NavigateUrl="Rock.aspx"
                        Text="Rock"
                        ToolTip="Rock" />
                    <asp:MenuItem NavigateUrl="Jazz.aspx"
                        Text="Jazz"
                        ToolTip="Jazz" />
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="Movies.aspx"
                    Text="Movies"
                    ToolTip="Movies">
                    <asp:MenuItem NavigateUrl="Action.aspx"
                        Text="Action"
                        ToolTip="Action" />
                    <asp:MenuItem NavigateUrl="Drama.aspx"
                        Text="Drama"
                        ToolTip="Drama" />
                    <asp:MenuItem NavigateUrl="Musical.aspx"
                        Text="Musical"
                        ToolTip="Musical" />
                </asp:MenuItem>
            </asp:MenuItem>
        </Items>

    </asp:Menu>

</asp:Content>

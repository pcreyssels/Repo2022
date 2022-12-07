<%@ Page Title="MA PAGE WEBFORM10" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="WebApplication1.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1 runat="server" meta:resourcekey="LabelVotreDossier">_votre dossier : </h1>


    <h1 runat="server" meta:resourcekey="LabelVotreDossier">ligne 2 : </h1>

    <button type="button" class="btn btn-primary" data-toggle="popover" data-content="Popover content goes here..." style="margin: 20px;">
        Click me
    </button>

    <br />

    <asp:Literal runat="server" Text="_langinfo" meta:resourcekey="labelwebform10"></asp:Literal>

    <br />

    <span class="glyphicon glyphicon-info-sign" aria-hidden="true" data-toggle="popover" data-content="_INFO1..."></span>

    <br />

    <%-- You can make a popover close when the user clicks 
        anywhere within the document (as opposed to clicking the element that triggered it — the default behavior).
        To close a popover like this, use data-trigger="focus": 
        
        You can change it so that the popover is triggered by a mouseover event, rather than a click.
        To do this, use data-trigger="hover":
        

    --%>
    <div style="color: red">
        bonjour en rouge
        
    </div>

    <span style="color: red">BONJOUR EN ROUGE </span>

    <div class="perso1">
        AQUAMARINE <mark> TEXTE MARQUE </mark>
    </div>

    <span runat="server" id="infosign"
        style="color: green"
        meta:resourcekey="tooltip2"
        class="glyphicon glyphicon-info-sign"
        data-toggle="popover"
        data-content="_INFO2..."
        data-placement="bottom"
        data-html="true"
        data-delay="50"
        title="Popover Title"></span>

    <br />

    <span runat="server" id="Span2"
        meta:resourcekey="tooltip"
        class="glyphicon glyphicon-info-sign"
        aria-hidden="true"
        data-toggle="popover"
        data-content="_INFO2..."
        data-placement="bottom"
        data-html="true"
        data-delay="50"
        data-trigger="hover"
        title="Popover Title"></span>

    <br />

    <span runat="server" id="Span0"
        style="color: salmon"
        class="glyphicon glyphicon-info-sign"
        aria-hidden="true"
        data-toggle="popover"
        data-content="<p class='perso1'>bonjour en rouge </p>"
        data-placement="bottom"
        data-html="true"
        data-delay="50"
        data-trigger="hover"
        >

    </span>

    <br />


    <span runat="server" id="Span1"
        style="color: blue"
        meta:resourcekey="tooltip3"
        class="glyphicon glyphicon-info-sign"
        aria-hidden="true"
        data-toggle="popover"
        data-content="_INFO2..."
        data-placement="bottom"
        data-html="true"
        data-delay="50"
        data-trigger="hover"
        title="Popover Title"></span>

     <br />

    <span runat="server" id="Span4"
        style="color: orange"
        meta:resourcekey="tooltip5"
        class="glyphicon glyphicon-info-sign"
        aria-hidden="true"
        data-toggle="popover"
        data-content="_INFO2..."
        data-placement="bottom"
        data-html="true"
        data-delay="50"
        data-trigger="hover"
        title="Popover Title">


    </span>
    <br />

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

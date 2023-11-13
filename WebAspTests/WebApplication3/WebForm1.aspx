<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <div class="panel panel-primary tintedroundedbackgroundpanel">
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-1">
                    <img
                        src="/fonts/click-4322.png"
                        srcset="/fonts/click-4322.svg"
                        alt="click arrow" />

                </div>
                <div class="col-sm-11">
                    <asp:Literal ID="message_depot" runat="server" Text="message depot" Mode="PassThrough"></asp:Literal>
                </div>
            </div>

        </div>
    </div>
    <hr style="height: 2px; border-width: 0; background-color: green" />

    <div class="panel panel-primary tintedroundedbackgroundpanel">
        <div class="row">
            <div class="col-sm-1">
                <img
                    src="/fonts/click-4322.png"
                    srcset="/fonts/click-4322.svg"
                    alt="click arrow" />

            </div>
            <div class="col-sm-11">
                <asp:Literal ID="Literal2" runat="server" Text="message depot" Mode="PassThrough"></asp:Literal>
            </div>
        </div>

    </div>

    <hr style="height: 2px; border-width: 0; background-color: red" />

    <div class="container-fluid" style="border: 1px solid rgba(255, 0, 0, 0.5); border-radius: 10px;">
        <div class="row" style="display: flex; align-items: center; padding: 10px;">
            <div class="col-sm-1" style="background-color: lightyellow; display: flex; justify-content: right;">
                <img
                    src="/fonts/click-4322.png"
                    srcset="/fonts/click-4322.svg"
                    alt="click arrow" />

            </div>

            <div class="col-sm-1" style="background-color: lightcyan; text-align: right;">
                TEXTE
            </div>

            <div class="col-sm-10">
                <asp:Literal ID="Literal1" runat="server" Text="message depot" Mode="PassThrough"></asp:Literal>
            </div>
        </div>
    </div>


    <hr style="height: 2px; border-width: 0; background-color: red" />

    <div class="panel panel-default">
        <div class="panel-body">
            Basic panel example
        </div>
    </div>


    <asp:LinkButton runat="server" CssClass="fatbutton"> Déposer un dossier </asp:LinkButton>


    <hr />

    <%-- conserver le break line ci dessous tel quel ( fatbutton {white-space: pre-line <=> /* collapse WS, preserve LB */} --%>
    <button onclick="" class="fatbutton">
        Déposer un 
        dossier</button>
    <hr />

    <div class="fatlinkbutton">
        <a href="https://www.w3schools.com/html/default.asp">Déposer
            un dossier (link)</a>
    </div>

    <%--<asp:Button runat="server" CssClass="fatbutton" Text="Déposer un dosssier "> </asp:Button>--%>
    <hr />

    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <a href="https://www.w3schools.com/html/default.asp" class="fatlinkbutton2">Déposer fatlink2
    un dossier (link)

                </a>

            </div>
            <div class="col-sm-4">
                <a href="https://www.w3schools.com/html/default.asp" class="fatlinkbutton2">Déposer fatlink2
    deux dossier (link)

                </a>
            </div>
        </div>
    </div>


    <hr />
    <div>
        The quick brown fox<br />
        jumps over the lazy dog
    </div>

    <hr />

    <div class="block100x100">
        <span class="fatlinkbutton2">
            <a href="https://www.w3schools.com/html/default.asp" style="background-color: yellow; display: flex; align-items: center">Déposer fatlink2 deux dossier (link)</a>
        </span>
    </div>

    <br />
    <br />

    <div class="block100x100">
        <span class="fatlinkbutton">
            <a href="https://www.w3schools.com/html/default.asp" class="ahrefcustom">Déposer fatlink2 deux dossier (link)</a>
        </span>
    </div>

    <br />
    <br />

    <div class="block100x100">
        <span class="fatlinkbutton">
            <asp:HyperLink CssClass="ahrefcustom" runat="server" NavigateUrl="https://www.google.fr">google </asp:HyperLink>
        </span>
    </div>

</asp:Content>

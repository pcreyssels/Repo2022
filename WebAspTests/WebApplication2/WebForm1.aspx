<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="panel panel-default tintedbackgroundpanel">
        <div class="panel-body">
            <div>
                <ul>
                    <li>Pour plus d’informations sur les activités du Centre ENIC-NARIC France, <a href="https://www.france-education-international.fr/expertises/enic-naric" target="_blank"><b><i>cliquer ici </i></b></a>
                    </li>
                    <li>Consulter le <a href="https://phoenix.france-education-international.fr/inscriptions/Ressources/PDF/instructions.pdf" target="_blank"><b><i>mode d'emploi</i></b></a> pour remplir le dossier de demande d’attestation.
                    </li>
                </ul>
                <div style="color: red; font-weight: bold;">
                    Un seul diplôme par dossier peut faire l'objet d'une demande d'attestation.
                </div>
            </div>
        </div>
    </div>

    <br />

    <div>*********************************              TESTS              ********************************* </div>
    <asp:BulletedList ID="ItemsBulletedList"
        BulletStyle="Disc"
        DisplayMode="LinkButton"
        OnClick="ItemsBulletedList_Click"
        runat="server">
        <asp:ListItem Value="http://www.cohowinery.com">Coho Winery</asp:ListItem>
        <asp:ListItem Value="http://www.contoso.com">Contoso, Ltd.</asp:ListItem>
        <asp:ListItem Value="http://www.tailspintoys.com">Tailspin Toys</asp:ListItem>


    </asp:BulletedList>
    <asp:Literal runat="server" Text="message info"></asp:Literal>

    <div class="panel panel-default tintedbackgroundpanel">
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-12">
                    <asp:Literal runat="server" Text="message info" Mode="PassThrough"></asp:Literal>
                </div>
            </div>
        </div>
    </div>

    <div>
        <ul>
            <li>FR Pour plus d’informations sur les activités du Centre ENIC-NARIC France, <a href="https://www.france-education-international.fr/expertises/enic-naric" target="_blank"><b><i>cliquer ici </i></b></a>
            </li>
            <li>Consulter le <a href="https://phoenix.france-education-international.fr/inscriptions/Ressources/PDF/instructions.pdf" target="_blank"><b><i>mode d'emploi</i></b></a> pour remplir le dossier de demande d’attestation.
            </li>
        </ul>
        <div style="color: red; font-weight: bold;">
            Un seul diplôme par dossier peut faire l'objet d'une demande d'attestation.
        </div>
    </div>

    <div>
        <div>
            FR Pour plus d’informations sur les activités du Centre ENIC-NARIC France, <a href="https://www.france-education-international.fr/expertises/enic-naric" target="_blank">cliquer ici </a>
        </div>
        <div>
            Consulter le <a href="https://phoenix.france-education-international.fr/inscriptions/Ressources/PDF/instructions.pdf" target="_blank">mode d'emploi</a> pour remplir le dossier de demande d’attestation.
        </div>
        <div style="color: red">
            Un seul diplôme par dossier peut faire l'objet d'une demande d'attestation.
        </div>
    </div>


    <div class="panel panel-default tintedroundedbackgroundpanel">
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

    <hr />

    <div>
        <span>Bonjour</span>
        <svg width="2em" height="1em">
            <rect width="100%" height="100%" fill="green" />
        </svg>
    </div>


    <hr />

    <div>
        <span>Bonjour av</span>
        <img
            src="/fonts/click-4322.png"
            srcset="/fonts/click-4322.svg"
            alt="click arrow" />
        <span>Bonjour ap</span>
    </div>

    <hr />

    <div>
        <span>Bonjour av</span>
        <img
            src="/fonts/click-4322.png"
            srcset="/fonts/click-4322-hflip.svg"
            alt="click arrow" />
        <span>Bonjour ap</span>
    </div>

    <hr />

    <div>
        <span>Bonjour av</span>
        <svg width="100" height="100">
            <rect width="100%" height="100%" fill="green" />
            <line x1="0" y1="0 " x2="50" y2="50" stroke="orange" stroke-width="5" />
            <line x1="50" y1="0 " x2="100" y2="50" stroke="yellow" stroke-width="5" />
        </svg>

    </div>

</asp:Content>

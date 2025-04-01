<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm17.aspx.cs" Inherits="WebApplication4.WebForm17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel runat="server">
        <div>
            <asp:Label runat="server"> MAIN PANEL </asp:Label>
        </div>

        <asp:Panel runat="server" ID="subpanel_inscphase2">
            <section class="well panelheadingfrombs341 polices10561" aria-labelledby="ariadesc_paneldemande_erreursaisie labelinfo_erreur">
                <div>
                    <asp:Label ID="labelinfo_statut_inscription_phase2"
                        meta:resourcekey="labelinfo_statut_inscription_phase2" runat="server" Text=""></asp:Label>
                </div>
                <br aria-hidden="true" />
                <div style="display: flex; align-items: center; justify-content: center;">
                    <asp:Button CssClass="style10561_button_bluewhite"
                        ID="Button_statut_souspanel_inscription_phase2"
                        OnClick="Button_statut_souspanel_inscription_phase2_Click"
                        runat="server"
                        Text="_VALIDER"
                        meta:resourcekey="Button_statut_souspanel_inscription_phase2" />
                </div>
            </section>
        </asp:Panel>

        <asp:Panel runat="server" ID="subpanel_enatpa_prefac">
            <section class="well panelheadingfrombs341 polices10561" aria-labelledby="ariadesc_paneldemande_erreursaisie labelinfo_erreur">
                <div>
                    <asp:Label meta:resourcekey="labelinfo_statut_enatpa_prefac" runat="server" Text=""></asp:Label>
                </div>
                <br aria-hidden="true" />
                <div style="display: flex; align-items: center; justify-content: center;">
                    <asp:Button CssClass="style10561_button_bluewhite"
                        ID="Button_statut_souspanel_enatpa_prefac"
                        OnClick="Button_statut_souspanel_enatpa_prefac_Click"
                        runat="server"
                        Text="_PAYER"
                        meta:resourcekey="Button_statut_souspanel_enatpa_prefac" />
                </div>
            </section>
        </asp:Panel>

        <asp:Panel runat="server" ID="subpanel3">
            SUBPANEL 3
            <div>information subpanel 3</div>
        </asp:Panel>
    </asp:Panel>

    <br />
    <asp:Button Text="SubPanel1" runat="server" ID="Button1" OnClick="Button1_Click" />
    <asp:Button Text="SubPanel2" runat="server" ID="Button2" OnClick="Button2_Click" />
    <asp:Button Text="SubPanel3" runat="server" ID="Button3" OnClick="Button3_Click" />


    <br />
    <hr style="border: 1px solid red;" />
    <h3>PANNEAU TEST  </h3>

    <section class="well panelheadingfrombs341 polices10561" aria-labelledby="ariadesc_paneldemande_erreursaisie labelinfo_erreur">
        <div>
            <div class="polices10561_enlarged">
                <span><b>Le statut de votre demande est : </b></span><span class="style10561_color_red">"Inscription - Phase 2".</span>
            </div>
            <br />
            <div>Veuillez <b>compléter votre inscription et ajouter les pièces demandées.</b> Une fois ces documents ajoutés en ligne, vous pourrez procéder au paiement de la première facture.</div>
            <br />
            <div>Poursuivez votre inscription en cliquant sur ce lien : https://phoenix.ciep.fr/inscriptions/notification.aspx?id=fa9a4efa-50b3-4ca7-ae00-3beb09d4f868</div>
        </div>
        <div style="display: flex; align-items: center; justify-content: center;">
            <asp:Button CssClass="style10561_button_bluewhite"
                ID="_Button_statut_souspanel_inscription_phase2"
                runat="server"
                Text="_VALIDER"
                meta:resourcekey="Button_statut_souspanel_inscription_phase2" />
        </div>
    </section>

    <br />
    <hr style="border: 1px solid red;" />
    <h3>PANNEAU TEST  </h3>

    <section class="well panelheadingfrombs341 polices10561" aria-labelledby="ariadesc_paneldemande_erreursaisie labelinfo_erreur">
        <div>
            <div class="polices10561_enlarged">
                <span><b>Le statut de votre demande est : </b></span><span class="style10561_color_red">"En attente de paiement – 1ère facture".</span>
            </div>
            <br />
            <div role="img"  style="display: grid; grid-template-columns: auto auto 1fr; align-items: center">
                <div style="height: 4em">
                    <img runat="server" id="cb" meta:resourcekey="iconecb"
                        style="width: 100%; height: 100%"
                        src="~/Images/CB.png"
                        alt="_cb" />
                </div>
                <div>&nbsp</div>
                <div>
                    Veuillez régler la première facture de 20 euros en accédant directement au paiement via le lien suivant : <a href="BASE_URL/notification.aspx?id=aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"> BASE_URL/notification.aspx?id=aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee </a>. Merci de privilégier le paiement par carte bancaire.
                    <%--<span runat="server" meta:resourcekey="modal_recap_header"></span>--%>
                </div>
            </div>
        </div>
        <div style="display: flex; align-items: center; justify-content: center;">
            <asp:Button CssClass="style10561_button_bluewhite"
                ID="Button4"
                runat="server"
                Text="_VALIDER"
                meta:resourcekey="Button_statut_souspanel_inscription_phase2" />
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">
</asp:Content>

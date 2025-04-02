<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm17.aspx.cs" Inherits="WebApplication4.WebForm17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel runat="server">
        <div>
            <asp:Label runat="server"> MAIN PANEL </asp:Label>
        </div>

        <asp:Panel runat="server" ID="subpanel_inscphase2">
            <section class="well panelheadingfrombs341 polices10561">
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
        <%-- PANEL EN ATTENTE PAIEMENT PRE FACTURE --%>
        <asp:Panel runat="server" ID="subpanel_enatpa_prefac">
            <section class="well panelheadingfrombs341 polices10561">
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_enatpa_prefac_text1" runat="server" Text=""></asp:Label>
                </div>

                <div role="img" style="display: grid; grid-template-columns: auto auto 1fr; align-items: center">
                    <div style="height: 4em">
                        <img runat="server" id="Img1" meta:resourcekey="iconecb"
                            style="width: 100%; height: 100%"
                            src="~/Images/CB_ft.png"
                            alt="_cb" />
                    </div>
                    <div>&nbsp</div>
                    <div>
                        <asp:Label meta:resourcekey="texteinfo_statut_enatpa_prefac_text2" runat="server" Text=""></asp:Label>
                    </div>
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
        <%-- PANEL EN ATTENTE PAIEMENT 2E FACTURE --%>
        <asp:Panel runat="server" ID="subpanel_enatpa_deufac">
            <section class="well panelheadingfrombs341 polices10561">
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_enatpa_deufac_text1" runat="server" Text=""></asp:Label>
                </div>

                <div role="img" style="display: grid; grid-template-columns: auto auto 1fr; align-items: center">
                    <div style="height: 4em">
                        <img runat="server" id="Img2" meta:resourcekey="iconemail"
                            style="width: 100%; height: 100%"
                            src="~/Images/mail_ft.png"
                            alt="_mail" />
                    </div>
                    <div>&nbsp</div>
                    <div>
                        <asp:Label meta:resourcekey="texteinfo_statut_enatpa_deufac_text2" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div role="img" style="display: grid; grid-template-columns: auto auto 1fr; align-items: center">
                    <div style="height: 4em">
                        <img runat="server" id="Img3" meta:resourcekey="iconecb"
                            style="width: 100%; height: 100%"
                            src="~/Images/CB_ft.png"
                            alt="_cb" />
                    </div>
                    <div>&nbsp</div>
                    <div>
                        <asp:Label meta:resourcekey="texteinfo_statut_enatpa_deufac_text3" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <br aria-hidden="true" />
                <div style="display: flex; align-items: center; justify-content: center;">
                    <asp:Button CssClass="style10561_button_bluewhite"
                        ID="Button_statut_souspanel_enatpa_deufac"
                        OnClick="Button_statut_souspanel_enatpa_deufac_Click"
                        runat="server"
                        Text="_PAYER"
                        meta:resourcekey="Button_statut_souspanel_enatpa_deufac" />
                </div>
            </section>
        </asp:Panel>
    </asp:Panel>
    <%-- PANEL DOSSIER RECEVABILITE --%>
    <asp:Panel runat="server" ID="subpanel_dossier_recevabilite">
        <section class="well panelheadingfrombs341 polices10561">
            <div>
                <asp:Label meta:resourcekey="texteinfo_statut_dossier_recevabilite_text1" runat="server" Text=""></asp:Label>
            </div>

            <div role="img" style="display: grid; grid-template-columns: auto auto 1fr; align-items: center">
                <div style="height: 4em">
                    <img runat="server" id="Img4" meta:resourcekey="iconecochevertevalide"
                        style="width: 100%; height: 100%"
                        src="~/Images/valide_ft.png"
                        alt="_iconecochevertevalide" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_dossier_recevabilite_text2" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div role="img" style="display: grid; grid-template-columns: auto auto 1fr; align-items: center">
                <div style="height: 4em">
                    <img runat="server" id="Img5" meta:resourcekey="iconemail"
                        style="width: 100%; height: 100%"
                        src="~/Images/mail_ft.png"
                        alt="_mail" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_dossier_recevabilite_text3" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <br aria-hidden="true" />
        </section>
    </asp:Panel>
    <%-- PANEL DOSSIER A COMPLETER RECEVABLITE --%>
    <asp:Panel runat="server" ID="subpanel_dossacomp_recev">
        <section class="well panelheadingfrombs341 polices10561">
            <div>
                <asp:Label meta:resourcekey="texteinfo_statut_dossacomp_recev_text1" runat="server" Text=""></asp:Label>
            </div>
            <br aria-hidden="true" />
            <div role="img" style="display: grid; grid-template-columns: auto auto auto; align-items: center">
                <%-- 1e ligne --%>
                <div>&nbsp</div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_dossacomp_recev_text2" runat="server" Text=""></asp:Label>
                </div>
                <%-- 2e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img6" meta:resourcekey="iconeattention"
                        style="width: 100%; height: 100%"
                        src="~/Images/attention2_ft.png"
                        alt="_attention" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_dossacomp_recev_text3" runat="server" Text=""></asp:Label>
                </div>

                <%-- 3e ligne --%>
                <div>&nbsp</div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_dossacomp_recev_text4" runat="server" Text=""></asp:Label>
                </div>

            </div>


            <br aria-hidden="true" />
            <div style="display: flex; align-items: center; justify-content: center;">
                <asp:Button CssClass="style10561_button_bluewhite"
                    ID="Button_statut_souspanel_dossacomp_recev"
                    OnClick="Button_statut_souspanel_dossacomp_recev_Click"
                    runat="server"
                    Text="_COMPLETER VOTRE DOSSIER"
                    meta:resourcekey="Button_statut_souspanel_dossacomp_recev" />
            </div>
        </section>
    </asp:Panel>

    <%-- PANEL DOSSIER COMPLETE RECEVABLITE --%>
    <asp:Panel runat="server" ID="subpanel_dosscomplete_recev">
        <section class="well panelheadingfrombs341 polices10561">
            <div>
                <asp:Label meta:resourcekey="texteinfo_statut_dosscomplete_recev_text1" runat="server" Text=""></asp:Label>
            </div>
            <br aria-hidden="true" />
            <div role="img" style="display: grid; grid-template-columns: auto auto auto; align-items: center">
                <%-- 1e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img8" meta:resourcekey="loupe"
                        style="width: 100%; height: 100%"
                        src="~/Images/en_cours_de_traitement_ft.png"
                        alt="_loupe" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_dosscomplete_recev_text2" runat="server" Text=""></asp:Label>
                </div>
                <%-- 2e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img7" meta:resourcekey="iconemail"
                        style="width: 100%; height: 100%"
                        src="~/Images/mail_ft.png"
                        alt="_attention" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_dosscomplete_recev_text3" runat="server" Text=""></asp:Label>
                </div>

                <%-- 3e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img9" meta:resourcekey="iconeattention"
                        style="width: 100%; height: 100%"
                        src="~/Images/attention2_ft.png"
                        alt="_attention" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_dosscomplete_recev_text4" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <br aria-hidden="true" />
            <div style="display: flex; align-items: center; justify-content: center;">
                <asp:Button CssClass="style10561_button_bluewhite"
                    ID="Button6"
                    OnClick="Button_statut_souspanel_dossacomp_recev_Click"
                    runat="server"
                    Text="_COMPLETER VOTRE DOSSIER"
                    meta:resourcekey="Button_statut_souspanel_dossacomp_recev" />
            </div>
        </section>
    </asp:Panel>
    <%-- PANEL DOSSIER INSTRUCTION --%>
    <asp:Panel runat="server" ID="subpanel_dossier_instruction">
        <section class="well panelheadingfrombs341 polices10561">
            <div>
                <asp:Label meta:resourcekey="texteinfo_statut_dossier_instruction_text1" runat="server" Text=""></asp:Label>
            </div>
            <br aria-hidden="true" />
            <div role="img" style="display: grid; grid-template-columns: auto auto auto; align-items: center">
                <%-- 1e ligne --%>
                <div>&nbsp</div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_dossier_instruction_text2" runat="server" Text=""></asp:Label>
                </div>
                <%-- 2e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img11" meta:resourcekey="iconemail"
                        style="width: 100%; height: 100%"
                        src="~/Images/mail_ft.png"
                        alt="_mail" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_dossier_instruction_text3" runat="server" Text=""></asp:Label>
                </div>

                <%-- 3e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img12" meta:resourcekey="iconehorloge"
                        style="width: 100%; height: 100%"
                        src="~/Images/horloge_ft.png"
                        alt="_horloge" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_dossier_instruction_text4" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <br aria-hidden="true" />
        </section>
    </asp:Panel>
    <%-- PANEL DOSSIER ATTESTATION DELIVREE --%>
    <asp:Panel runat="server" ID="subpanel_attestation_delivree">
        <section class="well panelheadingfrombs341 polices10561">
            <div>
                <asp:Label meta:resourcekey="texteinfo_statut_attestation_delivree_text1" runat="server" Text=""></asp:Label>
            </div>
            <br aria-hidden="true" />
            <div role="img" style="display: grid; grid-template-columns: auto auto auto; align-items: center">
                <%-- 1e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img10" meta:resourcekey="iconeattestation"
                        style="width: 100%; height: 100%"
                        src="~/Images/attestation_ft.png"
                        alt="_attestation" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_attestation_delivree_text2" runat="server" Text=""></asp:Label>
                </div>
                <%-- 2e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img13" meta:resourcekey="iconesablier"
                        style="width: 100%; height: 100%"
                        src="~/Images/duree_ft.png"
                        alt="_duree" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_statut_attestation_delivree_text3" runat="server" Text=""></asp:Label>
                </div>

            </div>
            <br aria-hidden="true" />
            <div style="display: flex; align-items: center; justify-content: center;">
                <asp:Button CssClass="style10561_button_bluewhite"
                    ID="Button_statut_souspanel_attestation_delivree"
                    OnClick="Button_statut_souspanel_attestation_delivree_Click"
                    runat="server"
                    Text="_TELECHARGER LE RESULTAT"
                    meta:resourcekey="Button_statut_souspanel_attestation_delivree" />
            </div>
        </section>
    </asp:Panel>
    <br />
    <asp:Button Text="SubPanel1" runat="server" ID="Button1" OnClick="Button1_Click" />
    <asp:Button Text="SubPanel2" runat="server" ID="Button2" OnClick="Button2_Click" />
    <asp:Button Text="SubPanel3" runat="server" ID="Button3" OnClick="Button3_Click" />

    <%-- ************************ PANNEAUX TEST ************************ --%>
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
            <div role="img" style="display: grid; grid-template-columns: auto auto 1fr; align-items: center">
                <div style="height: 4em">
                    <img runat="server" id="cb" meta:resourcekey="iconecb"
                        style="width: 100%; height: 100%"
                        src="~/Images/CB_ft.png"
                        alt="_cb" />
                </div>
                <div>&nbsp</div>
                <div>
                    Veuillez régler la première facture de 20 euros en accédant directement au paiement via le lien suivant : <a href="BASE_URL/notification.aspx?id=aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee">BASE_URL/notification.aspx?id=aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee </a>. Merci de privilégier le paiement par carte bancaire.
                </div>
            </div>
        </div>
        <div style="display: flex; align-items: center; justify-content: center;">
            <asp:Button CssClass="style10561_button_bluewhite"
                ID="Button4"
                runat="server"
                Text="_VALIDER"
                meta:resourcekey="Button_statut_souspanel_enatpa_prefac" />
        </div>
    </section>

    <br />
    <hr style="border: 1px solid red;" />
    <h3>PANNEAU TEST  </h3>

    <section class="well panelheadingfrombs341 polices10561" aria-labelledby="ariadesc_paneldemande_erreursaisie labelinfo_erreur">
        <div>
            <div>Après un premier examen, vous recevrez un e-mail vous indiquant la prochaine étape :</div>
            <div>
                <ul>
                    <li>Si votre dossier est <b>complet</b>, vous recevrez une facture à régler pour poursuivre la demande. (Les réfugiés, demandeurs d’asile et bénéficiaires de la protection subsidiaire sont exonérés de frais, la procédure étant entièrement gratuite).</li>
                    <li>Si des <b>pièces complémentaires</b> sont nécessaires, vous pouvez ajouter les documents demandés depuis le lien reçu par e-mail ou depuis le suivi de votre dossier.</li>
                </ul>
            </div>
        </div>
        <div style="display: flex; align-items: center; justify-content: center;">
            <asp:Button CssClass="style10561_button_bluewhite"
                ID="Button5"
                runat="server"
                Text="_VALIDER"
                meta:resourcekey="Button_statut_souspanel_enatpa_prefac" />
        </div>
    </section>

    <div>
        <div>Vous recevrez un e-mail vous indiquant la prochaine étape :</div>
        <div>
            <ul>
                <li>Si votre dossier est complet, vous recevrez une facture à régler pour poursuivre la demande. (Les réfugiés, demandeurs d’asile et bénéficiaires de la protection subsidiaire sont exonérés de frais, la procédure étant entièrement gratuite).</li>
                <li>Si des pièces complémentaires sont nécessaires, vous pouvez ajouter les documents demandés depuis le lien reçu par email ou depuis le suivi de votre dossier.</li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">
</asp:Content>

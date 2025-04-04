<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm17.aspx.cs" Inherits="WebApplication4.WebForm17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <br />
    <hr style="border: 1px solid blue;" />
    <h3>PANNEAUX RESULTAT DE L EXPERTISE  </h3>

    <%-- PANEL INFO ATTESTATION COMPARABILITE --%>
    <asp:Panel runat="server" ID="Panel_ire_attestationcomparabilite">
        <section class="well panelheadingfrombs341 polices10561">
            <%-- en tête --%>
            <div>
                <asp:Label meta:resourcekey="texteinfo_ire_attestationcomparabilite_text1" runat="server" Text=""></asp:Label>
            </div>
            <br aria-hidden="true" />
            <div role="img" style="display: grid; grid-template-columns: auto 5% auto; align-items: center">
                <%-- 1e ligne --%>
                <div>&nbsp</div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_attestationcomparabilite_text2" runat="server" Text=""></asp:Label>
                </div>

                <%-- ligne vide --%>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>

                <%-- 2e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img15" meta:resourcekey="iconedocumentofficiel"
                        style="width: 100%; height: 100%"
                        src="~/Images/document_officiel_ft.png"
                        alt="_doc officiel" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_attestationcomparabilite_text3" runat="server" Text=""></asp:Label>
                </div>

                <%-- ligne vide --%>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>

                <%-- 3e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img16" meta:resourcekey="icone_validite_illimitee"
                        style="width: 100%; height: 100%"
                        src="~/Images/validite_illimitee_ft.png"
                        alt="_valid ilim" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_attestationcomparabilite_text4" runat="server" Text=""></asp:Label>
                </div>

                <%-- ligne vide --%>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>

                <%-- 4e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img14" meta:resourcekey="icone_conservation_usb_cloud"
                        style="width: 100%; height: 100%"
                        src="~/Images/conservation_usb_cloud_ft.png"
                        alt="_conservatino usb cloud" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_attestationcomparabilite_text5" runat="server" Text=""></asp:Label>
                </div>

                <%-- ligne vide --%>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>

                <%-- 5e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img17" meta:resourcekey="information"
                        style="width: 100%; height: 100%"
                        src="~/Images/information_ft.png"
                        alt="_information" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_attestationcomparabilite_text6" runat="server" Text=""></asp:Label>
                </div>

            </div>
            <br aria-hidden="true" />
        </section>
    </asp:Panel>

    <%-- PANEL INFO MENTION FIGURANT SUR L ATTESTATION --%>
    <asp:Panel runat="server" ID="Panel_ire_mentionfigattestation">
        <section class="well panelheadingfrombs341 polices10561">
            <%-- en tête --%>
            <div>
                <asp:Label meta:resourcekey="texteinfo_ire_mentionfigattestation_entete" runat="server" Text=""></asp:Label>
            </div>
            <br aria-hidden="true" />
            <div role="img" style="display: grid; grid-template-columns: auto 5% auto; align-items: center">
                <%-- 1e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img19" meta:resourcekey="iconegrosguillement"
                        style="width: 100%; height: 100%"
                        src="~/Images/mention_sur_attestation_ft.png"
                        alt="_mention_sur_attestation" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_mentionfigattestation_ligne1" runat="server" Text=""></asp:Label>
                </div>

                <%-- ligne vide --%>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>

                <%-- 2e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img18" meta:resourcekey="iconegrosguillement"
                        style="width: 100%; height: 100%"
                        src="~/Images/mention_sur_attestation_ft.png"
                        alt="_mention_sur_attestation" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_mentionfigattestation_ligne2" runat="server" Text=""></asp:Label>
                </div>

            </div>
            <br aria-hidden="true" />
        </section>
    </asp:Panel>


    <%-- PANEL INFO COMPRENDRE LE NIVEAU DE L’ATTESTATION DE COMPARABILITÉ --%>
    <asp:Panel runat="server" ID="Panel_ire_comprendrenivattestcomp">
        <section class="well panelheadingfrombs341 polices10561">
            <%-- en tête --%>
            <div>
                <asp:Label meta:resourcekey="texteinfo_ire_comprendrenivattestcomp_entete" runat="server" Text=""></asp:Label>
            </div>
            <br aria-hidden="true" />
            <div role="img" style="display: grid; grid-template-columns: auto 5% auto; align-items: center">
                <%-- 1e ligne --%>
                <div>&nbsp</div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_comprendrenivattestcomp_ligne1" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <br aria-hidden="true" />
        </section>
    </asp:Panel>


    <%-- PANEL INFO COMPRENDRE L’ATTESTATION DE RECONNAISSANCE DE PÉRIODE D’ÉTUDES --%>
    <asp:Panel runat="server" ID="Panel_ire_comprendreatterecoperetu">
        <section class="well panelheadingfrombs341 polices10561">
            <%-- en tête --%>
            <div>
                <asp:Label meta:resourcekey="texteinfo_ire_comprendreatterecoperetu_entete" runat="server" Text=""></asp:Label>
            </div>
            <br aria-hidden="true" />
            <div role="img" style="display: grid; grid-template-columns: auto 5% auto; align-items: center">
                <%-- 1e ligne --%>
                <div>&nbsp</div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_comprendreatterecoperetu_ligne1" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <br aria-hidden="true" />
        </section>
    </asp:Panel>

    <%-- PANEL INFO CONTESTATION --%>
    <asp:Panel runat="server" ID="Panel_ire_contestation">
        <section class="well panelheadingfrombs341 polices10561">
            <%-- en tête --%>
            <div>
                <asp:Label meta:resourcekey="texteinfo_ire_contestation_entete" runat="server" Text=""></asp:Label>
            </div>
            <br aria-hidden="true" />
            <div role="img" style="display: grid; grid-template-columns: auto 5% auto; align-items: center">
                <%-- 1e ligne --%>
                <div style="height: 4em">
                    <img runat="server" id="Img22" meta:resourcekey="iconegrosguillement"
                        style="width: 100%; height: 100%"
                        src="~/Images/contestation_ft.png"
                        alt="_mention_sur_attestation" />
                </div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_contestation_ligne1" runat="server" Text=""></asp:Label>
                </div>

                <%-- ligne vide --%>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>
                <div aria-hidden="true">&nbsp</div>

                <%-- 2e ligne --%>
                <div>&nbsp</div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_contestation_ligne2" runat="server" Text=""></asp:Label>
                </div>

            </div>
            <br aria-hidden="true" />
        </section>
    </asp:Panel>

    <%-- PANEL PERTE DU DOCUMENT --%>
    <asp:Panel runat="server" ID="Panel_ire_pertedocument">
        <section class="well panelheadingfrombs341 polices10561">
            <%-- en tête --%>
            <div>
                <asp:Label meta:resourcekey="texteinfo_ire_pertedocument_entete" runat="server" Text=""></asp:Label>
            </div>
            <br aria-hidden="true" />
            <div role="img" style="display: grid; grid-template-columns: auto 5% auto; align-items: center">
                <%-- 1e ligne --%>
                <div>&nbsp</div>
                <div>&nbsp</div>
                <div>
                    <asp:Label meta:resourcekey="texteinfo_ire_pertedocument_ligne1" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <br aria-hidden="true" />
        </section>
    </asp:Panel>

    <%-- ************************ PANNEAUX TEST ************************ --%>
    <br />
    <hr style="border: 1px solid orange;" />
    <h3>PANNEAU TEST  </h3>

    <div>Si vous avez perdu le document indiquant le résultat de l’expertise, plusieurs options s’offrent à vous :</div>

    <ul>
        <li><b>Téléchargement en ligne</b> : Votre attestation reste <b>disponible pendant un an via le suivi de votre dossier sur notre site</b>.</li>
        <li><b>Demande de réenvoi</b> : Si plus d’un an s’est écoulé, vous pouvez contacter le centre ENIC-NARIC France via "contact ENICNARIC" pour obtenir un nouvel envoi par courriel.</li>
    </ul>

    <div>
        <span class="glyphicon glyphicon-pushpin style10561_color_red" aria-hidden="true"></span><b> Important</b> : Lors de votre demande, veillez à indiquer votre numéro de dossier, ainsi que votre nom et prénom afin de faciliter le traitement.
    </div>
    <br />
    <div>
        <span class="style10561_color_lightskyblue" aria-hidden="true">&#x2BC1;</span><b> Conseil</b> : Une fois votre attestation récupérée, pensez à l’enregistrer sur plusieurs supports (ordinateur, clé USB, disque dur externe, cloud) afin d’éviter toute perte future et de toujours pouvoir y accéder en cas de besoin.
    </div>
 
    <br />


    <div>Les attestations sont établies sur la base des documents transmis, en reprenant fidèlement :</div>
    <br />
    <ul>
        <li>L’intitulé du diplôme,</li>
        <li>Le nom de l’établissement,</li>
        <li>Éventuellement la spécialité, dans la langue d’origine.</li>
    </ul>

    <%-- *** --%>

    <div>Il est important de noter qu’<b>il n’existe pas de correspondance exacte entre les cursus suivis à l’étranger et les diplômes français</b>.</div>
    <div>L’évaluation repose sur des critères spécifiques propres au centre ENIC-NARIC France.</div>
    <br />
    <div>
        Si vous souhaitez contester le résultat de l’expertise, nous vous recommandons de consulter la liste des critères d’évaluation appliqués par le centre ENIC-NARIC France :
    </div>
    <%-- 1F4CE trombonne --%>
    <div><span class="style10561_color_lightskyblue" aria-hidden="true">&#x1F4CE;</span>Les procédures d’évaluation des diplômes : <a href="https://www.france-education-international.fr/article/les-procedures-devaluation-des-diplomes-au-centre-enic-naric-france" target="_blank">https://www.france-education-international.fr/article/les-procedures-devaluation-des-diplomes-au-centre-enic-naric-france </a></div>
    <br />
    <div>Pour toute demande complémentaire, vous pouvez également nous contacter via le service dédié : "contact RECOURS"</div>
    <br />
    <div>
        <div>Une attestation de reconnaissance de période d’études ou de formation à l’étranger peut être délivrée <b>si vous n’avez pas achevé votre cursus</b>, par exemple en cas de dernière année non validée, mémoire non soutenu, ou stage de fin d’études non effectué.</div>
        <br />
        <div>Ce document <b>précise le nombre d’années d’études secondaires ou supérieures validées</b>. Son évaluation repose sur les mêmes critères que ceux utilisés pour une attestation de comparabilité, notamment :</div>
        <br />
        <ul>
            <li>La reconnaissance du cursus et de l’établissement par les autorités du pays d’origine,</li>
            <li>Les prérequis d’accès à la formation,</li>
            <li>Les débouchés académiques associés.</li>
        </ul>
        Cependant, elle ne mentionne <b>pas de niveau</b>, car le diplôme concerné est <b>inachevé</b>.
    </div>


    <div class="polices10561">
        <div>Si vous avez reçu une attestation de comparabilité, vous pouvez la présenter aux <b>employeurs, établissements de formation et organismes en charge des concours</b>. Ce document permet d’établir une <u>correspondance entre votre diplôme étranger et le cadre français des certifications</u>, facilitant ainsi votre reconnaissance académique et/ou professionnelle en France.</div>
        <br />
        <div class="style10561_color_red">Informations importantes sur l’attestation : </div>
    </div>
    <div class="polices10561">
        <b>Document officiel : </b>L’attestation électronique reçue constitue l’original officiel. <b>Aucun envoi papier ne sera effectué.</b>
    </div>
    <div class="polices10561">
        <b>Validité illimitée : </b>Ce document n’a pas de date d’expiration ; vous pouvez l’utiliser tout au long de votre parcours professionnel et académique.
    </div>

    <br />
    <hr style="border: 1px solid green;" />


    <asp:Panel runat="server">
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
    </asp:Panel>

    <br />
    <asp:Button Text="SubPanel1" runat="server" ID="Button1" OnClick="Button1_Click" />
    <asp:Button Text="SubPanel2" runat="server" ID="Button2" OnClick="Button2_Click" />
    <asp:Button Text="SubPanel3" runat="server" ID="Button3" OnClick="Button3_Click" />






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

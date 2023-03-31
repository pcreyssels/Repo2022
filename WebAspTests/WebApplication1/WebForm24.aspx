<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="WebForm24.aspx.cs" Inherits="WebApplication1.WebForm24" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="form-horizontal">
        <div class="container">

            <%--****** AVANT MODIF 6 champs radio
                    REFUGIE 
                    DEMANDEUR ASILE
                    PROTECTION SUBSIDIAIRE
                    PROTECTION TEMPORAIRE
                    APATRIDE
                    PRIMO-ARRIVANT
                    ****** APRES MODIF 2 radio
                    REFUGIE ET ASSIMILE
                    PRIMO-ARRIVANT
                    primom 	arrivant
                    - 5 checkbox visibles si refugie et assimilé est actif
                    REFUGIE
                    DEMANDEUR D'ASILE
                    BENEFICIAIRE PROTECTION SUBSIDIAIRE
                    BENEFICIAIRE PROTECTION TEMPORAIRE
                    APATRIDE--%>

            <%-- STATUT 6 lignes radio 3->6 le 8/3/23 --%>
            <%-- 1 REFUGIE --%>
            <%-- aligned-row (égalise la hauteur de colonnes sur une ligne) 
                        display-flex-center (centre le contenu des colonnes)
            --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label1" runat="server" meta:resourcekey="LabelRefugie" />
                    <%-- POPOVER ci dessous : data-content sera affiché tel quel (sauts de ligne) avec la propriété css : 'white-space: pre-wrap'
                                affectée à la classe popover (site.css) --%>
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelRefugieDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="true"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                            <%--info--%>
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton_refugie" Text="" Checked="False" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>
            <%-- 2 DEMANDEUR ASILE --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label7" runat="server" meta:resourcekey="LabelDemandeurAsile" />
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover"
                        meta:resourcekey="LabelDemandeurAsileDocumentsaFournir"
                        data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="false"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton_demasile" Text="" Checked="False" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>
            <%-- 3  PROTECTION SUBSIDIAIRE --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label8" runat="server" meta:resourcekey="LabelBenProSub" />
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelBenProSubDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="false"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                            <%--info--%>
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton_benprosub" Text="" Checked="false" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>


            <%-- 4  PROTECTION TEMPORAIRE --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label17" runat="server" meta:resourcekey="LabelBenProTemp" />
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelBenProTempDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="false"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                            <%--info--%>
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton_benprotemp" Text="" Checked="false" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>

            <%-- 5  APATRIDE --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label18" runat="server" meta:resourcekey="LabelApatride" />
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelApatrideDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="false"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                            <%--info--%>
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton_apatride" Text="" Checked="false" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>

            <%-- 6  PRIMO-ARRIVANT --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label19" runat="server" meta:resourcekey="LabelPrimoArrivant" />
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelPrimoArrivantDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="false"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                            <%--info--%>
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton_PrimoArrivant" Text="" Checked="false" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>

        </div>
    </div>



    <hr />
    <h3>********************** </h3>

    <div class="form-horizontal">
        <div class="container">

            <%--****** AVANT MODIF 6 champs radio
                    REFUGIE 
                    DEMANDEUR ASILE
                    PROTECTION SUBSIDIAIRE
                    PROTECTION TEMPORAIRE
                    APATRIDE
                    PRIMO-ARRIVANT
                    ****** APRES MODIF 2 radio
                    REFUGIE ET ASSIMILE
                    PRIMO-ARRIVANT
                    primom 	arrivant
                    - 5 checkbox visibles si refugie et assimilé est actif
                    REFUGIE
                    DEMANDEUR D'ASILE
                    BENEFICIAIRE PROTECTION SUBSIDIAIRE
                    BENEFICIAIRE PROTECTION TEMPORAIRE
                    APATRIDE--%>

            <%-- STATUT 6 lignes radio 3->6 le 8/3/23 --%>
            <%-- 1 REFUGIE --%>
            <%-- aligned-row (égalise la hauteur de colonnes sur une ligne) 
                        display-flex-center (centre le contenu des colonnes)
            --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label2" runat="server" meta:resourcekey="LabelRefugie" />
                    <%-- POPOVER ci dessous : data-content sera affiché tel quel (sauts de ligne) avec la propriété css : 'white-space: pre-wrap'
                                affectée à la classe popover (site.css) --%>
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelRefugieDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="true"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                            <%--info--%>
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton1" Text="" Checked="False" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>
            <%-- 2 DEMANDEUR ASILE --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label3" runat="server" meta:resourcekey="LabelDemandeurAsile" />
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover"
                        meta:resourcekey="LabelDemandeurAsileDocumentsaFournir"
                        data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="false"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton2" Text="" Checked="False" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>
            <%-- 3  PROTECTION SUBSIDIAIRE --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label4" runat="server" meta:resourcekey="LabelBenProSub" />
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelBenProSubDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="false"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                            <%--info--%>
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton3" Text="" Checked="false" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>


            <%-- 4  PROTECTION TEMPORAIRE --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label5" runat="server" meta:resourcekey="LabelBenProTemp" />
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelBenProTempDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="false"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                            <%--info--%>
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton4" Text="" Checked="false" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>

            <%-- 5  APATRIDE --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label6" runat="server" meta:resourcekey="LabelApatride" />
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelApatrideDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="false"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                            <%--info--%>
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton5" Text="" Checked="false" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>

            <%-- 6  PRIMO-ARRIVANT --%>
            <div class="row aligned-row display-flex-center">
                <div class="col-sm-8 control-label formulaire-zone-label">
                    <asp:Label ID="Label9" runat="server" meta:resourcekey="LabelPrimoArrivant" />
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelPrimoArrivantDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="false"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign">
                            <%--info--%>
                    </button>
                </div>
                <div class="col-sm-4">
                    <asp:RadioButton ID="RadioButton6" Text="" Checked="false" GroupName="RadioGroup1" runat="server" />
                </div>
            </div>

        </div>
    </div>

    <hr />

    <asp:Panel BorderStyle="Solid" Visible="true" Enabled="false" runat="server">
        <div>
            <asp:CheckBox ID="CB1" runat="server" Enabled="true" Text="CB1" />
        </div>
        <div>
            <asp:CheckBox ID="CB2" runat="server" Text="CB2" />
        </div>


        <div>
            <asp:CheckBox ID="CB3" runat="server" Text="CB3" />
        </div>
    </asp:Panel>


    <hr />
    <h3>nouveau panel </h3>

    <div class="panel panel-default">
        <div class="panel-body">

            <div style="display: grid; grid-template-columns: 8fr 4fr; align-items: center">
                <%-- RADIO PRIMO-ARRIVANT  --%>
                <%-- label et bouton info --%>
                <div style="text-align: right;" class=" formulaire-zone-label control-label">
                    <asp:Label ID="Label12" runat="server" meta:resourcekey="LabelPrimoArrivant" />
                    <%-- BOUTON --%>
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelPrimoArrivantDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="true"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign" />
                        <%--info--%>
                    </button>
                </div>
                <%-- checkbox --%>
                <div>
                    <asp:RadioButton ID="RadioButton_primoarr" AutoPostBack="true" runat="server" GroupName="RGroup1" Text="" OnCheckedChanged="RadioButton_group_CheckedChanged" />
                </div>


                <%-- RADIO REFUGIE ET ASSIMILE  --%>
                <%-- label et bouton info --%>
                <div style="text-align: right;" class=" formulaire-zone-label control-label">
                    <asp:Label ID="Label11" runat="server" meta:resourcekey="LabelRefugieetAssimile" />
                    <%-- BOUTON --%>
                    <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelRefugieAssimileDocumentsaFournir" data-content="__les documents attendus sont..."
                        style="margin: 10px;"
                        data-html="true"
                        data-placement="bottom">
                        <span class="glyphicon glyphicon-info-sign" />
                        <%--info--%>
                    </button>
                </div>
                <%-- checkbox --%>
                <div>
                    <asp:RadioButton ID="RadioButton_refassi" AutoPostBack="true" runat="server" GroupName="RGroup1" Text="" OnCheckedChanged="RadioButton_group_CheckedChanged" />
                </div>

            </div>

            <asp:CustomValidator ID="CustomValidator_choixStatut" runat="server" meta:resourcekey="cusvChoixStatut"
                Display="Dynamic" ErrorMessage="_ veuillez choisir..."
                OnServerValidate="CustomValidator_choixstatut_ServerValidate"
                CssClass="formulaire-erreur">
            </asp:CustomValidator>

            <asp:UpdatePanel runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:Panel runat="server" Visible="false" ID="Panel_statut">
                        <div class="panel panel-default">
                            <h1 class="panel-title libellePanel">
                                <asp:Literal runat="server" Text="_votre dossier :" meta:resourcekey="Paneltitle_detailrefugieassimile" />
                            </h1>
                            <div class="panel-body">
                                <div style="display: grid; grid-template-columns: 8fr 4fr; align-items: center">
                                    <%-- CHECKBOX REFUGIE  --%>
                                    <%-- label et bouton info --%>
                                    <div style="text-align: right;" class=" formulaire-zone-label control-label">
                                        <asp:Label ID="Label10" runat="server" meta:resourcekey="LabelRefugie" />
                                        <%-- BOUTON --%>
                                        <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelRefugieDocumentsaFournir" data-content="__les documents attendus sont..."
                                            style="margin: 10px;"
                                            data-html="true"
                                            data-placement="bottom">
                                            <span class="glyphicon glyphicon-info-sign" />
                                            <%--info--%>
                                        </button>
                                    </div>
                                    <%-- checkbox --%>
                                    <div>
                                        <asp:CheckBox ID="Checkbox_refugie" runat="server" GroupName="CbGroup1" Text="" />
                                    </div>

                                    <%-- DEMANDEUR ASILE  --%>
                                    <%-- label et bouton info --%>
                                    <div style="text-align: right;" class="formulaire-zone-label control-label">
                                        <asp:Label ID="Label13" runat="server" meta:resourcekey="LabelDemandeurAsile" />
                                        <%-- BOUTON --%>
                                        <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelDemandeurAsileDocumentsaFournir" data-content="__les documents attendus sont..."
                                            style="margin: 10px;"
                                            data-html="true"
                                            data-placement="bottom">
                                            <span class="glyphicon glyphicon-info-sign" />
                                            <%--info--%>
                                        </button>
                                    </div>
                                    <%-- checkbox --%>
                                    <div>
                                        <asp:CheckBox ID="CheckBox_demasile" runat="server" GroupName="CbGroup1" Text="" />
                                    </div>

                                    <%-- BENEFICIAIRE PROTECTION SUBSIDIAIRE  --%>
                                    <%-- label et bouton info --%>
                                    <div style="text-align: right;" class="formulaire-zone-label control-label">
                                        <asp:Label ID="Label14" runat="server" meta:resourcekey="LabelBenProSub" />
                                        <%-- BOUTON --%>
                                        <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelBenProSubDocumentsaFournir" data-content="__les documents attendus sont..."
                                            style="margin: 10px;"
                                            data-html="true"
                                            data-placement="bottom">
                                            <span class="glyphicon glyphicon-info-sign" />
                                            <%--info--%>
                                        </button>
                                    </div>
                                    <%-- checkbox --%>
                                    <div>
                                        <asp:CheckBox ID="CheckBox_BenProSub" runat="server" GroupName="CbGroup1" Text="" />
                                    </div>


                                    <%-- BENEFICIAIRE PROTECTION TEMPORAIRE  --%>
                                    <%-- label et bouton info --%>
                                    <div style="text-align: right;" class="formulaire-zone-label control-label">
                                        <asp:Label Enabled="false" ID="Label15" runat="server" meta:resourcekey="LabelBenProTemp" />
                                        <%-- BOUTON --%>
                                        <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelBenProTempDocumentsaFournir" data-content="__les documents attendus sont..."
                                            style="margin: 10px;"
                                            data-html="true"
                                            data-placement="bottom">
                                            <span class="glyphicon glyphicon-info-sign" />
                                            <%--info--%>
                                        </button>
                                    </div>
                                    <%-- checkbox --%>
                                    <div>
                                        <asp:CheckBox ID="CheckBox_BenProTemp" runat="server" GroupName="CbGroup1" Text="" />
                                    </div>


                                    <%-- APATRIDE  --%>
                                    <%-- label et bouton info --%>
                                    <div style="text-align: right;" class="formulaire-zone-label control-label">
                                        <asp:Label ID="Label16" runat="server" meta:resourcekey="LabelApatride" />
                                        <%-- BOUTON --%>
                                        <button type="button" runat="server" class="btn btn-info btn-xs" data-toggle="popover" meta:resourcekey="LabelApatrideDocumentsaFournir" data-content="__les documents attendus sont..."
                                            style="margin: 10px;"
                                            data-html="true"
                                            data-placement="bottom">
                                            <span class="glyphicon glyphicon-info-sign" />
                                            <%--info--%>
                                        </button>
                                    </div>
                                    <%-- checkbox --%>
                                    <div>
                                        <asp:CheckBox ID="CheckBox_apatride" runat="server" GroupName="CbGroup1" Text="" />
                                    </div>
                                </div>
                            </div>
                            <asp:CustomValidator ID="CustomValidator_choixrefugie" runat="server" meta:resourcekey="cusvChoixRefugie"
                                Display="Dynamic" ErrorMessage="_ veuillez choisir..."
                                OnServerValidate="CustomValidator_choixrefugie_ServerValidate"
                                CssClass="formulaire-erreur">
                            </asp:CustomValidator>
                        </div>

                    </asp:Panel>


                </ContentTemplate>
               <%-- <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="RadioButton_refassi" EventName="CheckedChanged" />
                    <asp:AsyncPostBackTrigger ControlID="RadioButton_primoarr" EventName="CheckedChanged" />
                </Triggers>--%>
            </asp:UpdatePanel>

            <hr />
            <asp:Button runat="server" ID="Valid_Button" Text="Valid" CausesValidation="true" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
</asp:Content>

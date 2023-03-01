<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm20.aspx.cs" Inherits="WebApplication1.WebForm20" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <h2 runat="server" id="encart1" meta:resourcekey="_encart_info_1">PANEL TITLE</h2>
        <h2 runat="server" id="encart2" meta:resourcekey="_encart_info_2">PANEL TITLE</h2>
        <p>The panel-group class clears the bottom-margin. Try to remove the class and see what happens.</p>
        <div class="panel-group">
            <div class="panel panel-info">
                <div class="panel-heading">Panel Header</div>
                <div class="panel-body">Panel Content</div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">Panel Header</div>
                <div class="panel-body">Panel Content</div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">Panel Header</div>
                <div class="panel-body">Panel Content</div>
            </div>
        </div>
    </div>
    <hr />

    <h2 runat="server" id="H1" meta:resourcekey="_encart_info_resultat_titre">PANEL TITLE</h2>
    <p>The panel-group class clears the bottom-margin. Try to remove the class and see what happens.</p>
    <div class="panel-group">
        <div class="panel panel-info">
            <div class="panel-heading">Panel Header</div>
            <div class="panel-body">Panel Content</div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">Panel Header</div>
            <div class="panel-body">Panel Content</div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">Panel Header</div>
            <div class="panel-body">Panel Content</div>
        </div>
    </div>

    <hr />
    <asp:Label runat="server" ID="l1" Text="_label" meta:resourcekey="Label1"></asp:Label>

    <hr />
    <div class="container">

        <h2 runat="server" id="H2" meta:resourcekey="_intitule">PANEL TITLE</h2>
        <div class="panel-group">
            <div class="panel panel-info">
                <div class="panel-heading" runat="server" meta:resourcekey="_intitule_choix">Panel Header</div>
                <div class="panel-body">

                    <div class="row">
                        <div class="col-sm-12">
                            <asp:RadioButton ID="rb_erreur" meta:resourcekey="_rb_erreur"
                                OnCheckedChanged="RadioButton_CheckedChanged"
                                AutoPostBack="true"
                                Text="_RF" Checked="False" GroupName="RadioGroup1" runat="server" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <asp:RadioButton ID="rb_statut" Text=" JH"
                                meta:resourcekey="_rb_statut"
                                OnCheckedChanged="RadioButton_CheckedChanged"
                                AutoPostBack="true"
                                Checked="False" GroupName="RadioGroup1" runat="server" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <asp:RadioButton ID="rb_resultat" Text=" QS"
                                meta:resourcekey="_rb_resultat"
                                OnCheckedChanged="RadioButton_CheckedChanged"
                                AutoPostBack="true"
                                Checked="False" GroupName="RadioGroup1" runat="server" />
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <%-- PANEL ERREUR SAISIE --%>
                <asp:Panel ID="panel_erreur" Visible="false" runat="server">
                    <div class="well">
                        <asp:Label ID="labelinfo" runat="server" Text=""></asp:Label>
                    </div>
                </asp:Panel>

                <%-- PANEL STATUT DOSSIER --%>
                <asp:Panel ID="panel_statut" Visible="false" runat="server">
                    <div class="well">
                        <asp:Label ID="label1" runat="server" Text="_text "></asp:Label>
                    </div>
                </asp:Panel>


                <%-- PANEL DES RESULTATS --%>
                <asp:Panel ID="panel_resultat" Visible="false" runat="server">
                    <div class="panel panel-info">
                        <div class="panel-heading" runat="server" meta:resourcekey="_intitule_choix2">Panel Header</div>
                        <div class="panel-body">
                            <%-- ATTESTATION --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_attestation" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_attestation"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_attestation" />
                                </div>
                            </div>
                            <%-- MENTION --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_mention" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_mention"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_mention" />
                                </div>
                            </div>
                            <%-- COMPRENDRE NIVEAU --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_comp_niveau" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_comp_niveau"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_comp_niveau" />
                                </div>
                            </div>
                            <%-- COMPRENDRE ATTESTATION --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_comp_attest" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_comp_attest"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_comp_attest" />
                                </div>
                            </div>
                            <%-- CONTESTATION --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_contestation" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_contestation"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_contestation" />
                                </div>
                            </div>
                            <%-- PERTE --%>
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:RadioButton ID="rb_perte" Checked="False" GroupName="RadioGroup2" runat="server"
                                        meta:resourcekey="_rb_perte"
                                        OnCheckedChanged="Rb_CheckedChanged"
                                        AutoPostBack="true"
                                        Text="_perte" />
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="well">
                        <asp:Label ID="labelinfo2" runat="server" Text="_text "></asp:Label>
                    </div>

                </asp:Panel>

            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="rb_statut" EventName="CheckedChanged" />
                <asp:AsyncPostBackTrigger ControlID="rb_resultat" EventName="CheckedChanged" />
                <asp:AsyncPostBackTrigger ControlID="rb_erreur" EventName="CheckedChanged" />
            </Triggers>
        </asp:UpdatePanel>

    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
</asp:Content>

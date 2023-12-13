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

    <span>Copie lisible d'une pièce d'identité (carte d'identité, passeport, titre de séjour, récépissé ou <b>justificatif de réfugié ou assimilé).</b>
        <br />
        Visa, permis de conduire ou carte vitale <b>ne sont pas acceptés. Merci de fournir un justificatif de changement de nom, si nécessaire</b>.
    </span>


    <hr style="height: 2px; border-width: 0; background-color: lightgreen" />
    <asp:Label ID="Label_datelim" runat="server" Text="_datelimite" />
    <span style="display: inline-block; height: 2em;">
        <img runat="server" id="Img1"
            style="height: 100%; width: 100%; object-fit: contain"
            src="~/Images/Attention 450x450px.png"
            alt="attention" />
    </span>
    <asp:Label ID="Label1" runat="server" Text="toto" />

    <hr style="height: 2px; border-width: 0; background-color: lightseagreen" />
    <div style="color: blue"></div>

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
    <div>
        <%-- <asp:Table CssClass="tab1" ID="Table2" ClientIDMode="Static" runat="server"
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
        </asp:Table>--%>
    </div>

    <%--  *********************************** --%>
    <br />
    <hr style="height: 2px; border-width: 0; background-color: lightcoral" />

    <span>** invisible ->  **</span>
    <asp:TextBox Text="X" runat="server" ID="hb0" ClientIDMode="Static" CausesValidation="false" Style="display: none;" />
    <asp:TextBox Text="X" runat="server" ID="tb1" ClientIDMode="Static" CausesValidation="false" Style="display: none;" />
    <asp:TextBox Text="Y" runat="server" ID="tb2" ClientIDMode="Static" CausesValidation="false" />
    <asp:TextBox runat="server" ID="tb3" ClientIDMode="Static" CausesValidation="false" Style="display: none;" />
    <asp:TextBox runat="server" ID="tb4" ClientIDMode="Static" CausesValidation="false" Style="display: none;" />
    <asp:Button runat="server" ID="hib1" OnClick="hib1_Click" Style="display: none;" />
    <span>** <- invisible **</span>

    <asp:Button ValidationGroup="valgroup1" runat="server" ID="B1"
        OnClientClick="modalshow();"
        OnClick="Button1_Click" Text="CLIQUER VALID" />

    <asp:Button runat="server" ID="ButtonProg1" ClientIDMode="Static"
        OnClientClick="modalshow();return false;"
        Text="CLIQUER VALID 2" />

    <asp:Button runat="server" ID="Button3"
        OnClientClick="modalshow();return false;"
        Text="CLIQUER VALID clientclick" />

    <asp:HiddenField runat="server" ClientIDMode="Static" ID="hf0" Value="Y" />
    <asp:HiddenField runat="server" ClientIDMode="Static" ID="hf1" Value="m1" meta:resourcekey="hf1" />
    <asp:HiddenField runat="server" ClientIDMode="Static" ID="hf2" Value="m2" meta:resourcekey="hf2"/>

    <span>** invisible2 ->  **</span>s
    <asp:CompareValidator ID="htb1cv" runat="server" ControlToValidate="tb1" ValidationGroup="valgroup1"
        ValueToCompare="1" Operator="Equal" EnableClientScript="true" />

    <asp:CompareValidator ID="htb2cv" runat="server" ControlToValidate="tb2" ValidationGroup="valgroup1"
        ValueToCompare="1" Operator="Equal" EnableClientScript="true" />

    <asp:CompareValidator ID="htb3cv" runat="server" ControlToValidate="tb3" ValidationGroup="valgroup1"
        ValueToCompare="1" Operator="Equal" EnableClientScript="true" />

    <asp:CompareValidator ID="htb4cv" runat="server" ControlToValidate="tb4" ValidationGroup="valgroup1"
        ValueToCompare="1" Operator="Equal" EnableClientScript="true" Display="Static" />
    <span>** <- invisible2 **</span>

    <br />
    <asp:ValidationSummary runat="server" ValidationGroup="valgroup1" ShowValidationErrors="true" HeaderText="Votre formulaire comporte des erreurs..." />
    <br />
    <asp:Button CausesValidation="false" runat="server" ID="ButtonSet" OnClick="ButtonSet_Click" Text="HIDDENFIELDSET" />
    <br />
    <asp:Button CausesValidation="false" runat="server" ID="ButtonSetAll" OnClick="ButtonSetAll_Click" Text="HIDDENFIELDSETALL" />
    <br />
    <asp:Button CausesValidation="false" runat="server" ID="ButtonResetAll" OnClick="ButtonResetAll_Click" Text="HIDDENFIELDRESETALL" />
    <br />




    <%-- MODAL INFO WARNINGS  --%>
    <asp:Button ID="hiddenButtonOkforModalWarning"
        CausesValidation="false"
        Style="display: none;"
        runat="server" ClientIDMode="Static"
        Text="_hidden_button"
        OnClick="hiddenButtonOkforModalWarning_Click" />
    <%-- modal --%>
    <div class="modal fade" id="modal_warning" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-content-custom">
                <div class="modal-header">
                    <%-- bouton fermeture modal --%>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div style="display: grid; grid-template-columns: auto 1fr auto; align-items: center">

                        <%-- 1 --%>
                        <div>&nbsp &nbsp</div>
                        <div>
                            <asp:Label runat="server" ID="warning_message" ClientIDMode="Static" Text="_warning_" meta:resourcekey="wm1"/>
                            <asp:Label runat="server" ID="warning_message2" ClientIDMode="Static" Text="_warning2_" meta:resourcekey="wm2"/>
                        </div>
                        <div>&nbsp &nbsp</div>

                        <%-- 2 --%>
                        <div>&nbsp &nbsp</div>
                        <div>&nbsp &nbsp</div>
                        <div>&nbsp &nbsp</div>

                        <%-- 3 --%>
                        <div>&nbsp &nbsp</div>
                        <div style="margin: auto">
                            <button type="button" class="btn btn-sitpho2" data-toggle="modal" data-dismiss="modal" onclick="okfrommodal()">
                                <asp:Literal runat="server" Text="OK" meta:resourcekey="button_ok" />
                            </button>
                        </div>
                        <div>&nbsp &nbsp</div>

                    </div>

                </div>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">

    <%-- SCRIPT pour les popover --%>
    <script>
        $(function () {
            $('[data-toggle="popover"]').popover();
            console.log('bonjour !!!!')
        })


        function modalshow() {
            // récupère le hiddenfield message 1
            var f1 = document.getElementById('<%=hf1.ClientID %>');
            var v1 = f1.getAttribute('value');
            // récupère le hiddenfield message 2
            var f2 = document.getElementById('<%=hf2.ClientID %>');
            var v2 = f2.getAttribute('value');

            // récupère le hiddenfield de l'aiguilleur de message
            var f0 = document.getElementById('<%=hf0.ClientID %>');
            var v0 = f0.getAttribute('value');

            // récupère du champ information du modal
            var wmr = document.getElementById('<%=warning_message.ClientID %>');
            var wmr2 = document.getElementById('<%=warning_message2.ClientID %>');;
            var wmv = wmr.innerHTML;


            console.log('ecriture sur console');
            console.log(v1);
            console.log(v2);

            console.log(wmv);
            var progbutton = document.getElementById('<%=hib1.ClientID %>');

          
            if (v0 == 'X') {
                //wmr.innerHTML = v1;
                wmr.style.display = "none"
                $('#modal_warning').modal('show');
            }
            else if (v0 == 'Y') {
                //wmr.innerHTML = v2;
                wmr2.style.display = "none"
                $('#modal_warning').modal('show');
            }
            else {
                progbutton.click();
            }


        }


    </script>

</asp:Content>

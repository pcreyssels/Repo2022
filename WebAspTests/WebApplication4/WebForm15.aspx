<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm15.aspx.cs" Inherits="WebApplication4.WebForm15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>TEST MODAL CHARGE PAGE</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/Content/Site.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            PAGE TEST
            <div>
                <button onclick="modalshow();return false;">Click me</button></div>
        </div>

        <%--<asp:Button  ClientIDMode="Static"/>--%>
        <%-- MODAL INFO A LOUVERTURE DE LA PAGE UTILISATION SMARTPHONE  --%>
        <div class="modal fade" id="modal_warning_nophone" tabindex="-1" role="alertdialog" aria-labelledby="mowano_info" aria-modal="true">
            <span runat="server" clientidmode="Static" hidden meta:resourcekey="mowano_ariamessage" id="mowano_info">_ouvmodal</span>
            <span runat="server" clientidmode="Static" hidden meta:resourcekey="messfermod" id="messfermod">_ouv modalité</span>
            <span runat="server" clientidmode="Static" hidden meta:resourcekey="descfenmod" id="descfenmod">_ce es un fe mod</span>
            <div class="modal-dialog" role="document">
                <div class="modal-content modal-content-custom" role="alertdialog" aria-labelledby="descfenmod">
                    <div class="modal-header">
                        <%-- bouton fermeture modal --%>
                        <button type="button" class="close" data-dismiss="modal" aria-labelledby="messfermod">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <%-- entête modal --%>
                    </div>
                    <div class="modal-body">

                        <div class="modal-title" id="modalnophone_Label">
                            <div style="display: grid; grid-template-columns: auto auto 1fr; align-items: center">
                                <div style="height: 4em">
                                    <img id="Img3" runat="server" meta:resourcekey="iconeattention"
                                        style="width: 100%; height: 100%"
                                        src="~/Images/Attention.png"
                                        alt="_attention rouge" />
                                </div>
                                <div>&nbsp</div>
                                <div tabindex="0">
                                    <asp:Literal runat="server" Text="_entete_recap" meta:resourcekey="modal_infonophone_infos"></asp:Literal>
                                </div>
                            </div>
                        </div>

                        <br />


                        <%-- boutons OK --%>
                        <div style="display: grid; grid-template-columns: 4fr 2fr 4fr; align-items: center">
                            <div style="margin: auto">
                            </div>
                            <div>
                                <img runat="server" meta:resourcekey="nophone" style="height: 8em; width: 8em" src="./Images/nophone800x800.png"
                                    alt="nophone" />
                            </div>
                            <div style="margin: auto">
                                <button runat="server" type="button" class="btn btn-sitpho2" data-toggle="modal" data-dismiss="modal" aria-labelledby="messfermod" >
                                    <asp:Literal runat="server" Text="bouton OK" meta:resourcekey="modal_infonophone_button_ok" />
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>

    <script>
        $(function () {
            console.log('charge page');
            //  script pour les popover et tooltip 
            $('[data-toggle="popover"]').popover();
            $('[data-toggle="tooltip"]').tooltip();

            // affichage du modal info no phone à l'ouverture
            //const hf1 = document.getElementById('switchmodalinfo').getAttribute('value');
            //console.log('switchmodal info ' + hf1);
            //if (hf1 == '0') {
            //   $('#modal_warning_nophone').modal('show');
            //}
        })

        function modalshow() {
            $('#modal_warning_nophone').modal('show');
        }

        const button = document.querySelector("input");

        button.addEventListener("click", modalshow);

    </script>

</body>
</html>

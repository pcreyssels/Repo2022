<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebApplication5.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Trigger the modal with a button -->
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

    <br />

    <div id="custom">
        BONJOUR
    </div>
    *
   <div data-toggle="tooltip" title="voici le tooltip">
       tooltip
   </div>
    <br />
    <span data-toggle="tooltip" title="voici le <b>tooltip 2</b>" data-html="true">tooltip 2</span>

    *
   <div class="container">
       <h3>Tooltip Example</h3>
       <a href="#" data-toggle="tooltip" title="Hooray! <b>over me</b>" data-html="true">Hover <b>over me</b></a>
   </div>
    <br />
    <span id="customtt2">tooltip JQuery</span>
    <br />

    <br />
    <span id="tooltip5" title="">tooltip5</span>
    <br />

    <br />
    <div id="tooltip6" data-toggle="tooltip" data-placement="top" title="SER <b>FG</b>" data-html="true">tooltip6</div>
    <br />


    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <p>Some text in the modal.</p>
                    <%-- <span class="tooltiptext left">
                        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20240327032356/gfgimg.png"
                            alt="GeeksforGeeks Image"
                            style="width: 100px; height: auto;">
                    </span>--%>
                    <%-- <img src="https://media.geeksforgeeks.org/wp-content/uploads/20240327032356/gfgimg.png"
                        alt="GeeksforGeeks Image"
                        style="width: 100px; height: auto;">
                    <img src="Images/gfgimg.png"
                        alt="GeeksforGeeks Image"
                        style="width: 100px; height: auto;">--%>
                    <br />

                    <span id="tooltip4" title="">tooltip4</span>


                    <br />
                    <span id="customtt1">tooltip JQuery</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
            //$("#content").html('<a id="magilla" href="#" title="" >Magilla Gorilla</a>');
            //$("#content #magilla").tooltip({ content: '<img src="https://media.geeksforgeeks.org/wp-content/uploads/20240327032356/gfgimg.png" />' });
            //$("#customtt2").tooltip("option", "content", "Awesome title!");

            $("#tooltip4").tooltip({
                content: ' <br/> bonjour <br/> <img src="Images/gfgimg.png" alt="GeeksforGeeks Image" style="width: 100px; height: auto;"> <br/> aurevoir <br/>'
            });

            $("#tooltip5").tooltip({
                content: ' <br/> bonjour <br/> <img src="Images/gfgimg.png" alt="GeeksforGeeks Image" style="width: 100px; height: auto;"> <br/> aurevoir <br/>'
            });

            //$('#tooltip6').tooltip({ title: '<br/> bonjour <br/> <img src="Images/gfgimg.png" alt="GeeksforGeeks Image" style="width: 100px; height: auto;"> <br/> aurevoir <br/>', html: true, placement: "right" });

            //$('#tooltip6').tooltip({ title: "<br/> bonjour <br/>  <br/> aurevoir <br/>", html: true, placement: "right" });
        });



        $(function () {
            $('[data-toggle="popover"]').popover()
        })

        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>

</asp:Content>

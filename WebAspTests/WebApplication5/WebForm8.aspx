﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="WebApplication5.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <!--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>-->

    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>-->

    <!-- ********************* -->

    <!--<link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.10.2.js">

    </script>

    <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js">

    </script>-->

</head>
<body>


    MODAL
    <br />
    <!-- Trigger the modal with a button -->
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

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
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
    FIN MODAL
    <br />

    <div id="content">
    </div>

    <br />
    <span id="customtt2">tooltip JQuery</span>

    <br />
    <span id="tooltip-1" title="tooltip 1">tooltip JQuery</span>
    <br />
    <br />
    <span id="tooltip-2" title="tooltip 2">tooltip JQuery 2</span>
    <br />
    <br />
    <span id="tooltip3" title="">tooltip JQuery 3</span>
    <br />

    <span id="gfg1" title=""> TOTO</span>

    <br />
    <span id="tooltip4" title="">tooltip JQuery 4</span>
    <br />

    <br />
    <div id="dialog" title="Basic dialog">
        <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.

            <br/> bonjour <br/> 
            <img id="img1" src="Images/infoiconred.png" title="" alt="GeeksforGeeks Image" style="width: 100px; height: auto;"/> 
            <br/> aurevoir <br/>

        </p>
    </div>
    <br />

    <script>
        $(document).ready(function () {
            //$("#content").html('<a id="magilla" href="#" title="" >Magilla Gorilla</a>');
            //$("#content #magilla").tooltip({ content: '<img src="https://i.etsystatic.com/18461744/r/il/8cc961/1660161853/il_794xN.1660161853_sohi.jpg" />' });
            //$("#customtt2").tooltip("option","content", "Awesome title!");
            // $("#customtt2").tooltip({ content: 'Awesome title!' });
            //$("#customtt2").tooltip({ content: '<img src="Images/gfgimg.png" alt="GeeksforGeeks Image" style="width: 100px; height: auto;" />' });
            //$("#tooltip-1").tooltip();
            //$("#tooltip-2").tooltip({ content: '<img src="https://i.etsystatic.com/18461744/r/il/8cc961/1660161853/il_794xN.1660161853_sohi.jpg" />' });

            $("#dialog").dialog();

            $("#tooltip3").tooltip({
                content: " HTML <b>Hi!</b>"
            });

            $("#gfg1").tooltip({
                content: "G eeksforG eeks!"
            });

            $("#tooltip4").tooltip({
                content: ' <br/> bonjour <br/> <img src="Images/gfgimg.png" alt="GeeksforGeeks Image" style="width: 100px; height: auto;"> <br/> aurevoir <br/>'
            });

            $("#img1").tooltip({
                content: ' <br/> bonjour <br/> <img src="Images/gfgimg.png" alt="GeeksforGeeks Image" style="width: 100px; height: auto;"> <br/> aurevoir <br/>'
            });
            //$("#tooltip4").tooltip("option", "content", "Awesome title!");
        });
    </script>

</body>

</html>
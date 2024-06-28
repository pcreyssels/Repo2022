<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="WebApplication5.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.css" />
    <link rel="stylesheet" href="Content/Site.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


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


            NOUVELLEL LIGNE
            <br />
            <div class="bloctt">
                ELEMENT1
                <img src="Images/icone information transparent.png"
                    alt="GeeksforGeeks Image"
                    style="width: 50px; height: auto;">
                <div class="tooltip">
                    Hover over me (Left)
                
                <span class="tooltiptext left">
                    <img src="Images/gfgimg.png"
                        alt="GeeksforGeeks Image"
                        style="width: 100px; height: auto;">
                </span>
                </div>
                <div class="tooltip">
                    Hover over me (Right)
                <span class="tooltiptext right">
                    <img src="Images/gfgimg2.png"
                        alt="GeeksforGeeks Image"
                        style="width: 100px; height: auto;">
                </span>
                </div>
                ELEMENT2
            </div>
        </div>
    </form>
</body>
</html>

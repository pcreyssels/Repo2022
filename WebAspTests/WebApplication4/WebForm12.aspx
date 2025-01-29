<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm12.aspx.cs" Inherits="WebApplication4.WebForm12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>titre </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./Content/Site.css" />

</head>
<body>
    <form id="form1" runat="server">

        <br />
        <span aria-labelledby="labelbr" class="glyphicon glyphicon-music"></span>
        <br />
        <span aria-labelledby="labelbr" class="glyphicon glyphicon-search"></span>
        <br />
        <span aria-labelledby="labelbr" class="glyphicon glyphicon-heart"></span>
        <br />

        ACCESSKEY
        <asp:Button Text="BOUTON" runat="server" OnClick="Unnamed_Click" />

        <br />
        <input type="text" id="NAME1" accesskey="n" />
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</body>
</html>

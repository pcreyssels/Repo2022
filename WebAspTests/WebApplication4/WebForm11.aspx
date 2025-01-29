<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="WebApplication4.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    TEST CHATBOX
    <br />
    <span name="nom captcha" aria-label="change captcha" class="glyphicon glyphicon-refresh"></span>


    <br />

    <input type="text" id="name" name="nom attribut name" required minlength="4" maxlength="8" size="10" />

    <br />

    GLYPHYCON UNDER BUTTON

    <br />

    <button causesvalidation="false" type="button" meta:resourcekey="button_refresh" id="button_refresh" class="btn btn-default" runat="server" aria-label="_toto">

        <span aria-labelledby="labelbr" class="glyphicon glyphicon-refresh"></span>

    </button>

    <span aria-labelledby="labelbr" class="glyphicon glyphicon-music"></span>
    <br />
    <span aria-labelledby="labelbr" class="glyphicon glyphicon-search"></span>
    <br />
    <span aria-labelledby="labelbr" class="glyphicon glyphicon-heart"></span>
    <br />

    ACCESSKEY
     <br />
    <input type="text" id="NAME1" accesskey="n">
    <br />

    <br />
    PROGRESS
    <div>
        <label runat="server" meta:resourcekey="labelpb1" for="pb1">progression2 </label>
    </div>
    <div>
        <progress id="pb1" max="100" value="70">BONJOUR</progress>
    </div>
    <br />

    <br />
    PROGRESS 2
    <br />

    <label>label: <progress max="100" value="10">10%</progress></label>
   <%-- <label>label: <progress max="100" value="40">40%</progress></label>
    <label>label: <progress max="100" value="80">80%</progress></label>
    <label>label: <progress max="100" value="100">100%</progress></label>--%>

    <br />
    PROGRESS 3
    <br />

    <label>label: </label><progress max="100" value="10">10%</progress>
   <%-- <label>label: </label><progress max="100" value="40">40%</progress>
    <label>label: </label><progress max="100" value="80">80%</progress>
    <label>label: </label><progress max="100" value="100">100%</progress>--%>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">

    <%--<script src="https://storage.googleapis.com/ideta-prod.appspot.com/bots/-O-0V_bJ2w-AZ7xQ8ln5/scripts/integration-web.js?GoogleAccessId=firebase-adminsdk-4b3yf%40ideta-prod.iam.gserviceaccount.com&Expires=16447017600&Signature=mo2bAJSDBICIqylq%2FoeUuxo8tRNCLbYRDyEb4ECSJ7XkpenlgYjJJ5YfjLjfbrV9V0Okaov1u7SqNBTMTuwqG8zFkbBFHxh5Zdna8tDp4QhvkgEHaGN0UhQavqlGCRFN71zw8H%2BHdxlS%2F6YobgJsmK5362wC1jPQ%2FNQYPECImVefbEWF5r3FWPuZWpJTG8OjqVP9LyDSBUYIViksoIZW51UImkuDuZCYVjz55AAwDxDuqX7P5pQZOiTqJmo2qvjVF6lR6Adsrb%2FDeJQ3kdzs0W5duFaiCfAF%2BzHnkHataHeY4MLCgGoq3p7WZX2pIraijPFV%2BY40Py4t8mYJ9dynQQ%3D%3D" type="text/javascript" async></script>--%>
</asp:Content>

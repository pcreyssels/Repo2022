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

    <label>label: </label>
    <progress max="100" value="10">10%</progress>
    <%-- <label>label: </label><progress max="100" value="40">40%</progress>
    <label>label: </label><progress max="100" value="80">80%</progress>
    <label>label: </label><progress max="100" value="100">100%</progress>--%>

    <br />
    <br />
    <hr />
    <label>
        Uploading Document: <progress value="70" max="100">70 %</progress>
    </label>

    <!-- OR -->
    <br />

    <label for="progress-bar2">Uploading Document</label>
    <progress id="progress-bar2" value="70" max="100">70 %</progress>

    <br />
    <div>
        busy
    </div>
    <br />
    <div aria-busy="true" aria-describedby="progress-bar">
        <!-- content is for this region is loading -->
    </div>

    <!-- ... -->

    <progress id="progress-bar" aria-label="Content loading…"></progress>

    <div>role progressbar</div>
    <div>
        <span id="loadinglabel">Loading:</span>
        <span role="progressbar" aria-labelledby="loadinglabel" aria-valuenow="23">
            <svg width="100" height="10">
                <rect height="10" width="100" stroke="black" fill="black" />
                <rect height="10" width="23" fill="white" />
            </svg>
        </span>
    </div>
    <br />
    <div>role progressbar2</div>
    <div role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">20 %</div>
    <br />
    <div>role progressbar3</div>
    <progress max="100">
        <strong>Progress: 60% done.</strong>
    </progress>

    <br />

    <div>W3 SCHOOL</div>

    <%--<div class="w3-container">--%>
    <div>
        <h2>Progress Bar Labels</h2>
        <p>Add text inside a w3-container element to add a label to the progress bar.</p>
        <p>Use the w3-center class to center the label. If omitted, it will be left aligned.</p>

        <div class="w3-light-grey">
            <%--<div class="w3-container w3-green w3-center" style="width: 25%">25%</div>--%>
            <%--<div class="w3-green w3-center" style="width: 25%">25%</div>--%>
            <div style="width: 25%; text-align: center; background-color: #4CAF50; color: white">25%</div>

        </div>
        <br>

        <div class="w3-light-grey">
            <div class="w3-container w3-red w3-center" style="width: 50%">50%</div>
        </div>
        <br>

        <div class="w3-light-grey">
            <div class="w3-container w3-blue" style="width: 75%">75%</div>
        </div>
        <br>
    </div>

    <%-- https://getbootstrap.com/docs/3.4/components/ --%>
    <div>BOOTSTRAP 3 4 1</div>
    <div class="progress">
        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
            60%
        </div>
    </div>

    <div>BOOTSTRAP 3 4 1 2</div>
    <div class="progress">
        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
            <span>40% Complete (success)</span>
        </div>
    </div>
    <div class="progress">
        <div class="progress-bar active progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
            <span>20% Complete</span>
        </div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
            <span>60% Complete (warning)</span>
        </div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
            <span>80% Complete (danger)</span>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScript" runat="server">

    <%--<script src="https://storage.googleapis.com/ideta-prod.appspot.com/bots/-O-0V_bJ2w-AZ7xQ8ln5/scripts/integration-web.js?GoogleAccessId=firebase-adminsdk-4b3yf%40ideta-prod.iam.gserviceaccount.com&Expires=16447017600&Signature=mo2bAJSDBICIqylq%2FoeUuxo8tRNCLbYRDyEb4ECSJ7XkpenlgYjJJ5YfjLjfbrV9V0Okaov1u7SqNBTMTuwqG8zFkbBFHxh5Zdna8tDp4QhvkgEHaGN0UhQavqlGCRFN71zw8H%2BHdxlS%2F6YobgJsmK5362wC1jPQ%2FNQYPECImVefbEWF5r3FWPuZWpJTG8OjqVP9LyDSBUYIViksoIZW51UImkuDuZCYVjz55AAwDxDuqX7P5pQZOiTqJmo2qvjVF6lR6Adsrb%2FDeJQ3kdzs0W5duFaiCfAF%2BzHnkHataHeY4MLCgGoq3p7WZX2pIraijPFV%2BY40Py4t8mYJ9dynQQ%3D%3D" type="text/javascript" async></script>--%>
</asp:Content>

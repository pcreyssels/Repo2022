<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="panel panel-default tintedroundedbackgroundpanel">
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-1">
                    <img
                        src="/fonts/click-4322.png"
                        srcset="/fonts/click-4322.svg"
                        alt="click arrow" />

                </div>
                <div class="col-sm-11">
                    <asp:Literal ID="message_depot" runat="server" Text="message depot" Mode="PassThrough"></asp:Literal>
                </div>
            </div>

        </div>
    </div>

    <hr style="height: 2px; border-width: 0; background-color: red" />

    <div class="container-fluid">
        <div class="row" style="display: flex; align-items:center">
            <div class="col-sm-1" style="background-color: lightyellow; display: flex; justify-content: right">
                <img
                    src="/fonts/click-4322.png"
                    srcset="/fonts/click-4322.svg"
                    alt="click arrow" />

            </div>

            <div class="col-sm-1" style="background-color: lightcyan; text-align: right;">
                TEXTE
            </div>

            <div class="col-sm-10">
                <asp:Literal ID="Literal1" runat="server" Text="message depot" Mode="PassThrough"></asp:Literal>
            </div>
        </div>
    </div>


    <hr style="height: 2px; border-width: 0; background-color: red" />

    <div class="panel panel-default">
        <div class="panel-body">
            Basic panel example
        </div>
    </div>

</asp:Content>

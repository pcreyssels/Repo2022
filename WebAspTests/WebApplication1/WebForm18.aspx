<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm18.aspx.cs" Inherits="WebApplication1.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="panel panel-default">
                <div class="panel-body">
                    <div style="display: grid; grid-template-columns: 1fr 8fr">
                        <div>
                            <asp:Button CssClass="" runat="server" Text="Cancel" ID="button_cancellall" OnClick="button_cancellall_Click" /> 
                        </div>
                        <div>
                            <asp:Button runat="server" Text="Cancel2" ID="button1" /> 
                        </div>
                    </div>
            </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderScript" runat="server">
</asp:Content>

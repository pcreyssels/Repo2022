<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm14.aspx.cs" Inherits="WebApplication4.WebForm14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <hr />

            <asp:TextBox ID="TextBox1" ClientIDMode="Static" aria-invalid="true" aria-errormessage="rfv"
                runat="server" />

            <asp:RequiredFieldValidator ID="rfv" ClientIDMode="Static"
                ControlToValidate="TextBox1"
                Display="Dynamic"
                ErrorMessage="champs est requis"
                aria-label="le champ texbox 1 doir être renseigné"
                runat="server" />


            <hr />
            <br />

            <asp:Button ID="ValidateBtn"
                Text="Validate"
                OnClick="ValidateBtn_Click"
                runat="server" />
        </div>

        <p>
            <label for="email">Email address:</label>
            <input
                type="text"
                name="email"
                id="email"
                aria-invalid="true"
                aria-errormessage="err1" />
            <span id="err1" class="errormessage">Error: Enter a valid email address</span>
        </p>


    </form>
</body>
</html>

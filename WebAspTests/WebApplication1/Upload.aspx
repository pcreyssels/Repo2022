<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="WebApplication1.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form method="post" enctype="multipart/form-data">
        <div>
            <label for="file">Choose file to upload</label>
            <input type="file" id="file" name="file"  />
        </div>
        <div>
            <button>Submit</button>
        </div>

          <h4>Select a file to upload:</h4>

            <asp:FileUpload ID="FileUpload1"
                runat="server"></asp:FileUpload>

            <br />
            <br />

            <asp:Button ID="UploadButton"
                Text="Upload file"
                OnClick="UploadButton_Click"
                runat="server">

            </asp:Button>

            <hr />

            <asp:Label ID="UploadStatusLabel"
                runat="server">
            </asp:Label>
       
    </form>

</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication5.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:FileUpload runat="server" ID="fu1" ClientIDMode="Static"/>
    <br />
    <asp:FileUpload runat="server" ID="fu2" ClientIDMode="Static"/>
    <br />
    <asp:Button ID="UploadButton"
        Text="Upload file"
        OnClick="UploadButton_Click"
        runat="server"></asp:Button>
    <br />
    <hr />

    <asp:Label ID="UploadStatusLabel"
        runat="server">
    </asp:Label>
    <hr />


    <p>
        <input type="file" id="file"
            />
    </p>

    <script>
        Filevalidation = () => {
            const fi = document.getElementById('file');
            // Check if any file is selected.
            if (fi.files.length > 0) {
                for (const i = 0; i <= fi.files.length - 1; i++) {

                    const fsize = fi.files.item(i).size;
                    const file = Math.round((fsize / 1024));
                    // The size of the file.
                    if (file >= 4096) {
                        alert(
                            "File too Big, please select a file less than 4mb");
                    } else if (file < 2048) {
                        alert(
                            "File too small, please select a file greater than 2mb");
                    } else {
                        document.getElementById('size').innerHTML =
                            '<b>' + file + '</b> KB';
                    }
                }
            }
        }
        // https://stackoverflow.com/questions/1601455/how-to-check-file-input-size-with-jquery
        //$("input[type='file']").on("change", function () {
        //    if (this.files[0].size > 2000000) {
        //        alert("Please upload file less than 2MB. Thanks!!");
        //        $(this).val('');
        //    }
        //});

        // $("#fu1").on("change", function () {
        $("input[type='file']").on("change", function () {

            //because this is single file upload I use only first index
            var f = this.files[0];

            console.log('changing...');

            //here I CHECK if the FILE SIZE is bigger than 8 MB (numbers below are in bytes)
            if (f.size > 2000000 || f.fileSize > 2000000) {
                //show an alert to the user
                alert("Allowed file size exceeded. (Max. 8 MB)")

                //reset file upload control
                this.value = null;
            }
        });


    </script>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication5.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    FU0
    <asp:FileUpload runat="server" ID="fu0" ClientIDMode="Static" />
    <br />

    FU1
    <asp:FileUpload runat="server" ID="fu1" ClientIDMode="Static" />
    <br />

    FU2
    <asp:FileUpload runat="server" ID="fu2" ClientIDMode="Static" />
    <br />
    <asp:Button ID="UploadButton" ClientIDMode="Static"
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
        <input type="file" id="file" />
    </p>

    <br />

    <input type="button" onclick="test()" value="coco"/>
    <script>


        window.onload = (event) => {
            console.log('page is fully loaded');
        };

        $( document ).ready(function() {
             console.log( "ready!" );
             setTimeout(function() {
                console.log( "2 s !" );
            },2000)

             setTimeout(function() {
                console.log( "4 s !" );
            },4000)
        });

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

        //$('<%= fu1.ClientID %>').on("change", function () {
        // $("input[type='file']").on("change", function () {
        //$("input[type='file']").on("change", function () {
        $('#fu1').on("change", function () {

            console.log('changing...');
            //because this is single file upload I use only first index
            //var f = this.files[0];
            var f = document.getElementById('fu1').files[0];


            //here I CHECK if the FILE SIZE is bigger than 8 MB (numbers below are in bytes)
            if (f.size > 2000000 || f.fileSize > 2000000) {
                //show an alert to the user
                alert("Taille maximale dépassée. (Max. 8 MB) \n Allowed file size exceeded. (Max. 8 MB)")

                //reset file upload control
                this.value = null;
            }
        });

        function test(){
            console.log( "a !" );
            let a  ="bonjour"
              setTimeout(function() {
                 console.log( "2 s !" );
                },2000);
                console.log( a );
                setTimeout(function() {
                console.log( "4 s !" );
                },4000)
                console.log( "c !" );
        }

        function upload1() {
            var f = this.files[0];
            if (f.size > 4194304 || f.fileSize > 4194304) {
                this.value = null;
            }
            else {
                var btn = document.getElementById('CIEPWEBBody_BodyContent_GridView1_HideButton1_0');
                btn.click();
            }
        }

        function upload0() {
            console.log('upload 0: ');
            let fi = document.getElementById('fu0');
            let f = fi.files[0];
            // Check if any file is selected.
            //if (fi.files.length > 0) {

            console.log('files0 size: ' + f.size)
            console.log('files.lenght: ' + fi.files.size)
            if (f.size > 10000000 || f.fileSize > 10000000) {
                alert("Taille maximale dépassée. (Max. 4 MB) \n Allowed file size exceeded. (Max. 4 MB)")
                fi.value = null;
            }
            else {
                var btn = document.getElementById('UploadButton');
                btn.click();
            }
        }

        function upload1() {
            let fi = document.getElementById('fu1');
            let f = fi.files[0];
            if (f.size > 4194304 || f.fileSize > 4194304) {
                alert("Taille maximale dépassée. (Max. 4 MB) \n Allowed file size exceeded. (Max. 4 MB)");
                fi.value = null;
            }
            else {
                var btn = document.getElementById('FileUp1');
                btn.click();
            }
        }
        

        function upload_PI() {
            let fi = document.getElementById('FileUp_1');
            let f = fi.files[0];
            if (f.size > 4194304 || f.fileSize > 4194304)
            {
                alert("Taille maximale dépassée. (Max. 4 MB) \n Allowed file size exceeded. (Max. 4 MB)");
                fi.value = null;
            } else {
                var btn = document.getElementById('HideButton_1');
                btn.click();
            }
        }

    </script>

</asp:Content>

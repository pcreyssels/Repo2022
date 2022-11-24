using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Upload : System.Web.UI.Page
    {

        protected string MyString="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (true)
            {
                HttpFileCollection MyFileCollection;
                HttpPostedFile MyFile;
                int FileLen;
                System.IO.Stream MyStream;

                MyFileCollection = Request.Files;

                if (MyFileCollection.Count>0)
                {
                    MyFile = MyFileCollection[0];


                    
                    FileLen = MyFile.ContentLength;

                    MyFile.SaveAs(@"C:\Tmp\UPLOADED.bin");

                    //byte[] input = new byte[FileLen];

                    //// Initialize the stream.
                    //MyStream = MyFile.InputStream;

                    //// Read the file into the byte array.
                    //MyStream.Read(input, 0, FileLen);

                    //// Copy the byte array into a string.
                    //for (int Loop1 = 0; Loop1 < FileLen; Loop1++)
                    //    MyString = MyString + input[Loop1].ToString();

                }

                int l = MyString.Length;
                int m = 0;
            }
            else
            {
                int i = 1;
            }
            
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            
            string saveDir = @"\Uploads\";

     
            string appPath = Request.PhysicalApplicationPath;

            if (FileUpload1.HasFile)
            {
                string savePath = appPath + saveDir +
                    Server.HtmlEncode(FileUpload1.FileName);

                FileUpload1.SaveAs(savePath);

                // Notify the user that the file was uploaded successfully.
                UploadStatusLabel.Text = "Your file was uploaded successfully.";

            }
            else
            {
                // Notify the user that a file was not uploaded.
                UploadStatusLabel.Text = "You did not specify a file to upload.";
            }
        }
    }
    
}
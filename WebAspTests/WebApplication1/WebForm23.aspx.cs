using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm23 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            // Specify the path on the server to
            // save the uploaded file to.
            String savePath = @"c:\tmp2\uploads\";

            // Before attempting to perform operations
            // on the file, verify that the FileUpload 
            // control contains a file.
            bool b = FileUpload1.HasFiles;
            
            if (FileUpload1.HasFile)
            {
                // Get the name of the file to upload.
                String fileName = FileUpload1.FileName;

                // Append the name of the file to upload to the path.
                savePath += fileName;

                int pf = FileUpload1.PostedFiles.Count;


                // Call the SaveAs method to save the 
                // uploaded file to the specified path.
                // This example does not perform all
                // the necessary error checking.               
                // If a file with the same name
                // already exists in the specified path,  
                // the uploaded file overwrites it.
                FileUpload1.SaveAs(savePath);

                // Notify the user of the name of the file
                // was saved under.
                //UploadStatusLabel.Text = "Your file was saved as " + fileName;
            }
            else
            {
                // Notify the user that a file was not uploaded.
                //UploadStatusLabel.Text = "You did not specify a file to upload.";
            }

        }

        protected void ButtonStatus_Click(object sender, EventArgs e)
        {
            int pf = FileUpload1.PostedFiles.Count;

            bool b1 = FileUpload1.HasFiles;
            bool b2 = FileUpload1.HasFile;

            int j = 0;
        }

        // https://stackoverflow.com/questions/793208/retain-anchor-after-postback-in-asp-net
        // https://stackoverflow.com/questions/4096170/button-with-no-postback
        // https://stackoverflow.com/questions/6666038/asp-net-postback-scroll-to-specific-position
        // https://learn.microsoft.com/en-us/previous-versions/ms178232(v=vs.140)?redirectedfrom=MSDN
        protected void ButtonAny_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "hash", "location.hash = '#ANCH';", true);
        }

        protected void ButtonAny2_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonAny3_Click(object sender, EventArgs e)
        {
           
            TB1.Focus();
        }

        protected void ButtonAny4_Click(object sender, EventArgs e)
        {
            //this.SetFocus(LabelFocus);
            this.SetFocus(TB2);
        }
    }
}
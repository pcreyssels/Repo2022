using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception)
            {

                throw;
            }
            fu0.Attributes.Add("onchange", "upload0" + "()");

            //Debug.WriteLine("---- debut bloc redirect ");
            //if (TB1.Text == "RF")
            //    Response.Redirect("~/WebForm4.aspx", false);
            //if (TB1.Text == "RT")
            //    Response.Redirect("~/WebForm4.aspx", true);

            //if (TB1.Text == "RU")
            //    Response.RedirectUser("~/WebForm4.aspx");

            //Debug.WriteLine("---- fin bloc redirect page load continue ");
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            // Specify the path on the server to
            // save the uploaded file to.
            string savePath = @"c:\temp\uploads\";

            try
            {
                // Before attempting to save the file, verify
                // that the FileUpload control contains a file.
                if (fu1.HasFile)
                {
                    // Get the size in bytes of the file to upload.
                    int fileSize = fu1.PostedFile.ContentLength;

                    // Allow only files less than 2,100,000 bytes (approximately 2 MB) to be uploaded.
                    if (fileSize < 2100000)
                    {

                        // Append the name of the uploaded file to the path.
                        savePath += Server.HtmlEncode(fu1.FileName);

                        // Call the SaveAs method to save the 
                        // uploaded file to the specified path.
                        // This example does not perform all
                        // the necessary error checking.               
                        // If a file with the same name
                        // already exists in the specified path,  
                        // the uploaded file overwrites it.
                        fu1.SaveAs(savePath);

                        // Notify the user that the file was uploaded successfully.
                        UploadStatusLabel.Text = "Your file was uploaded successfully.";
                    }
                    else
                    {
                        // Notify the user why their file was not uploaded.
                        UploadStatusLabel.Text = "Your file was not uploaded because " +
                                                 "it exceeds the 2 MB size limit.";
                    }
                }
                else
                {
                    // Notify the user that a file was not uploaded.
                    UploadStatusLabel.Text = "You did not specify a file to upload.";
                }
            }
            catch (Exception ex)
            {
                string s = ex.Message;
                throw;
            }
            
        }

        protected void Button_Redirect_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("---- Button_Redirect_Click debut bloc redirect ");
            Debug.WriteLine($"----  ordre redirect : {TB1.Text} ");
            if (TB1.Text == "RF")
                Response.Redirect("~/WebForm4.aspx", false);
            if (TB1.Text == "RT")
                Response.Redirect("~/WebForm4.aspx", true);

            if (TB1.Text == "RU")
            {
                //Debug.WriteLine("appel session.abandon avant RedirectUser");
                //Session.Abandon();
                //Debug.WriteLine("retour session.abandon aavant RedirectUser");

                //Debug.WriteLine("appel session.clear");
                //Session.Clear();
                //Debug.WriteLine("retour session.clear");

                Response.RedirectUser("~/WebForm4.aspx");

                Debug.WriteLine("appel session.abandon apres RedirectUser");
                Session.Abandon();
                Debug.WriteLine("retour session.abandon apres RedirectUser");
            }
                

            Debug.WriteLine("---- Button_Redirect_Click fin bloc redirect page load continue ");


        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = "creyssels@france-education-international.fr";
            string mailBody = "bonjour <b> en gras </b>  <div style=\"color:red\">texte en rouge</div> <img src=\"clic512x512px.png\"\r\n  alt=\"caution\" />";

            mailBody = GetLocalResourceObject("mail.Text").ToString();

            SmtpClient client = new SmtpClient();
            client.Host = "smtp1.ciep.fr";
            MailAddress from = new MailAddress(email);
            MailAddress to = new MailAddress(email);
            MailMessage message = new MailMessage(from, to);

            //mailBody = "<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <title></title>\r\n</head>\r\n<body>\r\n    bonjour <b>gras</b>\r\n</body>\r\n</html>";

            message.Body = mailBody;// "This is a test email message sent by an application. ";
            message.IsBodyHtml = true;
            message.Subject = "test message 1";
            
            string adap = Server.MapPath("~/Images/vignette mail.png");
            Attachment at = new Attachment(adap);
            at.ContentId = "vignette"; // dans le html référencer l'uimage dans l'attribut src de <img : src="cid:vignette"
            message.Attachments.Add(at);
            // client.Send(message);

        }
    }
}
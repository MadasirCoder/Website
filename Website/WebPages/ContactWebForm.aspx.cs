using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class WebForm8 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                string admin_email = "mazprojectsmail@gmail.com";
                const string admin_emailpwd = "gmailaccpro12345";

                var fromAddress = new MailAddress(admin_email, "From Name");
                var toAddress = new MailAddress(admin_email, "To Name");
                const string fromPassword = admin_emailpwd;
                string subject = name.Text.ToString();
                string body = "From:" + email.Text.ToString() + Environment.NewLine
                    + message.Text.ToString();

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message);
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Your message has been sent." + "\\n" +
                         "Your Name/Company: " + name.Text.ToString() + "\\n" + 
                         "Your Email: " + email.Text.ToString() + "');", true);
                }
                name.Text = "";
                email.Text = "";
                message.Text = "";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }


}
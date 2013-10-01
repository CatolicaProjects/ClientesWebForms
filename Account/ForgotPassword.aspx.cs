using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace TrabalhoBernardi.Account
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage("email", "email");
            msg.Sender = new MailAddress("email");

            System.Net.Mail.SmtpClient cli = new SmtpClient("smpt.gmail.com", 465);
            cli.EnableSsl = true;
            cli.DeliveryMethod = SmtpDeliveryMethod.Network;
            cli.Credentials = new NetworkCredential("email", "senha");
            cli.Send(msg);

        }
    }
}
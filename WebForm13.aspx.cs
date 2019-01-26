using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace library_managemnet
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            HttpCookie cookie = Request.Cookies["NewUser"];
            if (cookie != null)
            {
                Label2.Text = cookie["Email"];
                Label3.Text = cookie["password"];
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage Mail = new MailMessage(Label1.Text, Label2.Text)
            {
                Subject = "Book Issued",
                Body = "Your Login Id is " + Label2.Text + " and your password is  " + Label3.Text + ".",
                IsBodyHtml = false
            };

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;

            NetworkCredential networkcred = new NetworkCredential(Label1.Text, "96prince786@");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = networkcred;
            smtp.Port = 587;
            smtp.Send(Mail);
            Response.Write("User Registered..Check your mail ");
            Response.Redirect("WebForm11");


        }
    }
}
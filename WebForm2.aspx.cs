using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

namespace library_managemnet
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            HttpCookie cookie = Request.Cookies["User"];
            if(cookie!=null)
            {
                Label1.Text = cookie["Email"];
                Label3.Text = cookie["Issue"];
                Label4.Text = cookie["Due"];
                Label5.Text = cookie["Isbn"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
            conn.Open();
            string query1 = "select count(*) from book_request where Emailid ='" + Label1.Text + "'";
            SqlCommand comm = new SqlCommand(query1, conn);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            conn.Close();
            if (temp<=2)
            {
                conn.Open();
                MailMessage Mail = new MailMessage(Label2.Text, Label1.Text)
                {
                    Subject = "Book Issued",
                    Body = "You Issued ISBN No " + Label5.Text + " on " + Label3.Text + ".The due Date is " + Label4.Text + ".",
                    IsBodyHtml = false
                };

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;

                NetworkCredential networkcred = new NetworkCredential(Label2.Text,Label6.Text);
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = networkcred;
                smtp.Port = 587;
                smtp.Send(Mail);
                Response.Write("Book Issued..Check your mail ");

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
                con.Open();
                string query = "update Book Set quantity=quantity-1 where Isbnno = '" + Label5.Text + "'";
                SqlCommand com = new SqlCommand(query, con);
                com.ExecuteNonQuery();
                
                
                string query2 = "insert into book_request(Isbn,Emailid,Issue,Due)values(@Isbn,@Emailid,@Issue,@Due)";

                SqlCommand com1 = new SqlCommand(query2, con);
                com1.Parameters.AddWithValue("@Isbn",Label5.Text);
                com1.Parameters.AddWithValue("@Emailid",Label1.Text);
                com1.Parameters.AddWithValue("@Issue",Label3.Text);
                com1.Parameters.AddWithValue("@Due",Label4.Text);
                com1.ExecuteNonQuery();
                

                con.Close();






            }
            else
            {
                Response.Write("You cant issue you have already taken 3 books");
            }
        }
    }
}
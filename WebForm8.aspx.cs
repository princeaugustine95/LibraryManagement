using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;

namespace library_managemnet
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserInfo"];
            if(cookie!=null)
            { TextBox1.Text = cookie["Isbn"];
                TextBox2.Text = cookie["Email"];
            }

           
            TextBox3.Text = Calendar1.TodaysDate.ToShortDateString();

            TextBox4.Text = DateTime.Today.AddDays(15).ToShortDateString();

        }
       
      

        protected void Button1_Click(object sender, EventArgs e)
        {  
            

            HttpCookie cookie = new HttpCookie("User");
            cookie["Email"] = TextBox2.Text;
            cookie["Issue"] = TextBox3.Text;
            cookie["Due"] = TextBox4.Text;
            cookie["Isbn"] = TextBox1.Text;
            cookie.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(cookie);
            Response.Redirect("WebForm2.aspx");

            
        }
        public string email
        {
            get
            {
                return TextBox2.Text;
            }
        }
    }
}
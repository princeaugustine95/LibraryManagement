using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace library_managemnet
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Isbn"];
            if(cookie!=null)
            {
                TextBox2.Text = cookie["Isbn"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
            conn.Open();
            string query = "select count(*) from Userlog where Emailid ='" + TextBox1.Text + "'";
            SqlCommand command = new SqlCommand(query, conn);
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 0)
            {
                Response.Write("You are not logged in..Please Login ");
                Response.Redirect("WebForm5.aspx");
            }
            else
            {
                HttpCookie cookie = new HttpCookie("UserInfo");
                cookie["Email"] = TextBox1.Text;
                cookie["Isbn"] = TextBox2.Text;
                cookie.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cookie);
                Response.Redirect("WebForm8.aspx");
               
            }
        }
        public string email
        {
            get
            {
                return TextBox1.Text;

            }
        }
    }
}
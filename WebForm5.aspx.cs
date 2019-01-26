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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
            conn.Open();
            string query = "select count(*) from Userdata where Emailid ='" + TextBox1.Text + "'";
            SqlCommand command = new SqlCommand(query, conn);
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 1)
            {
                conn.Open();
                string checkpassword = "select password1 from Userdata where Emailid ='" +TextBox1.Text+ "'";
                SqlCommand comm = new SqlCommand(checkpassword,conn);
                string password = comm.ExecuteScalar().ToString().Replace(" ","");
                if(password ==TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    string query2 = "Insert into Userlog(Emailid,password1)values(@Emailid,@password1)";
                    SqlCommand com = new SqlCommand(query2,conn);
                    com.Parameters.AddWithValue("@Emailid",TextBox1.Text);
                    com.Parameters.AddWithValue("@password1",TextBox2.Text);
                    com.ExecuteNonQuery();
                    HttpCookie cookie = new HttpCookie("Signout");
                    cookie["Signout"] = TextBox1.Text;
                    cookie.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie);
                    Response.Write("password is Correct");
                    Response.Redirect("WebForm9");
                }
                else
                {
                    Response.Write("Password is wrong");
                }
         
                

            }
            else
            {
                Response.Write("User is not Regsitered");
            }   
        }
    }
}
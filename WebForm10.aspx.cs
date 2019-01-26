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
    public partial class WebForm10 : System.Web.UI.Page
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
                string checkpassword = "select password1 from Userdata where Emailid ='" + TextBox1.Text + "' and Category= 'Admin' ";
                SqlCommand comm = new SqlCommand(checkpassword, conn);
                string password = comm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("password is Correct");
                    Response.Redirect("WebForm11");
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
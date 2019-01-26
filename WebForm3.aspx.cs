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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
                conn.Open();
                string query = "select count(*) from Userdata where Emailid ='" +TextBox2.Text+ "'";
                SqlCommand command = new SqlCommand(query,conn);
                int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                conn.Close();

                if (temp==1)
                {
                    Response.Write("User already exist");

                }
               
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGuid = Guid.NewGuid();
                SqlConnection myconnection = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
                myconnection.Open();
                string query = "insert into Userdata(Username,Emailid,password1,Category)values(@Username,@Emailid,@password1,@Category)";
                SqlCommand comm = new SqlCommand(query,myconnection);
                comm.Parameters.AddWithValue("@Username", TextBox1.Text);
                comm.Parameters.AddWithValue("@Emailid", TextBox2.Text);
                comm.Parameters.AddWithValue("@password1", TextBox3.Text);
                comm.Parameters.AddWithValue("@Category", DropDownList1.SelectedItem.Text);
                comm.ExecuteNonQuery();

                HttpCookie cookie = new HttpCookie("NewUser");
                cookie["Email"] = TextBox2.Text;
                cookie["password"] = TextBox3.Text;
               
                cookie.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cookie);
              
                Response.Redirect("WebForm13.aspx");
                
                myconnection.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error occured while inserting"+ex.ToString());

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
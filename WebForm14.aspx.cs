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
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
                con.Open();
                string query = "Delete from Userdata where Emailid='"+TextBox1.Text+"'";
                SqlCommand com = new SqlCommand(query,con);
                com.ExecuteNonQuery();
                Response.Redirect("WebForm11");
                con.Close();

            }
            catch(Exception ex)
            {
                Response.Write("Error connecting the database"+ex.ToString());
            }
        }
    }
}
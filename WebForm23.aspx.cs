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
    public partial class WebForm23 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
            con.Open();
            string query = "Update Book set quantity=quantity+1 where Isbnno='"+TextBox1.Text+"'";
            string query1 = "Delete from book_request where Emailid='" + TextBox2.Text + "'and Isbn='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(query,con);
            SqlCommand com1 = new SqlCommand(query1,con);
            com.ExecuteNonQuery();
            com1.ExecuteNonQuery();
            Response.Redirect("WebForm11");
        
            con.Close();
        }
    }
}
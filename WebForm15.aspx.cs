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
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int temp = int.Parse(TextBox1.Text);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
                con.Open();
                string query = "  Declare @temp int ='"+ int.Parse(TextBox1.Text) + "' Update Book Set quantity=quantity + @temp where Isbnno ='"+TextBox2.Text+"'";
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
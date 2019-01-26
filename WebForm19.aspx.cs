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
    public partial class WebForm19 : System.Web.UI.Page
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
                string query = "Insert into Book(bookname,Author,Isbnno,quantity)values(@bookname,@Author,@Isbnno,@quantity)";
                SqlCommand com = new SqlCommand(query,con);
                com.Parameters.AddWithValue("@bookname",TextBox1.Text);
                com.Parameters.AddWithValue("@Author",TextBox2.Text);
                com.Parameters.AddWithValue("@Isbnno",TextBox3.Text);
                com.Parameters.AddWithValue("@quantity",TextBox4.Text);
                com.ExecuteNonQuery();
                Response.Redirect("WebForm12");
                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error connecting the database"+ex.ToString());
            }
        }
    }
}
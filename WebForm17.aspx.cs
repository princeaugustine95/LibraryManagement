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
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
                HttpCookie cookie = Request.Cookies["search"];
                if (cookie != null)
                {
                    TextBox1.Text = cookie["search"];
                }
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
                con.Open();
                string query = "select * from Book where bookname ='" + TextBox1.Text + "'";
                SqlCommand com = new SqlCommand(query, con);
                com.ExecuteNonQuery();
              

         
                con.Close();
            }
           
           
        }
    }
}
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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Signout"];
            if(cookie!=null)
            {
                Label1.Text = cookie["Signout"];
            }
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
            conn.Open();
            string query = "select count(*) from Book where bookname='"+TextBox5.Text+"'";
            SqlCommand comm = new SqlCommand(query,conn);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            if(temp==0)
            {
                Response.Write("<script language=javascript>alert('This Book Doesnt Exist.')</script>");
               
            }
            else
            {
                GridView1.Visible = true;
            }
            conn.Close();
            Panel1.Visible = true ;
            Panel2.Visible = false;
        }
       

       

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView2.SelectedRow;
            TextBox1.Text = gr.Cells[1].Text;
            TextBox2.Text = gr.Cells[2].Text;
            TextBox3.Text = gr.Cells[3].Text;
            TextBox4.Text = gr.Cells[4].Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("Isbn");
            cookie["Isbn"] = TextBox3.Text;
            cookie.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(cookie);
            Response.Redirect("WebForm7.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel1.Visible = false;
            Panel2.Visible = false;


        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView3.SelectedRow;
            TextBox1.Text = gr.Cells[1].Text;
            TextBox2.Text = gr.Cells[2].Text;
            TextBox3.Text = gr.Cells[3].Text;
            TextBox4.Text = gr.Cells[4].Text;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
            conn.Open();
            string query = "select count(*) from Book where Author='" + TextBox5.Text + "'";
            SqlCommand comm = new SqlCommand(query, conn);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            if (temp == 0)
            {
                Response.Write("<script language=javascript>alert('The Book from this Author Doesn't Exist.')</script>");

            }
            else
            {
                GridView3.Visible = true;
            }
            conn.Close();

            Panel1.Visible = false;

            Panel3.Visible = true;
            Panel2.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["project3ConnectionString"].ConnectionString);
            con.Open();
            string query = "Delete from Userlog where Emailid ='" + Label1.Text + "'";
            SqlCommand com = new SqlCommand(query, con);
            com.ExecuteNonQuery();
            Response.Redirect("WebForm9");

            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            TextBox1.Text = gr.Cells[1].Text;
            TextBox2.Text = gr.Cells[2].Text;
            TextBox3.Text = gr.Cells[3].Text;
            TextBox4.Text = gr.Cells[4].Text;
        }
    }

}
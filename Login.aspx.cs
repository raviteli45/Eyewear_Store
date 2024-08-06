using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Eyewear\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            SqlCommand cmd = new SqlCommand("select * from register where uid=@uid and pass=@pass", con);

            cmd.Parameters.AddWithValue("@uid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("Please Select Valid Option");
            }
        }
        else
        {
            if (RadioButton2.Checked)
            {

                SqlCommand cd = new SqlCommand("select * from admin where uid=@uid and pass=@pass", con);

                cd.Parameters.AddWithValue("@uid", TextBox1.Text);
                cd.Parameters.AddWithValue("@pass", TextBox2.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cd);
                DataTable dot = new DataTable();
                sda.Fill(dot);
                con.Open();
                int i = cd.ExecuteNonQuery();
                con.Close();
                if (dot.Rows.Count > 0)
                {
                    Response.Redirect("admin/Adminhome.aspx");
                }
                else
                {
                    Response.Write("Please Select Valid Option");
                }
            }
        }

    }
  
}

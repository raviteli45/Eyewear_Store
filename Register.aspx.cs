using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Eyewear\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

  
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        
            string ins = "Insert into register (uid,name,email,gen,num,address,city,pass) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, cn);
            cn.Open();
            int i = cmd.ExecuteNonQuery();


            Label1.Text = "Record inserted successfully..";
            Label1.ForeColor = System.Drawing.Color.Green;
            Response.Redirect("Login.aspx");
            cn.Close();
        
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        DropDownList1.Text = "";
    }
}
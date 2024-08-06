using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class placeorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("pid");
            dt.Columns.Add("pname");
            dt.Columns.Add("productimage");
            dt.Columns.Add("price");
            dt.Columns.Add("qty");
            dt.Columns.Add("tprice");

            if (Request.QueryString["pid"] != null)
            {
                if (Session["Buyitems"] == null)
                {
                    dr = dt.NewRow();
                    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Eyewear\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
                    String query = "select * from product where pid=" + Request.QueryString["pid"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = query;
                    cmd.Connection = cn;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["pid"] = ds.Tables[0].Rows[0]["pid"].ToString();
                    dr["pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                    dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["qty"] = Request.QueryString["qty"];
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                    int qty = Convert.ToInt32(Request.QueryString["qty"].ToString());
                    int totalprice = price * qty;
                    dr["tprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("cart.aspx");
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;
                    dr = dt.NewRow();
                    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Eyewear\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
                    String query = "select * from product where pid=" + Request.QueryString["pid"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = query;
                    cmd.Connection = cn;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["pid"] = ds.Tables[0].Rows[0]["pid"].ToString();
                    dr["pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                    dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["qty"] = Request.QueryString["qty"];
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                    int qty = Convert.ToInt32(Request.QueryString["qty"].ToString());
                    int totalprice = price * qty;
                    dr["tprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Ammount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("cart.aspx");
                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Ammount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                }
                Label1.Text = GridView1.Rows.Count.ToString();
            }
            Label2.Text = DateTime.Now.ToShortDateString();
            findorderid();

        }
    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];

        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["tprice"].ToString());
            i = i + 1;
        }
        return gtotal;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);
            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                break;
            }
        }
        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }
        Session["buyitems"] = dt;
        Response.Redirect("cart.aspx");
    }
    public void findorderid()
    {
        String pass = "abcdefghijklmnopqtstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];

        }
        String orderid;
        orderid = DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.DayOfYear.ToString();
        Label3.Text = orderid;
    }
    public void saveaddress()
    {
        String updatepass = "Insert into orderaddress(orderid,address,mnumber)values('" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
        String con = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Eyewear\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection s = new SqlConnection(con);
        s.Open();
        SqlCommand cmd = new SqlCommand(con);
        cmd.CommandText = updatepass;
        cmd.Connection = s;
        cmd.ExecuteNonQuery();
        s.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = (DataTable)Session["buyitems"];
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            String pass = "insert into orderdetails(orderid,sno,pid,price,qty,datefororder) values ('" + Label3.Text + "','" + dt.Rows[i]["sno"] + "','" + dt.Rows[i]["pid"] + "','" + dt.Rows[i]["price"] + "','" + dt.Rows[i]["qty"] + "','" + Label2.Text + "')";
            String cn1 = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Eyewear\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
            SqlConnection so = new SqlConnection(cn1);
            so.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = pass;
            cmd1.Connection = so;
            cmd1.ExecuteNonQuery();
            so.Close();
        }
        saveaddress();
        Response.Redirect("ordersuccess.aspx");
    }
}

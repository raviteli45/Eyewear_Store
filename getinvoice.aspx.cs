using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text.html;

public partial class getinvoice : System.Web.UI.Page
{
    static Boolean orderfound;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Text = TextBox1.Text;
        findorderdate(Label3.Text);
        if (orderfound == true)
        {
            findorderdate(Label3.Text);
            showgrid(Label3.Text);
            Panel1.Visible = true;
        }
        else
        {
            Label7.Text = "Perticular id is not found";
        }
    }
    private void findaddress(String orderid)
    {
        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Eyewear\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        String myquery = "select * from orderaddress where orderid='" + orderid + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label5.Text = ds.Tables[0].Rows[0]["address"].ToString();
        }
        con.Close();
    }
    private void showgrid(String orderid)
    {
        DataTable dt = new DataTable();
        DataRow dr;
        dt.Columns.Add("sno");
        dt.Columns.Add("pid");
        dt.Columns.Add("price");
        dt.Columns.Add("qty");
        dt.Columns.Add("totalprice");
        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Eyewear\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        String myquery = "select * from orderdetails where orderid='" + orderid + "'";
        SqlConnection scon = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        int totalrows = ds.Tables[0].Rows.Count;
        int i = 0;
        int grandtotal = 0;
        while (i < totalrows)
        {
            dr = dt.NewRow();
            dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
            dr["pid"] = ds.Tables[0].Rows[i]["pid"].ToString();
            dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
            dr["qty"] = ds.Tables[0].Rows[i]["qty"].ToString();
            int price = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
            int quantity = Convert.ToInt32(ds.Tables[0].Rows[i]["qty"].ToString());
            int tprice = price*quantity;
            dr["totalprice"]=tprice;
            grandtotal = grandtotal + tprice;
            dt.Rows.Add(dr);
            i = i + 1;

        }
        GridView1.DataSource = dt;
        GridView1.DataBind();

        Label6.Text = grandtotal.ToString();
    }
    private void findorderdate(String orderid)
    {
        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Eyewear\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        String myquery = "select * from orderdetails where orderid='" + orderid + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label4.Text = ds.Tables[0].Rows[0]["datefororder"].ToString();
            orderfound = true;
        }
        else
        {
            orderfound = false;
        }
        con.Close();
    }
    private void exportpdf()
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter w = new HtmlTextWriter(sw);
        Panel1.RenderControl(w);
  
        StringReader reader = new StringReader(sw.ToString());
        Document doc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
        
        HTMLWorker htmlparser = new HTMLWorker(doc);
        PdfWriter.GetInstance(doc, Response.OutputStream);
        doc.Open();
        try
        {
            htmlparser.Parse(reader);
            doc.Close();
            Response.Write(doc);
            Response.End();
        }
        catch (Exception ex)
        { }

        finally
        {
            doc.Close();
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
       /*Verifies That Contol is renderd*/
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        exportpdf();
    }
}
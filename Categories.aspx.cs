using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        if (dt != null)
        {
            Label4.Text = dt.Rows.Count.ToString();

        }
        else
        {
            Label4.Text = "0";
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
        Response.Redirect("Cart.aspx?pid=" + e.CommandArgument.ToString() + "&qty=" + dlist.SelectedItem.ToString());
    }
}
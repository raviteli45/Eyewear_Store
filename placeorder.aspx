<%@ Page Language="C#" AutoEventWireup="true" CodeFile="placeorder.aspx.cs" Inherits="placeorder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style9
        {
            font-size: x-large;
            font-family: Arial;
            font-weight: 700;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
    <span class="style9">You have selected </span>
    <asp:Label ID="Label1" runat="server" CssClass="style9"></asp:Label>
    <span class="style9">&nbsp; Items in your cart </span>
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style9" 
        NavigateUrl="~/Home.aspx">Continue Shoping</asp:HyperLink>
        <br />
        <br />
        <strong>ORDER DATE :&nbsp; <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <br />
        ORDER ID :&nbsp; <asp:Label ID="Label3" runat="server"></asp:Label>
        </strong>
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" Height="285px" 
        Width="923px" onrowdeleting="GridView1_RowDeleting" ShowFooter="True" 
            ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="s.no" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pid" HeaderText="id" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pname" HeaderText="name" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="productimage" HeaderText="Image">
                <ControlStyle Height="150px" Width="150px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:ImageField>
            <asp:BoundField DataField="price" HeaderText="price" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="qty" HeaderText="quantity" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="tprice" HeaderText="Total Amount" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        <br />
        <strong>
        <br />
        TYPE ADDRESS </strong>:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="28px" 
            TextMode="MultiLine" Width="197px"></asp:TextBox>
        <br />
        <br />
        <strong>
        <br />
        MOBILE NUMBER : </strong><asp:TextBox ID="TextBox2" 
            runat="server" Height="26px" 
            Width="185px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="39px" 
            style="text-align: center; font-weight: 700;" Text="Checkout" Width="174px" 
            onclick="Button1_Click" />
        <br />
    
    </div>
    </form>
</body>
</html>

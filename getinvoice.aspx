<%@ Page Language="C#" AutoEventWireup="true" CodeFile="getinvoice.aspx.cs" Inherits="getinvoice" EnableEventValidation="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 35%;
            height: 117px;
        }
        .style3
        {
            width: 100%;
            height: 229px;
        }
        .style5
        {
            width: 560px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="style2">
            <tr>
                <td>
                    Enter Your Order ID:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="255px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Height="46px" onclick="Button1_Click" 
                        Text="Get Invoice" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label1" runat="server">Your Genrated Invoice is Given Below</asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <br />
&nbsp;<asp:Panel ID="Panel1" runat="server" style="text-align: left" Visible="False">
            <asp:Label ID="Label2" runat="server" Font-Size="26px" 
                Text="Invoice Receipt"></asp:Label>
            <br />
            <br />
            <table class="style3">
                <tr>
                    <td class="style5" style="text-align: left">
                        Orderid:</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5" style="text-align: left">
                        Order Date:</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>SellDetails:</td>
                    <td>Anand VV Nagar</td>
                </tr>
                <tr>
                    <td class="style5" style="text-align: left">
                        Buyer Address:</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                Height="242px" style="margin-top: 0px" Width="549px">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="sno" />
                    <asp:BoundField DataField="pid" HeaderText="Product id" />
                    <asp:BoundField DataField="qty" HeaderText="Quantity" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            Grand Total:<asp:Label ID="Label6" runat="server"></asp:Label>
            <br />
            <br />
            This is computer genrated invoice:no need for any signature<br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Height="60px" onclick="Button2_Click" 
                Text="Download Invoice as PDF" Width="279px" />
            <br />
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>

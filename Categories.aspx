<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
            height: 26px;
            text-align: center;
        }
        .style8
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    You Have Selected Items are
    <asp:Label ID="Label4" runat="server"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataSourceID="SqlDataSource1" RepeatColumns="4" 
        RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <table class="style6">
                <tr>
                    <td class="style7">
                        Product id:<asp:Label ID="Label1" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Image ID="Image2" runat="server" Height="250px" 
                            ImageUrl='<%# Eval("productimage") %>' Width="250px" />
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        Price:<asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="62px" 
                            ImageUrl="~/IMG/lenscart/Catagories/cart4.png" CommandArgument='<%# Eval("pid") %>' CommandName="addtocart"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
</asp:DataList>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
</asp:Content>


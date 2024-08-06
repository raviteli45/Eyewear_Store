<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            text-decoration: underline;
            height: 140px;
        }
        .style2
        {
            text-align: left;
            background-color: #FFFFFF;
            width: 467px;
        }
        .style4
        {
            width: 399px;
            height: 41px;
            text-align: right;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
        }
        .style5
        {
            text-align: left;
            height: 41px;
            background-color: #FFFFFF;
            width: 467px;
        }
        .style6
        {
            width: 399px;
            height: 39px;
            text-align: right;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
        }
        .style7
        {
            text-align: left;
            height: 39px;
            background-color: #FFFFFF;
            width: 467px;
        }
        .style8
        {
            width: 399px;
            text-align: right;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
        }
        .style10
        {
            color: #000066;
            height: 20px;
        }
        .style14
        {
            width: 399px;
            text-align: right;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
            height: 8px;
        }
        .style15
        {
            text-align: left;
            background-color: #FFFFFF;
            height: 8px;
            width: 467px;
        }
        .style16
        {
            width: 399px;
            height: 58px;
            text-align: right;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
        }
        .style17
        {
            text-align: left;
            height: 58px;
            background-color: #FFFFFF;
            width: 467px;
        }
        .style18
        {
            height: 45px;
            background-color: #FFFFFF;
            width: 467px;
        }
        .style19
        {
            height: 35px;
            background-color: #FFFFFF;
            color: #000000;
        }
        .style20
        {
            font-weight: bold;
        }
        .style21
        {
            height: 45px;
            background-color: #FFFFFF;
            width: 399px;
        }
        .style22
        {
            width: 399px;
            text-align: right;
            font-weight: bold;
            color: #000000;
            background-color: #FFFFFF;
            height: 95px;
        }
        .style23
        {
            text-align: left;
            background-color: #FFFFFF;
            width: 467px;
            height: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" style="width: 808px; height: 655px">
            <tr>
                <td class="style1" colspan="2" style="text-align: center; color: #FFFFFF; background-color: #CCFFCC;" 
                    bgcolor="Black">
                    <asp:Image ID="Image1" runat="server" Height="125px" 
                        ImageUrl="~/IMG/lenscart/logo/Lenskart-Logo-500x281.png" Width="313px" />
                </td>
            </tr>
             <tr>
                <td class="style8">ID&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style2" style="color: #000000">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*Input Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="style8">Name&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style2" style="color: #000000">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*Input Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="style8">Email&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style2" style="color: #000000">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="*Enter Valid Email" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </td>
            </tr>
             <tr>
                <td class="style6">Gender&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style7" style="color: #000000">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="127px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                 </td>
            </tr>
             <tr>
                <td class="style4">Phone&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style5" style="color: #000000">
                    <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox>
                 &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="*Input Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="style22">Address&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style23" style="color: #000000">
                    <asp:TextBox ID="TextBox5" runat="server" Height="58px" TextMode="MultiLine" 
                        Width="130px"></asp:TextBox>
                 &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="*Input Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="style14">City&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style15" style="color: #000000">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="*Input Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>

             <tr>
                <td class="style16">Password&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style17" style="color: #000000">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                 &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="*Input Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
            <tr>
                <td class="style21" style="text-align: right; color: #FFFFFF;">
                    <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
                        Text="Submit" Width="104px" style="font-weight: 700" CssClass="t3" />
                    &nbsp;
                </td>
                <td style="color: #FFFFFF" class="style18">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="33px" onclick="Button2_Click" 
                        Text="Clear" Width="104px" style="font-weight: 700" CssClass="t4" />
                </td>
            </tr>
            <tr>
                <td class="style19" style="text-align: center; " colspan="2">
                    <b>&nbsp;If you Already have Account ! </b>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style20" 
                        NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style19" style="text-align: left; font-size: small;" colspan="2">
                    <asp:Label ID="Label1" runat="server" style="text-align: left" Text="Label"></asp:Label>
                </td>
            </tr>
             <tr>
           <td colspan="2" style="text-align: center; background-color: #CCFFCC;" 
                     bgcolor="Black" class="style10">
                      <marquee>  All Righs Reserved @Lenscart.com</marquee></td>
                     
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

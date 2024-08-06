<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #000000;
        }
    </style>
</head>
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<body style="text-align: left" bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <div style="text-align: center; background-color: #CCFFCC; color: #FFFFFF; height: 570px;">
    
        <asp:Image ID="Image1" runat="server" Height="163px" 
            ImageUrl="~/IMG/lenscart/logo/Lenskart-Logo-500x281.png" 
            BorderColor="#FFCCFF" Width="381px" style="margin-top: 53px" />
        <br />
        <br />
        <br />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" Height="35px" 
            style="text-align: left" Width="200px" CssClass="t1"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*Input Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" Height="35px" 
            style="text-align: left" Width="200px" CssClass="t2"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*Input Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Customer" 
            GroupName="g1" style="color: #000000" Checked="True" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Admin" GroupName="g1" 
            style="color: #000000" />
        <br />
        <br />
        
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
            Height="35px" Width="200px" CssClass="abc" />
        
        <br />
        <br />
        <span class="style1">New Here !&nbsp; </span> <a href="Register.aspx" 
            class="style1">Register</a>
    
    </div>
    </form>
</body>
</html>

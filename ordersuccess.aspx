<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ordersuccess.aspx.cs" Inherits="ordersuccess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: left;
            font-size: medium;
        }
        .style3
        {
            font-size: large;
        }
        .style4
        {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
       
  
        <strong>
    
       
  
        <span class="style4">Your Order Has Been Placed SuccessFully
        </span>
        
        </strong>
    
       
  
        <span class="style3">
        <br />
        <marquee direction="right"><asp:Image ID="Image1" runat="server" Height="320px" 
            ImageUrl="~/IMG/track.png" Width="500px" /></marquee>
        <br />
        </span>
        
        <asp:Button ID="Button2" runat="server" Height="46px" onclick="Button2_Click" 
            Text="Get Invoice" />
        <br />
        <br />
    
       
  
        </div>
    </form>
</body>
</html>

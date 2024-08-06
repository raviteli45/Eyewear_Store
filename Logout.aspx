<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            text-align: center;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div class="style7" style="height: 445px">
    <strong>
    <br />
    <br />
    <br />
    <br />
    <br />
    Are You Sure You Want to Logout !<br />
    <br />
    <br />
    </strong>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="font-weight: 700" Text="Logout" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="font-weight: 700" Text="Cancel" />
</div>
</asp:Content>


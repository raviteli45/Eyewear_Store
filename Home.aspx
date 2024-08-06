<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 96%;
            height: 1056px;
            margin-right: 0px;
        }
        .style7
        {
            height: 120px;
            text-align: center;
        }
        .style9
    {
        height: 52px;
        text-align: center;
            width: 31%;
        }
        .style10
        {
            height: 163px;
            text-align: center;
            font-family: Arial;
        }
        .style11
        {
            height: 52px;
            text-align: center;
            width: 40%;
        }
    .style12
    {
        text-align: center;
        height: 21px;
    }
        .style13
        {
            height: 52px;
            text-align: center;
            width: 254px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
        <table class="style6">
            <tr>
                <td class="style12" colspan="3">
                    </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        PostBackUrl="~/Categories.aspx" ImageUrl="~/IMG/lenscart/Catagories/mens.jfif"  
                        Width="250px" Height="250px" BorderWidth="2px" 
                        onclick="ImageButton1_Click" />
                    <br />
                    MENS</td>
                <td class="style11">
                    <asp:ImageButton ID="ImageButton2" runat="server" 
                        PostBackUrl="~/Categories.aspx" ImageUrl="~/IMG/lenscart/Products/womens2.jfif" 
                        Width="250px" Height="250px" BorderWidth="2px" />
                    <br />
                    WOMENS</td>
                    <td class="style13">
                    <asp:ImageButton ID="ImageButton3" runat="server" 
                        PostBackUrl="~/Categories.aspx" ImageUrl="~/IMG/lenscart/Products/kids3.jfif" 
                        Width="250px" Height="250px" BorderWidth="2px" 
                            style="text-align: center; margin-left: 36px"  />
                        <br />
                    KIDS</td>
            </tr>
            <tr>
                <td class="style7" colspan="3">
                    <asp:Image ID="Image2" runat="server" Height="250px" 
                        ImageUrl="~/IMG/lenscart/banner/poster.png" style="margin-top: 0px" 
                        Width="1350px" />
                </td>
            </tr>
            <tr>
                <td class="style10" colspan="3">
                    <asp:Image ID="Image3" runat="server" Height="250px" 
                        ImageUrl="~/IMG/lenscart/banner/poster2.jpg" Width="1350px" />
                </td>
            </tr>
            <tr>
                <td class="style7" colspan="3">
                    <asp:Image ID="Image4" runat="server" Height="250px" 
                        ImageUrl="~/IMG/lenscart/banner/banner1.jpg" Width="1350px" />
                </td>
            </tr>
        </table>
        <br />
    
   
</asp:Content>


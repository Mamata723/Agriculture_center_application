﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="sales.aspx.cs" Inherits="WebApplication2.admin.sales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 54px;
        }
        h1{
            color:white;
            text-align:center;
            font-family:Arial;
            font-size:40px;
            background-color:slategray;
        }
        .button1 {
    background-color: #5349d6;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    font-size: medium;
    border-radius: 15px;
    box-shadow: 0,white;
}
         GridView
         {
             font-family:Arial;
             font-size:20px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <h1>sales list</h1>
   
    <p>
<link href="../stylesheet/employee.css" rel="stylesheet" />
        <link href="../stylesheet/gridview.css" rel="stylesheet" />
        <table width="100%"> 
    
                     <tr>  
                         <td>customer name</td>  
                        
                          <td class="auto-style3">  
                               <asp:TextBox ID="TextBox1" runat="server" size="25"></asp:TextBox>
                               &nbsp;<br />
                          </td>  
                           <td>item type</td>  
                          <td>  
                               <asp:DropDownList ID="drop" runat="server">
                                   <asp:ListItem>seed</asp:ListItem>
                                   <asp:ListItem>fertilizers</asp:ListItem>
                                   <asp:ListItem>bio-fetilizers</asp:ListItem>
                                    <asp:ListItem>onion seeds</asp:ListItem>
                                     <asp:ListItem>vegitables fertilizers</asp:ListItem>
                               </asp:DropDownList>
                          </td>   
                    
                         <td>price</td>  
                        
                          <td class="auto-style3">  
                               <asp:TextBox ID="TextBox4" runat="server" size="25"></asp:TextBox>
                               &nbsp;<br />
                              
                         
                     </tr>
                     
                     <tr>  
                          <td class="auto-style2">item name</td>  
                          <td class="auto-style2">  
                               <asp:TextBox ID="TextBox6" runat="server" size="25"></asp:TextBox>
                               </td>  
                          
                       <td>net ammount</td>  

                        
                          <td class="auto-style3">  
                               <asp:TextBox ID="TextBox7" runat="server" size="25"></asp:TextBox>
                               <td>&nbsp;</td>  
                          <td class="auto-style3">  
                               &nbsp;</tr>  
                    
                          </td>
      </table>
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;<asp:Button ID="Button2" runat="server" CssClass="button2" OnClick="Button1_Click" Text="save" Width="123px" padding="15px 32px" text-align="center" display="inline-block" BackColor="#3549D6" ForeColor="White" border-radius="15px" Font-Size="Medium" Height="59px" />

        &nbsp;&nbsp;

        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="button2" OnClick="Button1_Click" Text="print" Width="123px" padding="15px 32px" text-align="center" display="inline-block" BackColor="#3549D6" ForeColor="White" border-radius="15px" Font-Size="Medium" Height="59px" />
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;
        <p>
            &nbsp;&nbsp;
            <asp:Label ID="errMsg" runat="server" ForeColor="White"></asp:Label>
            <p>
   
                 <asp:GridView runat="server" font-family="Arial" Width="100%" ID="productGV" AutoGenerateSelectButton="True" OnSelectedIndexChanged="productGV_SelectedIndexChanged" CssClass="gridView" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="#003366" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" />
                 <AlternatingRowStyle BackColor="#333399" BorderColor="White" BorderWidth="2px" ForeColor="White" />
                    <EditRowStyle BorderWidth="2px" Font-Size="larger" Font-Bold="true" />
                   <HeaderStyle BackColor="#6600CC" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="True" Font-Size="20px" />
                  <SelectedRowStyle BackColor="#669999" ForeColor="White" Font-Size="30px" Font-Bold="true" HorizontalAlign="center"/>
                
                
            </asp:GridView>
   </form>
     <br />
            <p>
            &nbsp;<p>
            &nbsp;
</asp:Content>

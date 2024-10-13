<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        h1{
            color:white;
            text-align:center;
            font-family:Arial;
            font-size:40px;
            background-color:slategray;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <link href="../stylesheet/employee.css" rel="stylesheet" />
     <h1>supplier details</h1>
 <form>

                <table width="100%">  
                     <tr>  
                          <td>supplier</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox1" runat="server" size="2" Width="106px"></asp:TextBox>
                               <br />
                          </td>  
                          <td>Item_type</td>  
                          <td>  
                              <asp:DropDownList ID="dp" runat="server">
                              <asp:ListItem>seed</asp:ListItem>
                                   <asp:ListItem>fertilizers</asp:ListItem>
                                   <asp:ListItem>bio-fetilizers</asp:ListItem>
                                    <asp:ListItem>onion seeds</asp:ListItem>
                                     <asp:ListItem>vegitables fertilizers</asp:ListItem>
                                  </asp:DropDownList>
                         
                     </tr>
                     <tr>  
                          <td>compnay name</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox2" runat="server" size="25"></asp:TextBox>
                          </td>  
                          <td>item name</td>  
                          <td>  
                               &nbsp;<asp:TextBox ID="TextBox5" runat="server" size="25"></asp:TextBox>
                           
                          
                     </tr>  
                    
                    
                    
                     <tr>  
                          <td>mobile number</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox3" runat="server" size="25"></asp:TextBox>
                          

                          </td> 
                          <td>description</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox7" runat="server" size="25"></asp:TextBox>
                         </tr>
                    </table>
                          
                     
 
                          
                  
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" CssClass="button1" Height="52px" Text="SAVE" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" CssClass="button1" Height="48px" Text="DELETE" Width="164px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" CssClass="button1" Height="52px" Text="EDIT" OnClick="Button3_Click" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridV" runat="server" AutoGenerateSelectButton="true" Width="100%" OnSelectedIndexChanged="GridV_SelectedIndexChanged">
     <AlternatingRowStyle BackColor="#003366" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" />
                 <AlternatingRowStyle BackColor="#333399" BorderColor="White" BorderWidth="2px" ForeColor="White" />
                    <EditRowStyle BorderWidth="2px" Font-Size="larger" Font-Bold="true" />
                   <HeaderStyle BackColor="#6600CC" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="True" Font-Size="20px" />
                  <SelectedRowStyle BackColor="#669999" ForeColor="White" Font-Size="30px" Font-Bold="true" HorizontalAlign="center"/>
        </asp:GridView>
    <br />
    <br />
     </form>
    </asp:Content>

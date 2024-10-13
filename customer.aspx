<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="WebApplication2.admin.customer" %>
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
    <h1>&nbsp;customer details</h1>
    <form>

                <table width="100%">  
                     <tr>  
                          <td>customer name</td>  
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
                          <td>Mobile Number</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox2" runat="server" size="25"></asp:TextBox>
                          </td>  
                          <td>item name</td>  
                          <td>  
                               &nbsp;<asp:TextBox ID="TextBox5" runat="server" size="25"></asp:TextBox>
                           
                          
                     </tr>  
                    
                    
                    
                     <tr>  
                          <td>aadhar number</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox3" runat="server" size="25"></asp:TextBox>
                          

                          </td> 
                         <td>quantity</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox7" runat="server" size="25"></asp:TextBox>
                         </tr>
                    <tr>
<td>address</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox6" runat="server" size="25"></asp:TextBox>
                </td><td>MRP</td>
                         <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox8" runat="server" size="25"></asp:TextBox>
                           
                        </td>
                              </tr>
                          
                          
      </table>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
     &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="SAVE" CssClass="button1" Height="53px" OnClick="Button1_Click" />
                &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="DELETE" runat="server" Text="DELETE" CssClass="button1" Height="54px" Width="140px" OnClick="DELETE_Click"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button2" runat="server" Text="EDIT" CssClass="button1" Height="51px" OnClick="Button2_Click" />      
        <br />
                <br />
                <asp:Label ID="errmsg" runat="server"></asp:Label>
                <br />
                <asp:GridView ID="customerGV" runat="server" Width="100%" font-family="Arial" AutoGenerateSelectButton="true" OnSelectedIndexChanged="customerGV_SelectedIndexChanged" >
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

<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="WebApplication2.admin.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>

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
        .auto-style2 {
            height: 52px;
        }
        .auto-style3 {
            height: 68px;
        }
        .auto-style4 {
            height: 40px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
   


     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>Supplier detaill</h1>
      




                <table width="100%">  
                     <tr>  
                          <td class="auto-style4">Supplier Name</td>  
                          <td class="auto-style4">  
                               &nbsp;<br />
                               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                          </td>  
                          <td class="auto-style4">Item Type</td>  
                          <td class="auto-style4">  
                               &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                          </td>  
                    
                         
                     </tr>
                     
                     <tr>  
                          <td>Company name</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                          </td>  
                          <td>item name</td>  
                          <td>  
                               &nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                           
                          
                     </tr>  
                    
                    
                    
                     <tr>  
                          <td class="auto-style2">mobile number</td>  
                          <td class="auto-style2">  
                               &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                          </td>  
                             <td class="auto-style2">Payment description</td>  
                          <td class="auto-style2">  
                               &nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                          </td>
      </table>
    &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:Button ID="Button1" runat="server" Text="SAVE"  Class="Button1" CssClass="button2" Height="52px" Width="141px" OnClick="Button1_Click" /> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:Button ID="Button4" runat="server" Text="DELETE"  Class="Button1" CssClass="button2" Height="52px" Width="141px" /> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:Button ID="Button2" runat="server" Text="CLEAR"  Class="Button1" CssClass="button2" Height="52px" Width="141px" /> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:Button ID="Button3" runat="server" Text="EDIT"  Class="Button1" CssClass="button2" Height="52px" Width="141px" /> 
     <br />
     <br />

     <asp:Label ID="errmsg" runat="server"></asp:Label>

     <br />

     <br />
   
</asp:Content>


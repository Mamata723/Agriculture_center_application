<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="supp1.aspx.cs" Inherits="WebApplication2.admin.supp1" %>
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
          GridView
         {
             font-family:Arial;
             font-size:20px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
     <form>
        <h1>Supplier list</h1>
    </form>
    <p>
<link href="../stylesheet/employee.css" rel="stylesheet" /><table width="100%">  
    <table width="100%">  
                     <tr>  
                         <td>supplier name</td>  
                        
                          <td class="auto-style3">  
                               <asp:TextBox ID="TextBox1" runat="server" size="25"></asp:TextBox>
                               &nbsp;<br/>
                          </td>  
                           <td>item_type</td>  
                          <td>  
                               <asp:DropDownList ID="supplierTb" runat="server">
                                   <asp:ListItem>seed</asp:ListItem>
                                   <asp:ListItem>fertilizers</asp:ListItem>
                                   <asp:ListItem>bio-fetilizers</asp:ListItem>
                                    <asp:ListItem>onion seeds</asp:ListItem>
                                     <asp:ListItem>vegitables fertilizers</asp:ListItem>
                               </asp:DropDownList>
                          </td>   
                    
                         
                        
                     </tr>
                     
                     <tr>  
                          <td>Company name</td>  
                          <td class="auto-style3">  
                               <asp:TextBox ID="TextBox2" runat="server" size="25"></asp:TextBox>
                               &nbsp;</td>  
                          <td>Item name</td>  
                          <td>  
                               &nbsp;<asp:TextBox ID="TextBox6" runat="server" size="25"></asp:TextBox>
                            
                         
                     </tr>  
                    
                    
                   
                     <tr>  
                          <td>mobile no</td>  
                          <td class="auto-style3">  
                               <asp:TextBox ID="TextBox3" runat="server" size="25"></asp:TextBox>
                               &nbsp;</td>  
                             <td>Description</td>  
                          <td class="auto-style3">  
                               <asp:TextBox ID="TextBox4" runat="server" size="25"></asp:TextBox>
                               &nbsp;</td>
      </table>
   
    &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:Button ID="TT" runat="server" Text="SAVE" OnClick="Button1_Click" Width="67px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:Button ID="Button4" runat="server" Text="EDIT"  Class="Button1" CssClass="button2" Height="52px" Width="126px" OnClick="Button4_Click" /> 

     
         

         <p>

     
         

         <asp:Label ID="errmsg" runat="server"></asp:Label>
         

    

   
    <p>

     
         

        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
     <p>

     
         

         &nbsp;</asp:Content>

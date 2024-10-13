<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="WebApplication2.admin.category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
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
             background-color: #5349d6;
             color: white;
             padding: 15px 32px;
             text-align: center;
             text-decoration: none;
             display: inline-block;
             font-size: 16px;
             margin: 4px 2px 4px 0px;
             cursor: pointer;
             font-size: medium;
             border-radius: 15px;
             box-shadow: 0,white;
         }
         td{
             font-family:Arial;
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
        <h1>Category details</h1>
   
    <p>
<link href="../stylesheet/employee.css" rel="stylesheet" />
        <link href="../stylesheet/gridview.css" rel="stylesheet" />
        <table width="100%"> 
    
                     <tr>  
                         <td>Category name</td>  
                        
                          <td class="auto-style3">  
                               <asp:TextBox ID="CatName" runat="server" size="25"></asp:TextBox>
                               &nbsp;<br />
                          </td>  
                           <td style="font-family: 'Times New Roman', Times, serif">Category Description</td>  
                          <td>  
                               <asp:TextBox ID="TextBox1" runat="server" size="25"></asp:TextBox>
                               &nbsp;</td>   
                    
                       
                     </tr>
                     
                    
      </table>
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<p>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="SAVE" runat="server" Text="SAVE"  Class="Button1" CssClass="button2" Height="52px" Width="126px" OnClick="SAVE_Click" /> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="DELETE" runat="server" Text="DELETE"  Class="Button1" CssClass="auto-style2" Height="52px" Width="140px" OnClick="DELETE_Click" />    
&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="EDIT" runat="server" Text="EDIT"  Class="Button1" CssClass="button2" Height="52px" Width="126px" OnClick="EDIT_Click" /> 
            &nbsp;&nbsp;

   
     
       
        <p>
            &nbsp;<p>
            <asp:Label ID="errMsg" runat="server" ForeColor="White" Font-Size="25px"></asp:Label>  
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
&nbsp;
            <asp:TextBox ID="TextBoxFilter" runat="server" Width="111px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" Text="search" Width="123px" CssClass="button2" Height="51px" OnClick="Button1_Click" />
            <p>
            <asp:GridView runat="server" font-family="Arial" Width="100%" ID="CategoryGV" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CategoryGV_SelectedIndexChanged" CssClass="gridView" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" BorderColor="White" BorderWidth="2px" />
                <EditRowStyle BorderWidth="2px" Font-Size="larger" BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="True" Font-Size="20px" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Size="30px" Font-Bold="true" HorizontalAlign="center"/>
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1"  />
                
                
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                
                
            </asp:GridView>
    </form>
</asp:Content>




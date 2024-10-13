<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="employee.aspx.cs"  Inherits="WebApplication2.admin.employee" %>
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
    <h1>&nbsp;employee list</h1>
    <form>

                <table width="100%">  
                     <tr>  
                          <td>First Name</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox1" runat="server" size="25"></asp:TextBox>
                               <br />
                          </td>  
                          <td>Last name</td>  
                          <td>  
                               &nbsp;<asp:TextBox ID="TextBox4" runat="server" size="25"></asp:TextBox>
                          </td>  
                    
                         
                     </tr>
                     
                     <tr>  
                          <td>Mobile Number</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox2" runat="server" size="25"></asp:TextBox>
                          </td>  
                          <td>address</td>  
                          <td>  
                               &nbsp;<asp:TextBox ID="TextBox5" runat="server" size="25"></asp:TextBox>
                           
                          
                     </tr>  
                    
                    
                    
                     <tr>  
                          <td>paymenmt</td>  
                          <td class="auto-style3">  
                               &nbsp;<asp:TextBox ID="TextBox3" runat="server" size="25"></asp:TextBox>
                          </td>  
                            <td>&nbsp;</td>  
                          <td>  
                              &nbsp;</td>   
      </table>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" Text="SAVE"  Class="Button1" CssClass="button2" Height="52px" Width="141px" OnClick="save_Click" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" Text="DELETE"  Class="Button1" CssClass="button2" Height="52px" Width="141px" OnClick="delete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button3" runat="server" Text="CLEAR"  Class="Button1" CssClass="button2" Height="52px" Width="141px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button4" runat="server" Text="EDIT"  Class="Button1" CssClass="button2" Height="52px" Width="141px" OnClick="Button4_Click" />
                <br />
                <br />
                <asp:Label ID="errMsg" runat="server"></asp:Label>
                <br />
               <asp:GridView runat="server" font-family="Arial" Width="100%" ID="employeeGV" AutoGenerateSelectButton="true"
                
                
                 BorderStyle="Solid" BorderWidth="5px" BorderColor="Window" OnSelectedIndexChanged="employeeGV_SelectedIndexChanged" CssClass="gridView" BackColor="White">
                <AlternatingRowStyle BackColor="pink" BorderColor="White" BorderWidth="2px" ForeColor="White" />
                <EditRowStyle BorderWidth="2px" Font-Size="larger" Font-Bold="true" />
                <HeaderStyle BackColor="#6600CC" ForeColor="White" BorderColor="White" BorderStyle="Solid" Font-Bold="True" Font-Size="20px" />
                <SelectedRowStyle BackColor="#669999" ForeColor="White" Font-Size="30px" Font-Bold="true" HorizontalAlign="center"/>
                <SortedAscendingHeaderStyle BackColor="#686968"  />
                
                
            </asp:GridView>
  <br />
     <br />
    </form>
       
     </asp:Content>

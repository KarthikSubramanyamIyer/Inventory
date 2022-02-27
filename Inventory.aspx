<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="Inventory._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div style="Padding:20px">

       <table class="nav-justified">
           <tr>
               <td colspan="2" style="font-size: x-large; font-weight: bold; color: #333333">Inventory Management ASP.NET&nbsp; </td>
           </tr>
           <tr>
               <td style="width: 455px">
                   <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="ID"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
&nbsp;
                   <asp:Button ID="Button4" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" OnClick="Button4_Click" Text="Get" Width="100px" />
               </td>
           </tr>
           <tr>
               <td style="height: 22px; width: 455px">
                   <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Name"></asp:Label>
               </td>
               <td style="height: 22px">
                   <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 455px">
                   <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Description"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 455px">
                   <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Quantity"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 455px">
                   <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Price"></asp:Label>
&nbsp;</td>
               <td>
                   <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 455px">&nbsp;</td>
               <td>&nbsp; </td>
           </tr>
           <tr>
               <td style="width: 455px">&nbsp;</td>
               <td>
                   <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" Text="Create" Width="100px" />
&nbsp;
                   <asp:Button ID="Button2" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" OnClick="Button2_Click" Text="Edit" Width="100px" />
&nbsp;
                   <asp:Button ID="Button3" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" OnClick="Button3_Click" Text="Delete" Width="100px" />
&nbsp;
                   <asp:Button ID="Button5" runat="server" BackColor="Black" Font-Bold="True" ForeColor="White" OnClick="Button5_Click" Text="Back" Width="100px" />
               </td>
           </tr>
           <tr>
               <td colspan="2">
                   <asp:GridView ID="GridView1" runat="server" Width="985px">
                       <HeaderStyle BackColor="#666666" ForeColor="White" />
                   </asp:GridView>
               </td>
           </tr>
           <tr>
               <td style="width: 455px">&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td style="width: 455px">&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td style="width: 455px">&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
       </table>

    </div>

</asp:Content>

<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 259px; width: 1518px">
    <form id="form1" runat="server">
        <div style="height: 266px; width: 1280px">
          

               <asp:Panel ID="Panel1" runat="server" Height="234px" Width="273px">
                  <p>Username :</p> 
                   <asp:TextBox ID="txtIdPgn" runat="server"></asp:TextBox>
                   <p>Password :</p>
                   <asp:TextBox ID="txtPass" runat="server"></asp:TextBox> 
                       <p style="height: 89px"><asp:Button ID="Button1" runat="server" Text="Login" Width="56px" /> &nbsp; <asp:Button ID="Button2" runat="server" Text="Cancel" />
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mhs_MahasiswaConnectionString %>" ProviderName="<%$ ConnectionStrings:mhs_MahasiswaConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Pengguna]"></asp:SqlDataSource>
                   </p>

               </asp:Panel>
              

        </div>
    </form>
</body>
</html>

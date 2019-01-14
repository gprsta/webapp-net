<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MasterMhs.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 29px">
    <form id="form1" runat="server">
        <div style="height: 35px">
           <asp:Panel ID="Panel1" runat="server" Width="807px">
               <center style="width: 1144px">MASTER MAHASISWA </center> </asp:Panel>
          </div>
        <div style="height: 237px">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Mhs" DataSourceID="SqlDataSource2" Width="1147px" Height="152px">
                <Columns>
                    <asp:BoundField DataField="Id_Mhs" HeaderText="Id Mahasiswa" ReadOnly="True" SortExpression="Id_Mhs" />
                    <asp:BoundField DataField="Nama_Mhs" HeaderText="Nama Mahasiswa" SortExpression="Nama_Mhs" />
                    <asp:BoundField DataField="Fakultas" HeaderText="Fakultas" SortExpression="Fakultas" />
                    <asp:BoundField DataField="Jurusan" HeaderText="Jurusan" SortExpression="Jurusan" />
    
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mhs_MahasiswaConnectionString %>" ProviderName="<%$ ConnectionStrings:mhs_MahasiswaConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Mahasiswa]"></asp:SqlDataSource>
            <p style="width: 1222px">
            <asp:Button ID="Button1" runat="server" Text="ADD" Height="36px" Width="105px" /> &nbsp; 
            <asp:Button ID="Button2" runat="server" Text="UPDATE" Height="36px" Width="105px" /> &nbsp;
            <asp:Button ID="Button3" runat="server" Text="DELETE" Height="36px" Width="105px" />
            </p>
        </div>
    </form>
</body>
</html>

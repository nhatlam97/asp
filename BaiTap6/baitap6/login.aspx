<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="baitap6.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 178px;
        }
        .auto-style3 {
            width: 178px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Đăng nhập</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Tên đăng nhập</td>
                <td>
                    <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mật khẩu</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtMatkhau" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        </div>
        <asp:Button ID="btnDangNhap" runat="server" OnClick="btnDangNhap_Click" Text="Đăng nhập" Width="93px" />
        <asp:SqlDataSource ID="sqlDsSinhVien" runat="server" ConnectionString="<%$ ConnectionStrings:ThueSachDBConnectionString %>" SelectCommand="SELECT * FROM [SinhVien] WHERE (([TenDN] = @TenDN) AND ([MatKhau] = @MatKhau) AND ([Khoa] = @Khoa))">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtTenDN" Name="TenDN" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtMatkhau" Name="MatKhau" PropertyName="Text" Type="String" />
                <asp:Parameter DefaultValue="false" Name="Khoa" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

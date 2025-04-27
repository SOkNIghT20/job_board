<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JobBoardApplication.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><title>Login</title></head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 30px;">
            <h2>Login</h2>

            <asp:Label Text="Username:" runat="server" /><br />
            <asp:TextBox ID="txtUsername" runat="server" /><br /><br />

            <asp:Label Text="Password:" runat="server" /><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /><br /><br />

            <asp:Label Text="Role:" runat="server" /><br />
            <asp:DropDownList ID="ddlRole" runat="server">
                <asp:ListItem Text="Member" Value="member" />
                <asp:ListItem Text="Staff" Value="staff" />
            </asp:DropDownList><br /><br />

            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br /><br />
            <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="Red" />
        </div>
    </form>
</body>
</html>

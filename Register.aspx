<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="JobBoardApplication.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 30px;">
            <h2>Register</h2>

            <asp:Label Text="Account Type:" runat="server" /><br />
            <asp:DropDownList ID="ddlRole" runat="server">
                <asp:ListItem Text="Member" Value="member" />
                <asp:ListItem Text="Staff" Value="staff" />
            </asp:DropDownList><br /><br />

            <asp:Label Text="Username:" runat="server" /><br />
            <asp:TextBox ID="txtUsername" runat="server" /><br /><br />

            <asp:Label Text="Password:" runat="server" /><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /><br /><br />

            <asp:Button ID="btnRegister" runat="server" Text="Create Account" OnClick="btnRegister_Click" /><br /><br />
            <asp:Label ID="lblStatus" runat="server" Font-Bold="true" />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="JobBoardApplication.Admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 30px;">
            <h2>Welcome Admin - Create New Staff Account</h2>

            Username:<br />
            <asp:TextBox ID="txtNewUsername" runat="server" /><br /><br />

            Password:<br />
            <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" /><br /><br />

            <asp:Button ID="btnCreateStaff" runat="server" Text="Create Staff Account" OnClick="btnCreateStaff_Click" /><br /><br />

            <asp:Label ID="lblStatus" runat="server" Font-Bold="true" />
        </div>
    </form>
</body>
</html>

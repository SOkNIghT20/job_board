<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="JobBoardApplication.Staff" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding:30px;">
            <asp:Label ID="lblWelcome" runat="server" Text="" />
            <br /><br />
            <asp:Button ID="btnViewApplications" runat="server" Text="View Applications" OnClick="btnViewApplications_Click" />
            <br /><br />
            <asp:Button ID="btnPostJob" runat="server" Text="Post New Job" OnClick="btnPostJob_Click" />
            <br /><br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>

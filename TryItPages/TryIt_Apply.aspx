<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TryIt_Apply.aspx.cs" Inherits="JobBoardApplication.TryIt_Apply" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TryIt - ApplyToJobs Web Service</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 30px;">
            <h2>📄 Test ApplyToJobs Service</h2>

            Username:<br />
            <asp:TextBox ID="txtUsername" runat="server" /><br /><br />

            Job ID:<br />
            <asp:TextBox ID="txtJobId" runat="server" /><br /><br />

            <asp:Button ID="btnApply" runat="server" Text="Apply" OnClick="btnApply_Click" /><br /><br />

            <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="Green" />
        </div>
    </form>
</body>
</html>

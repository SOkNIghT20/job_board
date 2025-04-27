<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TryIt_Hash.aspx.cs" Inherits="JobBoardApplication.TryIt_Hash" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TryIt - Hash Password</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 18px;">
            <h2>Hash a Password</h2>
            <asp:Label runat="server" Text="Enter password to hash:" /><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="300px" /><br /><br />
            <asp:Button ID="btnHash" runat="server" Text="Hash It" OnClick="btnHash_Click" /><br /><br />
            <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="DarkBlue" />
        </div>
    </form>
</body>
</html>

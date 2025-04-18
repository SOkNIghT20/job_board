<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TryIt_Hash.aspx.cs" Inherits="JobBoardApp.TryIt_Hash" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TryIt - Hash Password</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 30px;">
            <h2>Password Hasher (TryIt)</h2>
            <asp:Label ID="lblPrompt" runat="server" Text="Enter a password to hash:" />
            <br /><br />
            <asp:TextBox ID="txtPassword" runat="server" Width="300px" TextMode="Password" />
            <br /><br />
            <asp:Button ID="btnHash" runat="server" Text="Hash It" OnClick="btnHash_Click" />
            <br /><br />
            <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="Blue" />
        </div>
    </form>
</body>
</html>

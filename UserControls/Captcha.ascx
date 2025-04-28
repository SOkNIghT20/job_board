<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Captcha.ascx.cs" Inherits="JobBoardApplication.Captcha" %>

<div style="border: 1px solid #ccc; padding: 10px; width: 200px;">
    <asp:Label ID="lblPrompt" runat="server" Font-Bold="true" />
    <br /><br />
    <asp:TextBox ID="txtUserInput" runat="server" />
    <asp:Button ID="btnRefresh" runat="server" Text="🔄" OnClick="btnRefresh_Click" ToolTip="Refresh Captcha" />
    <br /><br />
    <asp:Label ID="lblStatus" runat="server" ForeColor="Red" />
</div>

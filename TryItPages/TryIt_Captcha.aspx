<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TryIt_Captcha.aspx.cs" Inherits="JobBoardApplication.TryIt_Captcha" %>
<%@ Register Src="~/Captcha.ascx" TagPrefix="uc" TagName="Captcha" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TryIt - Captcha Component</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 30px;">
            <h2>Captcha Component Test</h2>

            <uc:Captcha ID="CaptchaControl" runat="server" />
            <br />
            <asp:Button ID="btnVerify" runat="server" Text="Verify" OnClick="btnVerify_Click" />
            <br /><br />
            <asp:Label ID="lblResult" runat="server" Font-Bold="true" />
        </div>
    </form>
</body>
</html>

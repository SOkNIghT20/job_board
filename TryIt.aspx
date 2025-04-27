<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TryIt.aspx.cs" Inherits="JobBoard_Sonit.TryIt" %>
<%@ Register Src="~/PreferenceControl.ascx" TagPrefix="uc" TagName="Pref" %>

<!DOCTYPE html>
<html>
<head runat="server">
  <title>Salary Estimator Try‑It</title>
</head>
<body>
  <form id="form1" runat="server">
    <asp:ScriptManager runat="server" ID="sm" />

    <h2>Salary Estimator</h2>
    <asp:Label runat="server" AssociatedControlID="ddlJob" Text="Job Level:" /><br />
    <asp:DropDownList runat="server" ID="ddlJob">
      <asp:ListItem Value="intern">Intern</asp:ListItem>
      <asp:ListItem Value="associate">Associate</asp:ListItem>
      <asp:ListItem Value="manager">Manager</asp:ListItem>
      <asp:ListItem Value="director">Director</asp:ListItem>
    </asp:DropDownList><br /><br />

    <asp:Label runat="server" AssociatedControlID="txtExp" Text="Years of Experience:" /><br />
    <asp:TextBox runat="server" ID="txtExp" /><br /><br />

    <asp:Button runat="server" ID="btnEstimate"
      Text="Estimate Salary"
      OnClick="btnEstimate_Click" /><br /><br />

    <asp:Label runat="server" ID="lblSalary" Font-Size="Large" ForeColor="Blue" />

    <!-- HERE is where your preference control goes -->
    <uc:Pref ID="PrefControl" runat="server" />

  </form>
</body>
</html>
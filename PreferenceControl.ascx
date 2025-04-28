
<%@ Control Language="C#" AutoEventWireup="true"
    CodeBehind="PreferenceControl.ascx.cs"
    Inherits="JobBoard_Sonit.PreferenceControl" %>

<asp:Panel runat="server" CssClass="prefPanel">
  <h3>Job Search Preferences</h3>

  <asp:Label runat="server" Text="Preferred Location:" /><br />
  <asp:DropDownList ID="ddlLocation" runat="server">
    <asp:ListItem Value="Remote">Remote</asp:ListItem>
    <asp:ListItem Value="NY">New York</asp:ListItem>
    <asp:ListItem Value="CA">California</asp:ListItem>
  </asp:DropDownList>
  <br /><br />

  <asp:Label runat="server" Text="Years of Experience:" /><br />
  <asp:TextBox ID="txtYears" runat="server" Width="50px" />
  <br /><br />

  <asp:Button ID="btnSave" runat="server" Text="Save Preferences"
      OnClick="btnSave_Click" />

  <asp:Label ID="lblStatus" runat="server"
      ForeColor="Green" Visible="false" />
</asp:Panel>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="JobBoardApplication.User" %>
<%@ Register Src="~/UserControls/Preference.ascx" TagPrefix="uc" TagName="Preference" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="WelcomeLable" runat="server" />
        <uc:Preference ID="Preference1" runat="server" />
        <div class="">
            <asp:TextBox  ID="JobTitle" runat="server" placeholder="Enter Job Title" CssClass="form-label"/>
        </div>
        <div class="">
            <asp:TextBox ID="Location" runat="server" placeholder="Enter Location" CssClass="form-label"/>
        </div>
        <asp:Button ID="JobButton" runat="server" CssClass="btn btn-primary" Text="Find Jobs" OnClick="JobButton_Click"/>
        <div>
        <table class="table">
             <asp:Repeater ID="MyRepeater" runat="server" OnItemCommand="MyRepeater_ItemCommand">
                 <HeaderTemplate>
                     <tr>
                         <th>Name</th>
                         <th>Title</th>
                         <th>Action</th>
                     </tr>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>
                         <td><%# Eval("name") %></td>
                         <td><%# Eval("job_title") %></td>
                         <td>
                         <asp:Button ID="DetailsBtn"
                                     runat="server"
                                     Text="Apply"
                                     CommandName="ShowDetails"
                                     CommandArgument='<%# Eval("Id") %>' />
                         </td>
                     </tr>
                 </ItemTemplate>
             </asp:Repeater>
         </table>
        </div>
    </form>
</body>
</html>

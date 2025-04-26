<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JobBoardApp._Default" Async="true" %>

<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc" TagName="MyControl" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section>
            <div class="container">
                <h1>Welcome to the Service Directory</h1>
                <p>Try the services below to see how they work</p>
            </div>
        </section>
        <section>
            <div class="container">
                <h5>
                   Job Finder Web Service
                </h5>
                <span class="mb-2">When you submit. This service will query jobs online and add them to our directory for users to find</span>
                <form>
                    <div class="">
                        <asp:TextBox  ID="JobTitle" runat="server" placeholder="Enter Job Title" CssClass="form-label"/>
                    </div>
                    <div class="">
                        <asp:TextBox ID="Location" runat="server" placeholder="Enter Location" CssClass="form-label"/>
                    </div>
                    <asp:Button ID="JobButton" runat="server" CssClass="btn btn-primary" Text="Find Jobs" OnClick="JobButton_Click"/>
                </form>
                <asp:BulletedList ID="List" 
                    runat="server"     
                    DataTextField="DisplayText" />

            </div> 
        </section>
        <section>
            <uc:MyControl ID="MyControl1" runat="server" />
        </section>
        <section>
            <h2>This site has been accessed <%=Application["visitors"] %> times</h2>
        </section>
    </main>

</asp:Content>

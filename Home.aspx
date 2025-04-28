<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JobBoardApplication.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main>
    <section>
         <h1>Job Board - CSE 445 Project</h1>
     <p>
       For our project we chose to do a job board site. My first contribution
       here includes login, registration, and a few components and services I
       have listed below.
     </p>

     <h2>Pages to Try</h2>
     <ul>
       <li><a href="Login.aspx">Login</a></li>
       <li><a href="Register.aspx">Register</a></li>
       <li><a href="TryItPages/TryIt_Hash.aspx">Password Hasher</a></li>
       <li><a href="TryItPages/TryIt_Captcha.aspx">Captcha</a></li>
       <li><a href="TryItPages/TryIt_Apply.aspx">ApplyToJobs</a></li>
     </ul>

     <h2>Component and Service Directory</h2>
     <table>
       <tr>
         <th>Name</th>
         <th>Type</th>
         <th>What it does</th>
         <th>take em for a spin</th>
       </tr>
       <tr>
         <td>PasswordHasher</td>
         <td>DLL</td>
         <td>Hashes passwords</td>
         <td><a href="TryItPages/TryIt_Hash.aspx">Test</a></td>
       </tr>
       <tr>
         <td>Captcha</td>
         <td>User Control</td>
         <td>
           Generates a code that the user has to type to prove they are not a
           bot
         </td>
         <td><a href="TryItPages/TryIt_Captcha.aspx">Test</a></td>
       </tr>
       <tr>
         <td>ApplyToJobs</td>
         <td>Web Service</td>
         <td>Saves a job application to XML</td>
         <td><a href="TryItPages/TryIt_Apply.aspx">Test</a></td>
       </tr>
     </table>
    </section>
</main>
</asp:Content>

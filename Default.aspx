<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JobBoardApplication.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Job Board Project - CSE 445</title>
    <style>
        body {
            font-family: Arial;
            font-size: 14px;
            padding: 30px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
        h1, h2, h3 {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Job Board Web Application - CSE 445</h1>

        <p>Welcome! This page explains all the parts of our Job Board project. Follow the steps below to try everything out easily.</p>

        <h2>How to Test Everything</h2>
        <ul>
            <li>Start by going to <a href="Login.aspx">Login Page</a> and use one of the usernames below.</li>
            <li>Pick the right role (Staff or Member) from the dropdown when logging in.</li>
            <li>After you log in:
                <ul>
                    <li>If you're the admin (TA), you'll be sent to the Admin page to make new staff accounts.</li>
                    <li>Staff users will go to the Staff page.</li>
                    <li>Member users will go to the Member page.</li>
                </ul>
            </li>
            <li>Use the TryIt pages to test services like applying to jobs or estimating salaries.</li>
        </ul>

        <h2>Test Credentials</h2>
        <table>
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Role</th>
                <th>Expected Result</th>
            </tr>
            <tr>
                <td>TA</td>
                <td>Cse445!</td>
                <td>Staff</td>
                <td>Redirects to Admin.aspx</td>
            </tr>
            <tr>
                <td>staff1</td>
                <td>staffpass1</td>
                <td>Staff</td>
                <td>Redirects to Staff.aspx</td>
            </tr>
            <tr>
                <td>member1</td>
                <td>memberpass1</td>
                <td>Member</td>
                <td>Redirects to Member.aspx</td>
            </tr>
        </table>

        <h2>Components</h2>
        <table>
            <tr>
                <th>Component</th>
                <th>Type</th>
                <th>Description</th>
                <th>Try It</th>
            </tr>
            <tr>
                <td>PasswordHasher</td>
                <td>DLL</td>
                <td>Makes passwords more secure by hashing them before saving.</td>
                <td><a href="TryItPages/TryIt_Hash.aspx">TryIt_Hash.aspx</a></td>
            </tr>
            <tr>
                <td>Captcha User Control</td>
                <td>UserControl</td>
                <td>Shows a random 4-digit code that users have to type in to prove they’re not a robot.</td>
                <td><a href="TryItPages/TryIt_Captcha.aspx">TryIt_Captcha.aspx</a></td>
            </tr>
        </table>

        <h2>Web Services</h2>
        <table>
            <tr>
                <th>Service</th>
                <th>Description</th>
                <th>Try It</th>
            </tr>
            <tr>
                <td>ApplyToJobs</td>
                <td>Lets users submit job applications, saves them to a file.</td>
                <td><a href="TryItPages/TryIt_Apply.aspx">TryIt_Apply.aspx</a></td>
            </tr>
            <tr>
                <td>EstimateSalary</td>
                <td>Gives an estimated salary based on the info users enter.</td>
                <td><a href="TryItPages/TryIt_EstimateSalary.aspx">TryIt_EstimateSalary.aspx</a></td>
            </tr>
        </table>

        <h2>Navigation Links</h2>
        <ul>
            <li><a href="Login.aspx">Login Page</a></li>
            <li><a href="Register.aspx">Register Page</a></li>
            <li><a href="Admin.aspx">Admin Page (for TA login only)</a></li>
            <li><a href="Staff.aspx">Staff Page</a></li>
            <li><a href="Member.aspx">Member Page</a></li>
            <li><a href="TryItPages/TryIt_Hash.aspx">PasswordHasher TryIt</a></li>
            <li><a href="TryItPages/TryIt_Captcha.aspx">Captcha TryIt</a></li>
            <li><a href="TryItPages/TryIt_Apply.aspx">ApplyToJobs TryIt</a></li>
            <li><a href="TryItPages/TryIt_EstimateSalary.aspx">EstimateSalary TryIt</a></li>
        </ul>
    </form>
</body>
</html>

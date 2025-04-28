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

        <p>
            <a href="Login.aspx" style="font-size:16px;">Login Here</a> |
            <a href="Register.aspx" style="font-size:16px;">Register a New Account</a>
        </p>

        <h2>How to Test Everything</h2>
        <ul>
            <li>Start by going to the <strong>Login Page</strong> or <strong>Register Page</strong> to make an account.</li>
            <li>Pick the correct role (Staff or Member) when registering or logging in.</li>
            <li>After logging in:
                <ul>
                    <li>If you're the admin (TA), you’ll be sent to the Admin page to create new staff accounts.</li>
                    <li>Staff users will go to the Staff page.</li>
                    <li>Member users will go to the Member page.</li>
                </ul>
            </li>
            <li>Use the TryIt pages to test the services like applying to jobs, searching for jobs, and estimating salaries.</li>
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
                <td>Lets users submit job applications, saves them to Applications.xml.</td>
                <td><a href="TryItPages/TryIt_Apply.aspx">TryIt_Apply.aspx</a></td>
            </tr>
            <tr>
                <td>EstimateSalary</td>
                <td>Gives an estimated salary based on user inputs.</td>
                <td><a href="TryItPages/TryIt_EstimateSalary.aspx">TryIt_EstimateSalary.aspx</a></td>
            </tr>
            <tr>
                <td>SearchJobs</td>
                <td>Allows users to search for jobs based on criteria.</td>
                <td><a href="TryItPages/TryIt_SearchJobs.aspx">TryIt_SearchJobs.aspx</a></td>
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
            <li><a href="TryItPages/TryIt_SearchJobs.aspx">SearchJobs TryIt</a></li>
        </ul>

        <h2>Application and Components Summary Table</h2>

        <p><strong>Percentage of overall contribution:</strong><br />
        Will: 37.5%, Logan: 37.5%, Sonit: 25%</p>

        <p><strong>Deployment URL:</strong><br />
        http://webstrar133.fulton.asu.edu/page2/</p>

        <table>
            <tr>
                <th>Provider Name</th>
                <th>Page/Component Type</th>
                <th>Component Description</th>
                <th>Actual Resources and Methods Used</th>
            </tr>
            <tr>
                <td>Will</td>
                <td>ASPX (Login.aspx)</td>
                <td>Login page with authentication and role-based redirection.</td>
                <td>Session variables, XML reading, PasswordHasher DLL, linked from Default.aspx.</td>
            </tr>
            <tr>
                <td>Will</td>
                <td>ASPX (Staff.aspx)</td>
                <td>Staff user dashboard page.</td>
                <td>Session validation and redirects after login.</td>
            </tr>
            <tr>
                <td>Will</td>
                <td>ASPX (Admin.aspx)</td>
                <td>Admin page for creating new staff users.</td>
                <td>XML writing, PasswordHasher DLL, accessible by TA only.</td>
            </tr>
            <tr>
                <td>Will & Logan</td>
                <td>UserControl (Captcha)</td>
                <td>Simple captcha that generates and validates a random code.</td>
                <td>ASP.NET User Control, Session storage, used in registration/login pages.</td>
            </tr>
            <tr>
                <td>Will</td>
                <td>DLL (PasswordHasher)</td>
                <td>Securely hashes user passwords with SHA-256.</td>
                <td>C# Class Library, linked in web application.</td>
            </tr>
            <tr>
                <td>Logan</td>
                <td>ASPX (Default.aspx)</td>
                <td>Navigation page linking all pages and services together.</td>
                <td>HTML, CSS, C# behind Default.aspx.</td>
            </tr>
            <tr>
                <td>Logan</td>
                <td>ASPX (Member.aspx)</td>
                <td>Landing page for member users after login.</td>
                <td>Session reading and redirects after login.</td>
            </tr>
            <tr>
                <td>Logan</td>
                <td>SVC (ApplyToJobs.svc)</td>
                <td>Web service for submitting job applications.</td>
                <td>XML file writing, tested via TryIt_Apply.aspx.</td>
            </tr>
            <tr>
                <td>Sonit</td>
                <td>SVC (EstimateSalary.svc)</td>
                <td>Web service that estimates salary based on input info.</td>
                <td>WCF service, tested via TryIt_EstimateSalary.aspx.</td>
            </tr>
            <tr>
                <td>Sonit</td>
                <td>ASCX (PreferenceControl.ascx)</td>
                <td>Stores user preferences using cookies.</td>
                <td>ASP.NET User Control and HTTP cookies.</td>
            </tr>
            <tr>
                <td>Sonit</td>
                <td>SVC (SearchJobs.svc)</td>
                <td>Web service for searching jobs based on filters.</td>
                <td>WCF service, tested via TryIt_SearchJobs.aspx.</td>
            </tr>
        </table>
    </form>
</body>
</html>

using System;
using System.IO;
using System.Xml;
using AuthLibrary;

namespace JobBoardApplication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string role = ddlRole.SelectedValue;

            // Loads the right XML file depending on the role selected
            string filePath = Server.MapPath($"~/XML/{(role == "staff" ? "Staff.xml" : "Member.xml")}");

            // Checks if the XML file actually exists before trying to read it
            if (!File.Exists(filePath))
            {
                lblResult.Text = "User file not found.";
                return;
            }

            XmlDocument doc = new XmlDocument();
            doc.Load(filePath);

            // Trys to find the user with the username given
            XmlNode userNode = doc.SelectSingleNode($"//User[Username='{username}']");
            if (userNode != null)
            {
                // Compares entered password with hashed password on file
                string storedHash = userNode["PasswordHash"].InnerText;
                if (PasswordHasher.VerifyPassword(password, storedHash))
                {
                    // Saves user info in session and shows success message
                    Session["username"] = username;
                    Session["role"] = role;
                    lblResult.ForeColor = System.Drawing.Color.Green;
                    lblResult.Text = $"Login successful as {role.ToUpper()}";
                }
                else
                {
                    lblResult.Text = "Invalid password.";
                }
            }
            else
            {
                lblResult.Text = "Username not found.";
            }
        }
    }
}

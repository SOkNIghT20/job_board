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

            // Determine which file to load based on selected role
            string filePath = Server.MapPath(role == "staff" ? "~/XML/Staff.xml" : "~/XML/Member.xml");

            // Check if file exists
            if (!File.Exists(filePath))
            {
                lblResult.Text = "User file not found.";
                return;
            }

            // Load the XML file
            XmlDocument doc = new XmlDocument();
            doc.Load(filePath);

            // Look for the username inside the correct XML
            XmlNode userNode = doc.SelectSingleNode($"//User[Username='{username}']");
            if (userNode != null)
            {
                // Found the user, now verify password
                string storedHash = userNode["PasswordHash"].InnerText;
                if (PasswordHasher.VerifyPassword(password, storedHash))
                {
                    // Password is correct
                    Session["username"] = username;
                    Session["role"] = role;

                    // Now redirect based on role and user type
                    if (role == "staff")
                    {
                        if (username.ToLower() == "ta")
                        {
                            Response.Redirect("~/Admin.aspx"); // Admin (TA) goes to Admin.aspx
                        }
                        else
                        {
                            Response.Redirect("~/Staff.aspx"); // Normal staff goes to Staff.aspx
                        }
                    }
                    else if (role == "member")
                    {
                        Response.Redirect("~/Member.aspx"); // Members go to Member.aspx
                    }
                }
                else
                {
                    // Password doesn't match
                    lblResult.ForeColor = System.Drawing.Color.Red;
                    lblResult.Text = "Invalid password.";
                }
            }
            else
            {
                // Username not found
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Username not found.";
            }
        }
    }
}

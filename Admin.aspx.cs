using System;
using System.IO;
using System.Xml;
using AuthLibrary;

namespace JobBoardApplication
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Protect page: only Admin (TA) can access
            if (Session["username"] == null || Session["username"].ToString().ToLower() != "ta")
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void btnCreateStaff_Click(object sender, EventArgs e)
        {
            string newUsername = txtNewUsername.Text.Trim();
            string newPassword = txtNewPassword.Text.Trim();

            string filePath = Server.MapPath("~/XML/Staff.xml");

            XmlDocument doc = new XmlDocument();

            if (!File.Exists(filePath))
            {
                XmlDeclaration dec = doc.CreateXmlDeclaration("1.0", "utf-8", null);
                doc.AppendChild(dec);
                XmlElement root = doc.CreateElement("Staff");
                doc.AppendChild(root);
                doc.Save(filePath);
            }

            doc.Load(filePath);

            // Check if staff username already exists
            XmlNode existing = doc.SelectSingleNode($"//User[Username='{newUsername}']");
            if (existing != null)
            {
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "Username already exists.";
                return;
            }

            string hashedPassword = PasswordHasher.HashPassword(newPassword);

            XmlElement user = doc.CreateElement("User");

            XmlElement uname = doc.CreateElement("Username");
            uname.InnerText = newUsername;

            XmlElement pass = doc.CreateElement("PasswordHash");
            pass.InnerText = hashedPassword;

            user.AppendChild(uname);
            user.AppendChild(pass);
            doc.DocumentElement.AppendChild(user);

            doc.Save(filePath);

            lblStatus.ForeColor = System.Drawing.Color.Green;
            lblStatus.Text = "Staff account created successfully!";
        }
    }
}

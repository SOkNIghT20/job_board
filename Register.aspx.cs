using System;
using System.IO;
using System.Xml;
//using AuthLibrary;

namespace JobBoardApplication
{
    public partial class Register : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string role = ddlRole.SelectedValue;

            string fileName = role == "staff" ? "Staff.xml" : "Member.xml";
            string filePath = Server.MapPath($"~/XML/{fileName}");
            string rootTag = role == "staff" ? "Staff" : "Members";

            XmlDocument doc = new XmlDocument();

            // Create file if it doesn't exist
            if (!File.Exists(filePath))
            {
                XmlDeclaration dec = doc.CreateXmlDeclaration("1.0", "utf-8", null);
                doc.AppendChild(dec);
                XmlElement root = doc.CreateElement(rootTag);
                doc.AppendChild(root);
                doc.Save(filePath);
            }

            doc.Load(filePath);

            // Check for duplicates
            XmlNode existing = doc.SelectSingleNode($"//User[Username='{username}']");
            if (existing != null)
            {
                lblStatus.Text = "Username already exists.";
                return;
            }

            //string hash = PasswordHasher.HashPassword(password);

            XmlElement user = doc.CreateElement("User");

            XmlElement uname = doc.CreateElement("Username");
            uname.InnerText = username;

            XmlElement pass = doc.CreateElement("PasswordHash");
            //pass.InnerText = hash;

            user.AppendChild(uname);
            user.AppendChild(pass);
            doc.DocumentElement.AppendChild(user);

            doc.Save(filePath);

            lblStatus.ForeColor = System.Drawing.Color.Green;
            lblStatus.Text = $"{role.ToUpper()} account created!";
        }
    }
}

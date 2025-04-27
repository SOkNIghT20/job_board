using System;
using AuthLibrary;

namespace JobBoardApplication
{
    public partial class TryIt_Hash : System.Web.UI.Page
    {
        protected void btnHash_Click(object sender, EventArgs e)
        {
            // Gets the raw password input
            string plain = txtPassword.Text;

            // Hashs it using the DLL
            string hash = PasswordHasher.HashPassword(plain);

            // Displays the hashed value
            lblResult.Text = $"Hashed value:<br/>{hash}";
        }
    }
}

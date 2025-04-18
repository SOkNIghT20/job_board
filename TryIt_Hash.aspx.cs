using System;
using AuthLibrary; // Reference to DLL

namespace JobBoardApp
{
    public partial class TryIt_Hash : System.Web.UI.Page
    {
        protected void btnHash_Click(object sender, EventArgs e)
        {
            string input = txtPassword.Text;
            string hashed = PasswordHasher.HashPassword(input);
            lblResult.Text = $"Hashed Password:<br/>{hashed}";
        }
    }
}

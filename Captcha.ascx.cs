using System;

namespace JobBoardApplication
{
    public partial class Captcha : System.Web.UI.UserControl
    {
        private const string CaptchaSessionKey = "CaptchaCode";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Only generate a new captcha if this is the first page load
            if (!IsPostBack)
                GenerateCaptcha();
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            // Regenerates captcha and clears any error messages
            GenerateCaptcha();
            lblStatus.Text = "";
        }

        private void GenerateCaptcha()
        {
            // Generates a random 4 digit code and store it in session
            Random rand = new Random();
            int code = rand.Next(1000, 9999);
            lblPrompt.Text = $"Enter this code: <b>{code}</b>";
            Session[CaptchaSessionKey] = code.ToString();
        }

        // Checks if the user's input matches the captcha code
        public bool IsCaptchaValid()
        {
            string expected = Session[CaptchaSessionKey]?.ToString();
            return txtUserInput.Text.Trim() == expected;
        }

        // Shows an error message if captcha is wrong
        public void ShowError()
        {
            lblStatus.Text = "Captcha failed!";
        }
    }
}

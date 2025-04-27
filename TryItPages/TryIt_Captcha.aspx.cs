using System;

namespace JobBoardApplication
{
    public partial class TryIt_Captcha : System.Web.UI.Page
    {
        protected void btnVerify_Click(object sender, EventArgs e)
        {
            // Checks if users input matches the captcha
            if (CaptchaControl.IsCaptchaValid())
            {
                lblResult.ForeColor = System.Drawing.Color.Green;
                lblResult.Text = "Correct!";
            }
            else
            {
                // Shows error message if the captcha failed
                CaptchaControl.ShowError();
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Try again!";
            }
        }
    }
}

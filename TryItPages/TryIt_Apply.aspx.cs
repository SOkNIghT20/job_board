using System;
using JobBoardApp.Services;

namespace JobBoardApplication
{
    public partial class TryIt_Apply : System.Web.UI.Page
    {
        protected void btnApply_Click(object sender, EventArgs e)
        {
            // Grabs input from the textboxes
            string username = txtUsername.Text.Trim();
            string jobId = txtJobId.Text.Trim();

            // Calls the ApplyToJobs service with given inputs
            var service = new ApplyToJobs();
            string result = service.Apply(username, jobId);

            // confirmation or error
            lblResult.Text = result;
        }
    }
}

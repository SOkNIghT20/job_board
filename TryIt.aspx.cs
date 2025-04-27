
using System;
using JobBoard_Sonit.SalarySvc;   // <-- your service reference namespace

namespace JobBoard_Sonit
{
    public partial class TryIt : System.Web.UI.Page
    {
        protected void btnEstimate_Click(object sender, EventArgs e)
        {
            // parse inputs
            string job = ddlJob.SelectedValue;
            if (!int.TryParse(txtExp.Text, out int yrs))
            {
                lblSalary.Text = "Invalid years of experience.";
                return;
            }

            // call WCF proxy
            var client = new SalaryEstimatorClient();
            decimal salary = client.EstimateSalary(job, yrs);

            // show result
            lblSalary.Text = salary.ToString("C0");

            // clean up
            if (client.State == System.ServiceModel.CommunicationState.Opened)
                client.Close();
        }
    }
}
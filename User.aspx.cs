using JobBoardApp.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobBoardApplication
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WelcomeLable.Text = $"Welcome {Session["Username"]}";
            if (Session["Pref_Location"] != null)
            {
                Location.Text = Session["Pref_Location"].ToString();
            }
        }

        protected void JobButton_Click(object sender, EventArgs e)
        {
            // Handle button click event
            var jobTitle = JobTitle.Text;
            var location = Location.Text;
            var client = new JobSearch2.ServiceClient();
            var jobs = client.FindJobs(jobTitle, location);
            List<BasicJobInfo> jobList = new List<BasicJobInfo>();
            foreach (var job in jobs)
            {
                jobList.Add(new BasicJobInfo(job.job_title, job.employer_name));
            }
            MyRepeater.DataSource = jobList;
            MyRepeater.DataBind();
        }

        protected void MyRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            // Handle item command event
            if (e.CommandName == "Apply")
            {
                // Logic to apply for the job
                string jobId = Convert.ToString(e.CommandArgument);
                // Grabs input from the textboxes

                // Calls the ApplyToJobs service with given inputs
                var service = new ApplyToJobs();
                string username = Session["Username"] as string;
                string result = service.Apply(username, jobId);

            }
        }

        public class BasicJobInfo
        {
            public string Name { get; set; }
            public string Job_title { get; set; }

            public int Id { get; set; }

            public BasicJobInfo(string name, string job_title)
            {
                Random rand = new Random();
                this.Name = name;
                this.Job_title = job_title;
                this.Id = rand.Next(100, 1000);
            }

            public string DisplayText
            {
                get { return string.Format("{0} at {1}", Job_title, Name); }
            }

        }
    }
}
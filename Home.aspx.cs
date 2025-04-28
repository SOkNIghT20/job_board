using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobBoardApplication
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            List.DataSource = jobList;
            List.DataBind();
        }
        public class BasicJobInfo
        {
            public string name { get; set; }
            public string job_title { get; set; }

            public BasicJobInfo(string name, string job_title)
            {
                this.name = name;
                this.job_title = job_title;
            }

            public string DisplayText
            {
                get { return string.Format("{0} at {1}", job_title, name); }
            }

        }

    }

}
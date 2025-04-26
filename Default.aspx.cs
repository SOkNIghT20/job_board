using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Serialization;
using JobBoardApp.JobSearch;
using Newtonsoft.Json;


namespace JobBoardApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void JobButton_Click(object sender, EventArgs e)
        {
            // Handle button click event
            var jobTitle = JobTitle.Text;
            var location = Location.Text;
            var client = new JobSearch.ServiceClient();
            var jobs = client.FindJobs(jobTitle, location);
            List<BasicJobInfo> jobList = new List<BasicJobInfo>();
            foreach (var job in jobs)
            {
                jobList.Add(new BasicJobInfo(job.job_title, job.employer_name));
            }
            List.DataSource = jobList;
            List.DataBind();
        }
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
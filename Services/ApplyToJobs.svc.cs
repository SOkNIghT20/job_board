using System;
using System.Web;
using System.Xml;
using System.IO;

namespace JobBoardApp.Services
{
    public class ApplyToJobs : IApplyToJobs
    {
        public string Apply(string username, string jobId)
        {
            string path = HttpContext.Current.Server.MapPath("~/XML/Applications.xml");

            XmlDocument doc = new XmlDocument();
            if (!File.Exists(path))
            {
                XmlDeclaration dec = doc.CreateXmlDeclaration("1.0", "utf-8", null);
                doc.AppendChild(dec);
                XmlElement root = doc.CreateElement("Applications");
                doc.AppendChild(root);
                doc.Save(path);
            }

            doc.Load(path);

            XmlElement app = doc.CreateElement("Application");

            XmlElement user = doc.CreateElement("Username");
            user.InnerText = username;

            XmlElement job = doc.CreateElement("JobID");
            job.InnerText = jobId;

            XmlElement date = doc.CreateElement("Date");
            date.InnerText = DateTime.Now.ToString("yyyy-MM-dd");

            app.AppendChild(user);
            app.AppendChild(job);
            app.AppendChild(date);
            doc.DocumentElement.AppendChild(app);

            doc.Save(path);

            return "Application submitted!";
        }
    }
}

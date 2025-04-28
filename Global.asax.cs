using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace JobBoardApplication
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup

        }

        void Application_BeginRequest(object sender, EventArgs e)
        {
            string path = Request.Path.ToLower();

            if (path.EndsWith(".aspx")) // Only count page loads
            {
                Application.Lock();
                Application["visitors"] = Application["visitors"] == null ? 1 : (int)Application["visitors"] + 1;
                Application.UnLock();
            }
        }

    }
}
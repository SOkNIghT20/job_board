<<<<<<< HEAD
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace JobBoardApp
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
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
=======
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace JobBoard_Sonit
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
        }
    }
>>>>>>> 7547b5707d091a41b6546f231d37bbf9be8d8c3a
}
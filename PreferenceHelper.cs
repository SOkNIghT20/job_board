
using System;
using System.Web;

namespace PreferencesManager
{
    public static class PreferenceHelper
    {
        public static void Save(string location, string years)
        {
            // Session
            HttpContext.Current.Session["Pref_Location"] = location;
            HttpContext.Current.Session["Pref_Years"] = years;

            // Cookie
            var c = new HttpCookie("JobPrefs")
            {
                ["Location"] = location,
                ["Years"] = years,
                Expires = DateTime.Now.AddDays(30)
            };
            HttpContext.Current.Response.Cookies.Add(c);
        }

        public static (string Location, string Years) Load()
        {
            // Try Session
            var sessLoc = HttpContext.Current.Session["Pref_Location"] as string;
            var sessYrs = HttpContext.Current.Session["Pref_Years"] as string;
            if (sessLoc != null && sessYrs != null)
                return (sessLoc, sessYrs);

            // Fallback to Cookie
            var c = HttpContext.Current.Request.Cookies["JobPrefs"];
            if (c != null)
                return (c["Location"], c["Years"]);

            // Defaults
            return (null, null);
        }
    }
}

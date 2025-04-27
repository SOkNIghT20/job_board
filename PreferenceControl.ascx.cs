
using System;
using System.Web;
using System.Web.UI;

namespace JobBoard_Sonit
{
    public partial class PreferenceControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadPreferences();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Save into session + cookie
            Session["Pref_Location"] = ddlLocation.SelectedValue;
            Session["Pref_Years"] = txtYears.Text;

            var cookie = new HttpCookie("JobPrefs")
            {
                ["Location"] = ddlLocation.SelectedValue,
                ["Years"] = txtYears.Text,
                Expires = DateTime.Now.AddDays(30)
            };
            Response.Cookies.Add(cookie);

            lblStatus.Text = "Preferences saved!";
            lblStatus.Visible = true;
        }

        private void LoadPreferences()
        {
            // Try Session
            if (Session["Pref_Location"] != null)
            {
                ddlLocation.SelectedValue = Session["Pref_Location"].ToString();
                txtYears.Text = Session["Pref_Years"].ToString();
                return;
            }

            // Fallback to Cookie
            var cookie = Request.Cookies["JobPrefs"];
            if (cookie != null)
            {
                ddlLocation.SelectedValue = cookie["Location"];
                txtYears.Text = cookie["Years"];
            }
        }
    }
}
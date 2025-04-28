using System;

namespace JobBoardApplication
{
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if user is logged in and is a staff
            if (Session["role"] == null || Session["role"].ToString() != "staff")
            {
                Response.Redirect("~/Login.aspx");
            }

            if (!IsPostBack)
            {
                lblWelcome.Text = $"Welcome {Session["username"]}! You are logged in as STAFF.";
            }
        }

        protected void btnViewApplications_Click(object sender, EventArgs e)
        {
            // Example placeholder: Later, this could redirect to a page showing job applications
            Response.Redirect("~/TryItPages/TryIt_Apply.aspx");
        }

        protected void btnPostJob_Click(object sender, EventArgs e)
        {
            // Example placeholder: Could later redirect to a page to post new jobs
            Response.Write("<script>alert('Post New Job functionality coming soon!');</script>");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Login.aspx");
        }
    }
}

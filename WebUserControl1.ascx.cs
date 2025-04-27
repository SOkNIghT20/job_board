 using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobBoardApp
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected async void captchaSubmit_Click(object sender, EventArgs e)
        {
            // Handle button click event
            var captchaResponseText = captchaResponse.Value;
            var client = new HttpClient();
            var uri = new Uri("https://www.google.com/recaptcha/api/siteverify");

            var values = new Dictionary<string, string>
            {
                { "secret", "6Ld9KB4rAAAAAOQPYBEVPXhtUOoVyK8Q8YWls9F9" },
                { "response", captchaResponseText }
            };
            var content = new FormUrlEncodedContent(values);

            HttpResponseMessage response = await client.PostAsync(uri, content);
            response.EnsureSuccessStatusCode();
            var responseString = await response.Content.ReadAsStringAsync();
        }
    }
}
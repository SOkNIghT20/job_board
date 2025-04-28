<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CaptchaForm.ascx.cs" Inherits="JobBoardApplication.CaptchaForm" %>
<section>
    <div class="container">
        <h5>
            Captcha
        </h5>
            <div class="g-recaptcha" data-sitekey="6Ld9KB4rAAAAAFga54U8aY0Fz5ExYQKeY1D4Noz-"></div>
            <br/>
            <asp:HiddenField ID = "captchaResponse" runat="server" />
            <asp:Button
                ID = "captchaSubmit"
                runat = "server"
                Text= "Submit"
                OnClientClick="return onCaptchaCheck();"
                />       
    </div>
</section>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script>
    function onCaptchaCheck() {
        const response = grecaptcha.getResponse();
        document.getElementById('<%= captchaResponse.ClientID %>').value = response
        return true
    }
</script>
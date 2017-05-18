<%@ page import="net.tanesha.recaptcha.ReCaptcha"%>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory"%>
 
<html>
<body>
<form action="process.jsp" method="post">
        <%
          //ReCaptcha c = ReCaptchaFactory.newReCaptcha("your_public_key", "your_private_key", false);
          ReCaptcha captcha = ReCaptchaFactory.newReCaptcha("6LdC8yEUAAAAAAPff0IkHr3xcs37qdG-GntGNFv7", "6LdC8yEUAAAAAPcCHPNJmS_5eEqLKIO97QH7VHxa", false);
          out.print(captcha.createRecaptchaHtml(null, null));
        %>
        <input type="submit" value="submit" />
    </form>
</body>
</html>
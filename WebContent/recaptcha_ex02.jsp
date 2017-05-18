<%@ page import="net.tanesha.recaptcha.ReCaptcha"%>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory"%>

<html>
<body>
	<script src="https://www.google.com/recaptcha/api.js" async defer></script>
	<form action="?" method="POST">
		<div class="g-recaptcha"
			data-sitekey="6LdC8yEUAAAAAAPff0IkHr3xcs37qdG-GntGNFv7"></div>
		<br /> <input type="submit" value="Submit">
	</form>
</body>
</html>
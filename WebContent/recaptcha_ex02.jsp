<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="net.tanesha.recaptcha.ReCaptcha"%>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory"%>

<html>
<script>
function imNotARobot() {
	document.getElementById("Submitgo").disabled = false;
	document.getElementById("Submitgo").value = "submit";
}
</script>

<body>
<font color='red' size='10'>${errorMSG.overAllMSG}</font><BR>
	<script src="https://www.google.com/recaptcha/api.js" async defer></script>
	<form action="RecaptchaServlet" method="post">
		<div class="g-recaptcha"data-callback="imNotARobot" data-sitekey="6LdC8yEUAAAAAAPff0IkHr3xcs37qdG-GntGNFv7"></div>
		<br /> 
		<input type="submit" value="Please pass the verification" id="Submitgo" disabled>
	</form>




</body>
</html>
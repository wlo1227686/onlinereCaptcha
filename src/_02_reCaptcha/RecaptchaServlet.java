package _02_reCaptcha;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RecaptchaServlet
 */
@WebServlet("/RecaptchaServlet")
public class RecaptchaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		checkLogin(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		checkLogin(request, response);

	}

	public void checkLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException,  IOException {
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
		System.out.println(gRecaptchaResponse);
		Map<String, String> errorMessage = new HashMap<String, String>();
		request.setAttribute("errorMSG", errorMessage);
		boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);

		if (verify) {
			RequestDispatcher rd = request.getRequestDispatcher("ex02/LoginSuccess.jsp");
			rd.forward(request, response);
		} else {
			errorMessage.put("overAllMSG", "驗證失敗");
			RequestDispatcher rd = request.getRequestDispatcher("recaptcha_ex02.jsp");
			rd.forward(request, response);
		}
		return;
	}
}

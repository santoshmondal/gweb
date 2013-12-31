package backbutton;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		Boolean auth = (Boolean) session.getAttribute("AUTH");
		if (null != auth && auth) {
			response.sendRedirect("backbuttontest/inbox.jsp");
		}

		String fname = request.getParameter("fname");
		if (null != fname && fname.equalsIgnoreCase("java")) {
			session.setAttribute("AUTH", true);
			response.sendRedirect("backbuttontest/inbox.jsp");
		} else {
			response.sendRedirect("backbuttontest/login.jsp");
		}
	}
}

package function.login.google.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.admin.AccountDAO;
import dao.guest.LoginDAO;
import function.login.google.common.GooglePojo;
import function.login.google.common.GoogleUtils;
import model.User;

@WebServlet("/login-google")
public class LoginGoogleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginGoogleServlet() {
		super();
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String code = request.getParameter("code");
		String accessToken = GoogleUtils.getToken(code);
		GooglePojo user = GoogleUtils.getUserInfo(accessToken);

		String account = user.getEmail();
		String role = "User";

		LoginDAO dao = new LoginDAO();
		User a = dao.getUserByEmail(account);
		if (a == null) {
			dao.addEmailToAccount(account, role);
			User ggaccount = dao.getUserByEmail(account);

			dao.addEmailToAccount(account, String.valueOf(ggaccount.getId()));

			HttpSession session = request.getSession();
			session.setAttribute("acc", ggaccount);
			((HttpSession) session).setMaxInactiveInterval(900);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("acc", a);
			session.setMaxInactiveInterval(900);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code = request.getParameter("code");
		GoogleUtils googleUtils = new GoogleUtils();
		if (code == null || code.isEmpty()) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		} else {
			String accessToken = GoogleUtils.getToken(code);
			GooglePojo list = googleUtils.getUserInfo(accessToken);
			request.setAttribute("id", list.getId());
			request.setAttribute("name", list.getName());
			request.setAttribute("email", list.getEmail());
			RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
			dis.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.login;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/register")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		login user = new login();
		String operation = request.getParameter("operation");
		RequestDispatcher dis = null;
		HttpSession session = request.getSession();
		try {
			if (operation.equals("login")) {
				String username = request.getParameter("email");
				String password = request.getParameter("password");
				String out = user.loginverify(username, password);
				request.setAttribute("status", out);
				
				if (!out.equals("false")) {
					session.setAttribute("name", user.getusername(username));
					session.setAttribute("email", username);
					dis = request.getRequestDispatcher("home.jsp");
				} else
					dis = request.getRequestDispatcher("login.jsp");

			} else if (operation.equals("signup")) {

				String username = request.getParameter("username");
				String password = request.getParameter("password");
				String email = request.getParameter("email");

				String out = user.insert(email, username, password);
				request.setAttribute("status", out);
				if (!out.equals("false"))
					dis = request.getRequestDispatcher("login.jsp");
				else
					dis = request.getRequestDispatcher("signup.jsp");

			}
			else if (operation.equals("forgot")) {
				String password = request.getParameter("password");
				String email = request.getParameter("email");

				String out = user.updatePassword(email, password);
				request.setAttribute("status", out);
				if (!out.equals("false"))
					dis = request.getRequestDispatcher("login.jsp");

			}
			else if (operation.equals("blogsubmit")) {
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				
				//System.out.println(session.getAttribute("email")+" "+session.getAttribute("name"));
				String out = user.insertblog(title,content,(String)session.getAttribute("email"),(String)session.getAttribute("name"));
				request.setAttribute("status", out);
					dis = request.getRequestDispatcher("createblog.jsp");

			}
				 
			dis.forward(request, response);
		} catch (Exception e) {

		}
	}

}

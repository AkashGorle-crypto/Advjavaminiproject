package example.serlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String USERNAME = "baby";
	private static final String PASSWORD="1234";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equals(USERNAME) && password.equals(PASSWORD)) {
			Cookie cookie = new Cookie("username", username);
//			cookie.setMaxAge(10);
			response.addCookie(cookie);
			
			response.sendRedirect("add_baby.jsp");

		}
		
		else {
			response.sendRedirect("login.jsp?message=Either username or password is wrong");
			
			
		}
		
	}

}

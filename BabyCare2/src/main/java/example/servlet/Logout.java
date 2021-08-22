package example.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Cookie [] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie c:cookies){
				if(c.getName().equals("username")){
					c.setMaxAge(0);
					response.addCookie(c);
					response.sendRedirect("login.jsp?message=Logged out Successfully");
				}
			}
		}
		
	}

}

package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Check_login;

/**
 * Servlet implementation class loginn
 */

@WebServlet("/log")
public class loginn extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Student_id=request.getParameter("st");
		String password= request.getParameter("ps");
		
		
		boolean f= Check_login.check(Student_id,password);
		
		HttpSession s= request.getSession();
		
		if(f==true) {
			s.setAttribute("id", Student_id);
			response.sendRedirect("profile.jsp");
		}else {
			s.setAttribute("msg", "invalid password or id");
			response.sendRedirect("login.jsp");
		}
		
	}

}

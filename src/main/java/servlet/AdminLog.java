package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Check_Admin;
import entity.Admin;

/**
 * Servlet implementation class AdminLog
 */

@WebServlet("/logA")
public class AdminLog extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email= request.getParameter("ae");
		String pass= request.getParameter("ps");
		
		Boolean f= Check_Admin.a(email,pass);
		HttpSession s= request.getSession();
		
		if(f== true) {
		
			response.sendRedirect("Admin.jsp");
		}
		else {
			s.setAttribute("msg0", "invalid input");
			response.sendRedirect("loginA.jsp");
		}
		
		
		
	}

}

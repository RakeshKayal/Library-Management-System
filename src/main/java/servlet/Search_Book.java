package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Search_Book
 */

@WebServlet("/searchB")
public class Search_Book extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String TOA=request.getParameter("toa");
		
		HttpSession s= request.getSession();
		s.setAttribute("toa", TOA);
		response.sendRedirect("bookSearch.jsp");
		
		
	}

}

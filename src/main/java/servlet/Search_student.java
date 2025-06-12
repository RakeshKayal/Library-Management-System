package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Search_student
 */

@WebServlet("/searchS")
public class Search_student extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Search_st= request.getParameter("Search_st");
		HttpSession s= request.getSession();
		s.setAttribute("search_s", Search_st);
		response.sendRedirect("studentSearch.jsp");
		
		
	}

}

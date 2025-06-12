package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Book_Reg;
import dataGenerator.BookId;
import entity.Book;

/**
 * Servlet implementation class addBook
 */

@WebServlet("/Bookreg")
public class addBook extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title= request.getParameter("name");
		String author=request.getParameter("Author");
		String genre= request.getParameter("genre");
		String status=request.getParameter("status");
		String B_id=BookId.getid();
		
		Book b= new Book(B_id,title,author,genre,status);
		
		boolean f= Book_Reg.BookRegister(b);
		
		HttpSession s= request.getSession();
		if(f==true) {
			s.setAttribute("msg", "successfully register and "+ B_id + "  this is the id of the book");
			response.sendRedirect("Addbook.jsp");
			
			
		}else {
			s.setAttribute("msg", "some problem occurs ! Try again later");
			
			response.sendRedirect("Addbook.jsp");
			
		}
	
	}

}

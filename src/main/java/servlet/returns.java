package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Book_return;
import entity.Book;
import entity.libary_Issue_Book;
import entity.student;

/**
 * Servlet implementation class returns
 */
@WebServlet("/return")
public class returns extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentId= request.getParameter("st");
		String BookId=request.getParameter("Bo");
		
		
		student s= Book_return.exitss(studentId);
		Book bs= Book_return.got(BookId);
		//libary_Issue_Book l= Book_return.exits(bs);
		HttpSession s1= request.getSession();
		
          if(s!=null && bs!=null) {
	
        	  libary_Issue_Book l= Book_return.exits(s,bs);
        	  
        	  if(l!= null) {
        		  
        		  boolean f= Book_return.returns(l,bs);
        		  
        		  if(f== true) {
        			  s1.setAttribute("msg2", "return successfully");
        			  response.sendRedirect("return.jsp");
        			 
        		  }else {
        			  s1.setAttribute("msg2", "faield to return");
        			  response.sendRedirect("return.jsp");
        		  }
        		  
        	  }
        	  
          }
		
		
		
	}

}

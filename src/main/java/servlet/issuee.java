package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Book_Issuee;
import entity.Book;
import entity.Department;
import entity.libary_Issue_Book;
import entity.student;

/**
 * Servlet implementation class issuee
 */
@WebServlet("/issuees")
public class issuee extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String S_id = request.getParameter("stid");
		String B_id=request.getParameter("bId");
		String D=request.getParameter("department");
		
		System.out.println(D);
		
		
		student s=Book_Issuee.exitS(S_id);
		Book b= Book_Issuee.exitB(B_id);
		Department d= Book_Issuee.exitD(D);
		
//		if(s==null) {
//			System.out.println("s");
//		}
//		else if(b==null) {
//			System.out.println("b");
//		}
//		else if(d==null) {
//			System.out.println("d");
//		}
//		else {
//			System.out.println("ok");
//		}
		
		
		  HttpSession session = request.getSession();
		  
				
			if(s!=null && b!=null && d!=null) {
					String ds=s.getDepartment().getName();
				
					if(ds.equals(d.getName())) {
						System.out.println("true");
					libary_Issue_Book l= new libary_Issue_Book(b, s, d);
	
					 boolean isIssued = Book_Issuee.issueBook(l,B_id);

		              
		             
		             if (isIssued) {
		                 session.setAttribute("msg2", "successfull");
		                 response.sendRedirect("issue.jsp");
		             } else {
		            	 session.setAttribute("msg2", "faild to issue");
		                 response.sendRedirect("issue.jsp");
		             }

		         }
					else {
						session.setAttribute("msg2", "invalid depertment");
		                 response.sendRedirect("issue.jsp");
					}
				}
				else {
					session.setAttribute("msg2", "something went wrong");
	                 response.sendRedirect("issue.jsp");
		         }

		      }
		

		}


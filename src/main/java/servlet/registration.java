package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Student_Department;
import dataGenerator.departmentID;
import dataGenerator.studentId;
import entity.Department;
import entity.student;

/**
 * Servlet implementation class registration
 */
@WebServlet("/reg")
public class registration extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String email= request.getParameter("email");
		String phno=request.getParameter("ph");
		String password= request.getParameter("ps");
		String Address= request.getParameter("address");
		String Depertment=request.getParameter("department");
		
		String s_id= studentId.getId();
		String D_id=departmentID.getId();
		
		
		Department d= new Department(D_id, Depertment);
		student s= new student(s_id, name, email, phno, password, Address, d);
		
		boolean f= Student_Department.insert(s,d);
		
		HttpSession ss= request.getSession();
		
		if(f==true) {
			ss.setAttribute("msg", "successfullyRegister  "+s_id+ " " +" this is your Student iD remember this");
			response.sendRedirect("registration.jsp");
			
			
		}
		else {
			ss.setAttribute("msg", "faild to register try again");
			response.sendRedirect("registration.jsp");
			
			
		}
		
	}

}

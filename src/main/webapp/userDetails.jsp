<%@page import="java.util.List"%>
<%@page import="entity.student"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="hibernateUtil.conf4"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<%

SessionFactory sf= conf4.getcon();
Session s= sf.openSession();

Query q= s.createQuery("from student");
 List<student> st= q.list();




%>



<header>
    <h1>Library Management System</h1>
    <nav>
        <!-- Left side of the navigation -->
        <ul>
            <li><a href="Admin.jsp">Librarian</a></li>
            <li><a href="registration.jsp">Registration</a></li>
            <li><a href="login.jsp">Student Login</a></li>
        </ul>
    </nav>
</header>

<section id="home">
    <h2>Welcome to the Library Management System</h2>
</section>

<center>

<section id="search">
                <h2>Search for student</h2>
                <form action="searchS" method="post">
                    <input type="text" name="Search_st" placeholder="Enter your student id" required>
                    <button type="submit">Search</button>
                </form>
            </section>
        </center>

<section id="books">
    <h2>User Details</h2>
    
    <table>
    <thead>
    
    <th> id </th>
    <th> name </th>
    <th> email </th>
    <th> phone no. </th>
    <th> address </th>
   
    <th> Department </th>
    <th></th>
    <th></th>
    
  
    
    </thead>
    <tbody>
    
    <%  if(st != null){
    	
    	 for(student ste :st){
    		 
    	 
    
    
    %>
    <tr>
    <td><%=ste.getId() %></td>
        <td> <%=ste.getName() %></td>
        <td> <%=ste.getEmail() %></td>
        <td> <%=ste.getPhoneNo() %></td>
        <td> <%=ste.getAddress() %></td>
        <td> <%=ste.getDepartment().getName() %></td>
        
        <td>
                            <form action="issued-books.jsp" method="post">
                                <input type="hidden" name="studentid" value="<%= ste.getId() %>"/>
                                <button type="submit">Issueed Book </button>
                            </form>
                        </td>
       
        </tr>
        
        
        
        <%
    	 }
    	 
    	 
    }
    else {
        %>
        <tr>
                <td colspan="5">No result found..</td>
            </tr>
            
            <% } %>
    
    
    
    
    
              </tbody>
    
   </table>
    
    
    </section>
    
    <footer>
    <p>&copy; 2024 Library Management System. All rights reserved.</p>
</footer>

</body>
</html>
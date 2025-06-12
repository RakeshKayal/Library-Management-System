<%@page import="entity.student"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="hibernateUtil.sesf"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="Ustyle.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
 <% 
 student s;
 HttpSession st= request.getSession();
 

 
 
 String id=(String) st.getAttribute("id");
 
 if(id==null){
	 response.sendRedirect("login.jsp");
	 return;
 }
 else{
        SessionFactory sf=sesf.getS();
        Session ss= sf.openSession();
        s= ss.get(student.class, id);
 }
 
        %>

<header>
        <h1>Library Management System</h1>
        
        <nav>
            <!-- Left side of the navigation -->
            <ul>
                
                <li><a href="index.jsp">Home</a></li>
                <li><a href="contact.jsp">contact us</a></li>
                <li><a href="books_S.jsp">Books</a></li>
                
                 <li><a href="Logut.jsp">logout</a></li>
                
                
                
            </ul>
            
            
        </nav>
    </header>


<br>


    <div class="profile-container">
        <div class="profile-header">
            <!-- Profile Icon in IconBox -->
            <div class="profile-icon-box">
                <i class='bx bxs-user-circle'></i>
            </div>
            <div class="profile-info">
                <h2>User Profile</h2>
                <p><strong>Id:</strong> <%=s.getId()%></p>
                <p><strong>Username:</strong> <%=s.getName() %></p>
                <p><strong>Email:</strong> <%=s.getEmail() %></p>
                <p><strong>Department:</strong> <%=s.getDepartment().getName() %></p>
                <p><strong>Address:</strong> <%=s.getAddress() %></p>
            </div>
        </div>

        <div class="action-buttons">
            <button onclick="window.location.href='issued-booksStudent.jsp'">Books Issued</button>
            
        </div>
    </div>
    <br>
     <footer>
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </footer>
</body>
</html>

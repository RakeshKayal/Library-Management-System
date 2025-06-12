<%@page import="java.util.List"%>
<%@page import="entity.Book"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="hibernateUtil.conf2"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Library Management System</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<%  
    
    SessionFactory s = conf2.getSs();
    Session ss = s.openSession();
    

    
    Query<Book> q = ss.createQuery("from Book");
    List<Book> books= q.list(); 
    
 
     

    
    
    
   
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
                <h2>Search for Books</h2>
                <form action="searchB" method="post">
                    <input type="text" name="toa" placeholder="Enter book title or author" required>
                    <button type="submit">Search</button>
                </form>
            </section>
        </center>
        
        
<section id="books">
    <h2>Books List</h2>
     <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Genre</th>
                <th>Status</th>
                <th>Action</th> <!-- Added Action column for Issue button -->
            </tr>
        </thead>
        <tbody>
            <% 
            
            if (books != null && !books.isEmpty()) {
                for (Book book : books) {
                	
                	String status = book.getStatus();
            %>
                <tr>
                    <td><%= book.getId() %></td>
                    <td><%= book.getTitle() %></td>
                    <td><%= book.getAuthor() %></td>
                    <td><%= book.getGenre() %></td>
                    <td><%= book.getStatus() %></td>
                    
                    
              <%      if ("Avaliable".equals(status)) {
                    %>
                        <td>
                            <form action="issue.jsp" method="post">
                                <input type="hidden" name="bookId" value="<%= book.getId() %>"/>
                                <button type="submit">Issue</button>
                            </form>
                        </td>
                    <% 
                    } else { 
                    %>
                        <td></td>
                    <% 
                    } 
                    %>
                </tr>
            <% 
                }
            } 
            %>
        </tbody>
    </table>
</section>

<footer>
    <p>&copy; 2024 Library Management System. All rights reserved.</p>
</footer>

</body>
</html>

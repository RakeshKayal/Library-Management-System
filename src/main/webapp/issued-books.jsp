<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.util.List"%>
<%@page import="entity.libary_Issue_Book"%>
<%@page import="entity.student"%>
<%@page import="entity.Book"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="hibernateUtil.conf3"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Library Management System</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<% 
    // Get session and student ID
    String studentId= request.getParameter("studentid");
if(studentId == null){
	response.sendRedirect("loginA.jsp");
}

  

    // Hibernate session to query the database
    SessionFactory sessionFactory = conf3.getcon();
    Session hibernateSession = sessionFactory.openSession();
    student studentEntity = null;
    List<libary_Issue_Book> issueBook = null;

    try {
        // Query to get the student entity based on student ID
        Query<student> studentQuery = hibernateSession.createQuery("from student where id = :studentId", student.class);
        studentQuery.setParameter("studentId", studentId);
        studentEntity = studentQuery.uniqueResult();

        if (studentEntity != null) {
            // Now use the student entity to fetch the issued book record
            Query<libary_Issue_Book> issueQuery = hibernateSession.createQuery("from libary_Issue_Book where student = :studentEntity", libary_Issue_Book.class);
            issueQuery.setParameter("studentEntity", studentEntity);
            issueBook = issueQuery.list();
        }
    } catch (Exception e) {
        e.printStackTrace();
        System.out.println(e.getLocalizedMessage());
    } finally {
        hibernateSession.close();
    }
%>

<header>
    <h1>Library Management System</h1>
    <nav>
        <ul>
            
        </ul>
    </nav>
</header>

<section id="home">
    <h2>Welcome to the Library Management System</h2>
</section>

<section id="books">
    <h2>Issued Book List</h2>
    <table>
        <thead>
            <tr>
                <th>StudentId</th>
                <th>BookID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Genre</th>
            </tr>
        </thead>
        <tbody>
            <% 
                if (issueBook != null && !issueBook.isEmpty()) {
                    // Iterate over the issued books
                    for (libary_Issue_Book issue : issueBook) {
                        Book book = issue.getBook(); // Assuming there is a getBook() method in libary_Issue_Book entity
            %>
                <tr>
                    <td><%= studentId %></td>
                    <td><%= book.getId() %></td>
                    <td><%= book.getTitle() %></td>
                    <td><%= book.getAuthor() %></td>
                    <td><%= book.getGenre() %></td>
                    
                    
                    
                </tr>
            <% 
                    }
                } else {
            %>
                <tr>
                    <td colspan="5">No books issued.</td>
                </tr>
            <% 
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

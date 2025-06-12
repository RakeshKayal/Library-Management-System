<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- Navigation Bar -->
    <header>
        <h1>Library Management System</h1>
        
        <nav>
            <!-- Left side of the navigation -->
            <ul>
                
                <li><a href="Admin.jsp">liberian</a></li>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="viewU.jsp">view user</a></li>
                
                
            </ul>
            
            
        </nav>
    </header>

    <!-- Home Section -->
    <section id="home">
        <h2>Welcome to the Library Management System</h2>
        <p>This system helps manage books and users efficiently. You can search for books, manage user accounts, and contact library staff for assistance.</p>
    </section>
    
    <div class="container">
        <h2>Book Issued</h2>
       <c:if test="${not empty msg2 }">
        <center><p style="color: green" >${msg2}</p></center>
        
        <c:remove var="msg2"/>
        </c:if>
        
        
        <form action="issuees" method="POST">
            <label for="Stid">Student_Id:</label>
            <input type="text" name="stid" required placeholder="Enter the StudentId">
            
            <label for="BookId">BookId:</label>
            <input type="text"  name="bId" required placeholder="Enter the BookId">
            
            
              <label for="department">Department:</label>
            <select id="department" name="department" required>
                <option value="" disabled selected>Select your department</option>
                <option value="Computer Science">Computer Science</option>
                <option value="Electrical Engineering">Electrical Engineering</option>
                <option value="Mechanical Engineering">Mechanical Engineering</option>
                <option value="Civil Engineering">Civil Engineering</option>
                <option value="Business Administration">Business Administration</option>
            </select>
               
            </select>
             <button type="submit">Register</button>
        </form>
    </div>
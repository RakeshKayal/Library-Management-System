<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- Navigation Bar -->
    <header>
        <h1>Library Management System</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>  
                
                
            </ul>
        </nav>
    </header>

    <!-- Registration Section -->
   <div class="container">
        <h2>Book Return</h2>
        <c:if test="${not empty msg2 }">
        <center><p style="color: red" >${msg2}</p></center>
        
        <c:remove var="msg2"/>
        </c:if>
        
        
        <form action="return" method="POST">
            <label for="Stid">student id:</label>
            <input type="text"  name="st" required placeholder="Enter your student id no">
            
            
            
            <label for="Book">Book Id.:</label>
            <input type="text"  name="Bo" required placeholder="Enter your Book Id">
            
            

            

            

            <button type="submit">return</button>
            
         
        </form>
    </div>


    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </footer>

</body>
</html>

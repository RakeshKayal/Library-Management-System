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
                  
                
                
            </ul>
        </nav>
    </header>

    <!-- Registration Section -->
   <div class="container">
        <h2>Student login</h2>
        <c:if test="${not empty msg }">
        <center><p style="color: red" >${msg}</p></center>
        
        <c:remove var="msg"/>
        </c:if>
        
        
        <form action="log" method="POST">
            <label for="Stid">student id:</label>
            <input type="text"  name="st" required placeholder="Enter your student id no">
            
            
            
            <label for="passworc">passsword.:</label>
            <input type="password"  name="ps" required placeholder="Enter your password">
            
            

            

            

            <button type="submit">login</button>
            
            <h5> do you have an account ? if not <a href="registration.jsp"> register here</a></h5>
        </form>
    </div>


    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </footer>

</body>
</html>

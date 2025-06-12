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
           
        </nav>
    </header>

    <!-- Registration Section -->
   <div class="container">
        <h2>liberian login</h2>
        <c:if test="${not empty msg0 }">
        <center><p style="color: red" >${msg0}</p></center>
        
        <c:remove var="msg0"/>
        </c:if>
        
        
        <form action="logA" method="POST">
            <label for="Stid">Admin Emali:</label>
            <input type="text"  name="ae" required placeholder="Enter your email">
            
            
            
            <label for="passworc">passsword.:</label>
            <input type="password"  name="ps" required placeholder="Enter your password">
            
            

            

            

            <button type="submit">login</button>
            
            
        </form>
    </div>


    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </footer>

</body>
</html>

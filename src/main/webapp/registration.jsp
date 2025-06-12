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
        <h2>Student Registration</h2>
        <c:if test="${not empty msg }">
        <center><p style="color: green" >${msg}</p></center>
        
        <c:remove var="msg"/>
        </c:if>
        
        
        <form action="reg" method="POST">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required placeholder="Enter your name">
            
            <label for="email">Email:</label>
            <input type="email"  name="email" required placeholder="Enter your email">
            
            <label for="ph">Phone no:</label>
            <input type="tel"  name="ph" required placeholder="Enter your phone no">
            
            <label for="passworc">passsword.:</label>
            <input type="password"  name="ps" required placeholder="Enter your password">
            
            <label for="address">Address:</label>
            <input type="text-area"  name="address" required >

            

            <label for="department">Department:</label>
            <select id="department" name="department" required>
                <option value="" disabled selected>Select your department</option>
                <option value="Computer Science">Computer Science</option>
                <option value="Electrical Engineering">Electrical Engineering</option>
                <option value="Mechanical Engineering">Mechanical Engineering</option>
                <option value="Civil Engineering">Civil Engineering</option>
                <option value="Business Administration">Business Administration</option>
            </select>

            <button type="submit">Register</button>
        </form>
    </div>


    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </footer>

</body>
</html>

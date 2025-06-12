<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <h2>Book Registration</h2>
        <c:if test="${not empty msg }">
        <center><p style="color: green" >${msg}</p></center>
        
        <c:remove var="msg"/>
        </c:if>
        
        <form action="Bookreg" method="POST">
            <label for="name">Title:</label>
            <input type="text" id="name" name="name" required placeholder="Enter the name">
            
            <label for="Author">Author:</label>
            <input type="text"  name="Author" required placeholder="Enter the Author">
            
            <label for="genre">genre:</label>
            <input type="text"  name="genre" required placeholder="Enter the genre">
            
                       <label for="status">Status:</label>
            <select id="status" name="status" required>
                <option value="" disabled selected>Select the Status</option>
                <option value="Avaliable">Avaliable</option>
                <option value="Not_Avaliabel">Not Avaliable</option>
               
            </select>
             <button type="submit">Register</button>
        </form>
    </div>
    
    
    
    
    
    
    
    
     <footer>
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </footer>

</body>
</html>
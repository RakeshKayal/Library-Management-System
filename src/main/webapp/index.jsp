<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- Navigation Bar -->
    <header>
        <h1>Library Management System</h1>
        
        <nav>
            <!-- Left side of the navigation -->
            <ul>
                
                <li><a href="loginA.jsp">liberian</a></li>
                <li><a href="registration.jsp">Registration</a></li>
                <li><a href="login.jsp">Student Login</a></li>
                
            </ul>
            
            
        </nav>
    </header>

    <!-- Home Section -->
    <section id="home">
        <h2>Welcome to the Library Management System</h2>
        <p>This system helps manage books and users efficiently. You can search for books, manage user accounts, and contact library staff for assistance.</p>
    </section>

    <!-- Main Content -->
    <main>
        <!-- Book Search -->
        

        <!-- Book List -->
        <section id="books">
            <h2>Available Books</h2>
            <table>
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Genre</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>The Great Gatsby</td>
                        <td>F. Scott Fitzgerald</td>
                        <td>Fiction</td>
                        
                    </tr>
                    <tr>
                        <td>1984</td>
                        <td>George Orwell</td>
                        <td>Dystopian</td>
                        
                    </tr>
                    <!-- Additional rows as needed -->
                </tbody>
            </table>
             <a href="login.jsp" style="padding-left: 650px"><button>view more..</button></a>
        </section>

    </main>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </footer>
</body>
</html>

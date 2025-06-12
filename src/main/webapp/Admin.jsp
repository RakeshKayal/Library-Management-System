<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<header>
        <h1>Library Management System</h1>
        
        <nav>
        
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="book.jsp">Books</a></li>
                </ul>
                </nav>
                </header>
        
        <section id="home">
        <h2>Welcome to the Library Management System</h2>
        <p>This system helps manage books and users efficiently. You can search for books, manage user accounts, and contact library staff for assistance.</p>
    </section>
    
    
    <section id="users">
            <h2>Libary Management</h2>
            <div class="user-actions">
             <a href="Addbook.jsp"><button>Add books</button></a>
             <a href="userDetails.jsp"><button>View Users</button></a>
             <a href="books.jsp"><button>issue Book</button></a>
             <a href="return.jsp"><button>return Book</button></a>
             
            </div>
        </section>
        
         <footer>
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </footer>

</body>
</html>
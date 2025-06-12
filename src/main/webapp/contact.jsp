<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact - Library Management</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- Navigation Bar -->
    <header>
        <h1>Library Management System</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="books_S.jsp">Books</a></li>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="Logut.jsp">Logout</a></li>
            </ul>
        </nav>
    </header>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <h2>Contact Library Staff</h2>
            <form action="submit-contact.jsp" method="post">
                <label for="name">Your Name</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Your Email</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Your Message</label>
                <textarea id="message" name="message" rows="5" required></textarea>

                <button type="submit">Send Message</button>
            </form>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </footer>

</body>
</html>

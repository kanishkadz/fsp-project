<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <title>Bank Management System - Current Balance</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: #000; /* Changed to black for consistency */
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full height */
            backdrop-filter: blur(5px);
        }

        h2 {
            color: #fff;
            font-size: 2.5rem; /* Larger font size */
            text-align: center; /* Center-align the text */
            margin-bottom: 20px; /* Spacing below the heading */
            font-weight: bold;
        }

        .balance-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(15px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            text-align: center; /* Center-align content */
        }

        .links {
            text-align: center; /* Center-align links */
            margin-top: 20px; /* Spacing above the links */
        }

        a {
            text-decoration: none;
            font-size: 14px;
            color: #fff;
            transition: color 0.3s;
        }

        a:hover {
            color: #64B5F6;
            text-shadow: 1px 1px 5px #000;
        }
    </style>
</head>
<body>

    <% 
        Integer balance = (Integer) request.getAttribute("myname"); 
        if (balance == null) {
            balance = 0; // Default to 0 if "myname" attribute is not found
        }
    %>
    
    <div class="balance-container">
        <h2>Your Current Balance is <%= balance %></h2>
    </div>
    
    <div class="links">
        <a href="mainoption.jsp">Back to Options</a>
        &nbsp|&nbsp
        <a href="logout">Logout</a>
    </div>

</body>
</html>

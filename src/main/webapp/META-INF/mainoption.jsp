<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <title>Bank Management System - Options</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: #000; /* Changed to black for consistency */
            color: #fff;
            display: flex;
            flex-direction: column; /* Stack elements vertically */
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

        .options-container {
            max-width: 500px; /* Increased max width */
            margin: 20px 0; /* Add some margin above and below */
            padding: 30px; /* Increased padding */
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(15px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            text-align: center; /* Center-align content */
        }

        .link {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin-top: 20px;
        }

        a {
            display: inline-block;
            text-decoration: none;
            font-size: 16px; /* Slightly larger font size */
            color: #fff;
            padding: 12px;
            border: none; /* No border */
            border-radius: 10px;
            margin: 10px 0; /* Margin around buttons */
            width: 100%; /* Full width */
            background-color: #fff; /* White background for buttons */
            color: #273997; /* Text color */
            text-transform: uppercase; /* Uppercase text */
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s; /* Smooth transition */
        }

        a:hover {
            background-color: #1a237e; /* Dark blue background on hover */
            color: #fff; /* White text on hover */
            text-shadow: 1px 1px 5px #000; /* Shadow effect */
        }
    </style>
</head>
<body>

    <% 
        String name = (String) request.getAttribute("key"); 
        if (name == null) {
            name = "User";
        }
    %>
    
    <h2>Welcome <%= name %></h2> <!-- Moved outside of the options-container -->
    
    <div class="options-container">
        <h2>Options</h2>

        <div class="link">
            <a href="withdraw.jsp">Withdraw</a>
            <a href="deposit.jsp">Deposit</a>
            <a href="enquiry">Enquiry</a>
            <a href="logout">Logout</a>
        </div>
    </div>

</body>
</html>

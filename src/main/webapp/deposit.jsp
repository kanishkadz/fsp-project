<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <title>Bank Management System - Deposit</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: #000;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            backdrop-filter: blur(5px);
        }

        h2 {
            color: #fff;
            font-size: 2.5rem; /* Larger font size */
            text-align: center; /* Center-align the text */
            margin-bottom: 20px; /* Spacing below the heading */
            font-weight: bold;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(15px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            text-align: center; /* Center-align form content */
        }

        label {
            text-align: left;
            display: block;
            margin-bottom: 10px;
            letter-spacing: 1px;
            color: #fff; /* Removed font-weight: bold; */
            text-shadow: 1px 1px 2px #000;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 2px solid #fff; /* Changed to white border */
            border-radius: 5px;
            background-color: transparent;
            color: #fff;
            transition: border-color 0.3s;
        }

        input:focus {
            outline: none;
            border-color: #64B5F6; /* Keep focus color */
        }

        input[type="submit"] {
            background-color: #fff;
            font-size: 16px;
            color: #273997;
            width: 100%;
            text-transform: uppercase;
            cursor: pointer;
            border: none;
            border-radius: 10px;
            padding: 12px;
            transition: background-color 0.3s, color 0.3s;
        }

        /* Hover effect with dark blue color */
        input[type="submit"]:hover {
            background-color: #1a237e; /* Dark blue color */
            color: #fff;
        }

        .links {
            text-align: center;
            margin-top: 20px;
        }

        a {
            display: inline-block;
            text-decoration: none;
            font-size: 14px;
            color: #fff;
            transition: color 0.3s;
            margin: 10px 0; /* Increased margin for spacing */
        }

        a:hover {
            color: #64B5F6;
            text-shadow: 1px 1px 5px #000;
        }
    </style>
</head>
<body>
    <div>
        <h2>Deposit Amount</h2>

        <form action="deposit" method="post">
            <label for="deposit1">Amount to be deposited:</label>
            <input type="number" name="deposit1" id="deposit1" required>

            <input type="submit" value="Proceed">
        </form>

        <div class="links">
            <a href="mainoption.jsp">Back to Options</a>
            &nbsp|&nbsp
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>

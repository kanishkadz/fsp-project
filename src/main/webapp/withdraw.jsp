<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <title>Bank Management System - Withdraw</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: #000; /* Consistent background color */
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
            font-weight: bold;
            color: #fff;
            text-shadow: 1px 1px 2px #000;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 2px solid #64B5F6;
            border-radius: 5px;
            background-color: transparent;
            color: #fff;
            transition: border-color 0.3s;
        }

        input:focus {
            outline: none;
            border-color: #2196F3;
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

        .link {
            text-align: center; /* Center-align links */
            margin-top: 20px;
        }

        /* Updated styles for the links to look like buttons */
        a {
            display: inline-block;
            text-decoration: none;
            font-size: 16px;
            color: #fff; /* White text color */
            background-color: #64B5F6; /* Background color for buttons */
            border: none;
            border-radius: 10px;
            padding: 12px 20px; /* Increased padding for button effect */
            margin: 5px; /* Spacing between buttons */
            transition: background-color 0.3s, color 0.3s;
        }

        a:hover {
            background-color: #1a237e; /* Darker blue on hover */
            color: #fff;
            text-shadow: 1px 1px 5px #000; /* Shadow effect */
        }
    </style>
</head>
<body>
    <div>
        <h2>Enter Amount</h2>

        <form action="withdraw" method="post">
            <label for="withdrawAmount">Amount to be Withdrawn:</label>
            <input type="number" id="withdrawAmount" name="withdraw1" placeholder="Enter amount" required>

            <input type="submit" value="Proceed">
        </form>

        <div class="link">
            <a href="mainoption.jsp">Back to Options</a>
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>

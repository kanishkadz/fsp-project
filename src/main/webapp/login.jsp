<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <title>Bank Management System - Login</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: #000; /* Solid black background */
            color: #fff;
            display: flex; /* Flexbox for centering */
            justify-content: center; /* Center content horizontally */
            align-items: center; /* Center content vertically */
            height: 100vh; /* Full viewport height */
            backdrop-filter: blur(5px); /* Adds a slight glass effect */
        }

        h2 {
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-shadow: 2px 2px 4px rgba(33, 150, 243, 0.7);
            margin-bottom: 20px; /* Spacing below the heading */
        }

        form {
            max-width: 400px; /* Increased max width for better appearance */
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(30, 136, 229, 0.8); /* Semi-transparent background */
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3); /* Enhanced shadow for depth */
            backdrop-filter: blur(10px); /* Glass effect */
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
            padding: 12px; /* Increased padding for better usability */
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 2px solid #64B5F6;
            border-radius: 5px;
            background-color: transparent; /* Keep background transparent for glass effect */
            color: #fff;
            transition: border-color 0.3s; /* Smooth border color transition */
        }

        input:focus {
            outline: none;
            border-color: #2196F3; /* Change border color on focus */
        }

        input[type="submit"] {
            background-color: #fff;
            font-size: 16px; /* Increased font size for better readability */
            color: #273997;
            width: 100%;
            text-transform: uppercase;
            cursor: pointer;
            border: none;
            border-radius: 10px;
            padding: 12px; /* Increased padding for button */
            transition: background-color 0.3s, color 0.3s; /* Smooth transition */
        }

        input[type="submit"]:hover {
            background: rgba(255, 255, 255, 0.8); /* Light hover effect */
            border: 2px solid #fff; /* White border on hover */
            color: #273997;
        }

        .links {
            text-align: center; /* Center-align links */
            margin-top: 20px; /* Space above links */
        }

        a {
            display: inline-block;
            text-decoration: none;
            font-size: 14px;
            color: #fff;
            transition: color 0.3s;
        }

        a:hover {
            color: #64B5F6; /* Highlight color on hover */
            text-shadow: 1px 1px 5px #000;
        }
    </style>
</head>
<body>
    <div>
        <h2>Login</h2>

        <form action="Option" method="post">
            <label for="eno">Account No:</label>
            <input type="number" name="acc" id="eno" required>

            <label for="esal">Pin Code:</label>
            <input type="password" name="pincode" id="esal" required>

            <input type="submit" value="Proceed">
        </form>
        
        <div class="links">
            <a href="registration.jsp">Create an account</a> | 
            <a href="forgot-password.jsp">Forgot Password?</a> <!-- Link for password recovery -->
        </div>
    </div>
</body>
</html>

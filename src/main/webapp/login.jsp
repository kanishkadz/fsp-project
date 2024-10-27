<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- REMOVE CREATE A NEW ACCOUNT & FORGOT PASSWORD -->

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
            background: #042a3f;
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
            border: 1px solid grey;
            text-align: center; /* Center-align form content */
        }

        label {
            text-align: left;
            display: block;
            margin-bottom: 10px;
            letter-spacing: 1px;
            font-weight: normal;
            color: #fff;
            text-shadow: 1px 1px 2px #000;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid grey; /* Changed to white border */
            border-radius: 5px;
            background-color: transparent;
            color: #fff;
            transition: border-color 0.3s;
        }

        input:focus {
            outline: none;
            border-color: #fff; /* Keep the focus border white */
        }

        input[type="submit"] {
            background-color: #079760;
            font-size: 16px;
            color: #ffffff;
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
            background-color: #045838; /* Dark blue color */
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
        }

        a:hover {
            color: #079760;
            text-shadow: 1px 1px 5px #000;
        }
    </style>
</head>
<body>
    <div>
        <h2>Login</h2>

        <form action="Option" method="post">
            <label for="eno">Account No:</label>
            <input type="text" name="acc" id="eno" required>

            <label for="esal">Pin Code:</label>
            <input type="password" name="pincode" id="esal" required>

            <input type="submit" value="Proceed">
        </form>
        
        <div class="links">
            <a href="registration.jsp">Create an account</a> | 
            <a href="forgot-password.jsp">Forgot Password?</a>
        </div>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <title>Bank Management System - Registration</title>
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
            backdrop-filter: blur(5px); /* Slight glass effect */
        }

        h2 {
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-shadow: 2px 2px 4px rgba(33, 150, 243, 0.7);
            margin-bottom: 20px; /* Space below the heading */
        }

        form {
            max-width: 400px; /* Increased max width for better appearance */
            padding: 20px;
            background-color: rgba(57, 62, 70, 0.8); /* Semi-transparent background */
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5); /* Enhanced shadow for depth */
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
            width: 100%; /* Full width */
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

        ::placeholder {
            color: #fff; /* Placeholder color */
            font-weight: bold;
        }

        .home-button {
            display: block; /* Centering the button */
            width: 100%; /* Full width */
            margin-top: 20px; /* Space above the button */
            padding: 12px; /* Button padding */
            background-color: #64B5F6; /* Button color */
            color: #000; /* Text color */
            text-align: center; /* Center text */
            text-decoration: none; /* No underline */
            font-size: 16px; /* Font size */
            font-weight: bold; /* Font weight */
            border-radius: 10px; /* Rounded corners */
            transition: background-color 0.3s, color 0.3s; /* Smooth transition */
        }

        .home-button:hover {
            background-color: #fff; /* Lighten background on hover */
            color: #000; /* Darken text color on hover */
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5); /* Add shadow on hover */
        }
    </style>
</head>
<body>
    <div>
        <h2>Registration Form</h2>

        <form action="NewReg" method="post">
            <label for="eno">Account Number:</label>
            <input type="number" name="acc" id="eno" placeholder="Enter 10-digit account number" minlength="10" maxlength="10" required>

            <label for="ename">Holder Name:</label>
            <input type="text" name="name" id="ename" placeholder="Enter account holder's name" required>

            <label for="esal">Pin Code:</label>
            <input type="number" name="pincode" id="esal" placeholder="Enter unique 4-digit code" minlength="4" maxlength="4" required>

            <label for="balance">Opening Balance:</label>
            <input type="number" name="opblc" id="opblc" placeholder="Default: zero" value="0">

            <input type="submit" value="Register">
        </form>

        <a href="index.html" class="home-button">Home</a> <!-- Home button -->
    </div>
</body>
</html>

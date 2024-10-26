<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <title>Bank Management System</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 20px;
            background: linear-gradient(to right, #ff66a3, #cc00ff);
            color: #fff;
            text-align: center;
            backdrop-filter: blur(5px);
        }

        h2 {
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-shadow: 2px 2px 4px rgba(33, 150, 243, 0.5);
        }

        form {
            max-width: 300px;
            margin: 20px auto;
            padding: 20px;
            background-color: #393e46;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 2px solid #64B5F6;
            border-radius: 5px;
            background-color: transparent;
            color: #fff;
        }
        input:focus {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #64B5F6;
            border-radius: 5px;
            background-color: transparent;
            color: #fff;
        }
        
        input[type="submit"] {
            background-color: #fff;
            font-size: 14px;
            color: #273997;
            max-width: 150px;
            text-transform: uppercase;
            cursor: pointer;
            border: none;
            border-radius: 10px;
            padding: 10px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background: transparent;
            border: 2px solid #fff;
            color: #fff;
            text-transform: uppercase;
            
        }
        ::placeholder{
        color:white;
        text-decoration:bold;
        font-weight:bold;
      }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            font-size: 14px;
            color: #fff;
        }

        a:hover {
            color: #fff;
            text-shadow: 1px 1px 5px #000;
        }
    </style>
</head>
<body>
    <h2>Registration Form</h2>

    <form action="NewReg" method="post">
        <label for="eno">Account Number:</label>
        <input type="number" name="acc" id="eno" placeholder="enter 10 digit account number"><br>

        <label for="ename">Holder Name:</label>
        <input type="text" name="name" id="ename"><br>

        <label for="esal">Pin Code:</label>
        <input type="number" name="pincode" id="esal" placeholder="enter unique 4 digit code"><br>
        
        <label for="balance">Opening Balance</label>
        <input type="number" name="opblc" id="opblc" placeholder="default zero"><br>
        

        <input type="submit" value="Register">
    </form>
    
    <a href="logout">logout</a>

    
</body>
</html>

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
            background: linear-gradient(to right, #283593, #1976D2);
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
            background-color: rgba(30, 136, 229, 0.8);
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

         div.link {
            display: flex;
            flex-direction:column;
            align-items: center;
            justify-content: center;
        }
        
        
        a {
            background-color: #fff;
            text-align: center;
            font-size: 14px;
            color: #273997;
            width: 130px;
            text-transform: uppercase;
            cursor: pointer;
            border: 2px solid #020B25;
            border-radius: 10px;
            padding: 10px;
            transition: background-color 0.3s;
            text-decoration: none;
        }

        a:hover {
            background: transparent;
            border: 2px solid #fff;
            color: #fff;
            text-transform: uppercase;
        }
        
        
        
        
        
        
        
        
        
        
    </style>
</head>
<body>
    <h2>Enter Amount</h2>

    <form action="deposit" method="post">
        <label for="eno">Amount to be deposit:</label>
        <input type="number" name="deposit1"><br>

        

        <input type="submit" value="Proceed">
    </form>

    <br>
    <div>
    <a href="mainoption.jsp">Back to Options</a>
    <a href="logout">logout</a>
    </div>
</body>
</html>

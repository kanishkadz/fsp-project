<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
    <title>Bank Management System</title>
    <style>
        body {
            font-family: 'poppins';
            margin: 20px;
            background: linear-gradient(to right, #283593, #1976D2);
            color: #fff;
        }

        h2 {
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(33, 150, 243, 0.5);
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

	<% String name =(String) request.getAttribute("key"); %>
    <h2>Welcome <%= name%></h2>
    <h2>Options</h2>
   

    <br>
    <div class="link">
    <a href="withdraw.jsp">Withdraw</a><br>
    <a href="deposit.jsp">Deposit</a><br>
    <a href="enquiry">Enquiry</a><br>
    
    <a href="logout">logout</a>
    </div>
</body>
</html>

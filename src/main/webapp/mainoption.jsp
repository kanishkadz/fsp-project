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
        }

        h2 {
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(33, 150, 243, 0.5);
        }

        .link {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin-top: 20px;
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
            margin: 5px 0;
            transition: background-color 0.3s;
            text-decoration: none;
        }

        a:hover {
            background: transparent;
            border: 2px solid #fff;
            color: #fff;
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
    <h2>Welcome <%= name %></h2>
    <h2>Options</h2>

    <div class="link">
        <a href="withdraw.jsp">Withdraw</a>
        <a href="deposit.jsp">Deposit</a>
        <a href="enquiry">Enquiry</a>
        <a href="logout">Logout</a>
    </div>
</body>
</html>

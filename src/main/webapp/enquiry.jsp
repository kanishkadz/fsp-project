<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
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
        
        div.container {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        table {
            width: 500px;
            border-radius: 10px;
            border: 2px solid #fff;
            margin-top: 10px;
        }

        th, td {
            border-radius: 10px;
            padding: 12px;
            text-align: left;
            border: 5px solid #fff;
            color: #fff;
        }

        th {
            background-color: #2196F3;
            text-align: center;
        }
        
        div.link {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            margin-top: 15px;
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

    <% 
        Integer balance = (Integer) request.getAttribute("myname"); 
        if (balance == null) {
            balance = 0; // Default to 0 if "myname" attribute is not found
        }
    %>
    
    <h2>Your Current Balance is <%= balance %></h2>

    <div class="link">
        <a href="mainoption.jsp">Back to Options</a>
        <a href="logout">Logout</a>
    </div>

</body>
</html>

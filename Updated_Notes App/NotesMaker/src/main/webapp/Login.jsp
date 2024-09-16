<%@ page import="com.entities.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="all_js_css.jsp" %>

<%
    // Check if the user is already logged in
    com.entities.User user = (com.entities.User) session.getAttribute("user");
    
    // Check if there's an error parameter in the URL
    String error = request.getParameter("error");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
    <%@include file="all_js_css.jsp"%>
    <style>
        body {
            background-image: url('img/boy.png');
            background-size: 100% 100%;
            background-repeat: no-repeat;
            background-attachment: fixed;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.3);
            width: 300px;
        }
        label {
            font-size: 18px;
            color: #333;
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            margin-bottom: 10px;
            width: 100%;
            padding: 8px;
        }
        input[type="submit"] {
            background-color: #ff5722;
            color: white;
            padding: 10px;
            width: 100%;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: rgba(255, 87, 34, 0.8);
            border-radius: 8px;
        }
        .error-message {
            color: red;
            font-weight: bold;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<% if (user == null) { %>
    <form action="LoginServlet" method="post">
        <div class="container text-center">
            <% if (error != null && error.equals("invalid")) { %>
                <div class="error-message">Invalid login details. Please try again.</div>
            <% } %>

            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required><br>

            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required><br>

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required><br>

            <input type="submit" value="Login">
        </div>
    </form>
<% } %>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to QSP</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #e8f1f8; /* Light blue background color */
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            text-align: center;
        }
        .btn {
            font-size: 24px;
            margin: 20px;
            padding: 10px 30px;
            border-radius: 30px;
            background-color: #007bff; /* Brevistay blue color */
            color: #fff;
            border: none;
            text-transform: uppercase;
        }
        .btn:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        .welcome-message {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }
    </style>
</head>
<body> 
<form action="startPageU" method="post">
    <div class="container">
        <p class="welcome-message">Welcome to QSP</p>
        <p>Please select an option to continue:</p>
        <a href="userLogin.jsp" class="btn btn-primary" name="login">Login</a>
        <a href="userSignUp.jsp" class="btn btn-success" name="signUp">Sign Up</a>
    </div>
</form>
</body>
</html>

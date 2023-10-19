<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
    body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

header {
	background-color: #333;
	color: #fff;
	padding: 10px 0;
	height: 70px; /* Adjusted the height */
	position: sticky;
	top: 0;
	width: 100%;
}

.container {
	margin: auto;
	max-width: 800px;
	/* margin: 100px auto 0; Adjusted the margin-top to account for the smaller header height */
	padding: 20px;
	text-align: center;
}

nav {
	display: flex;
	justify-content: flex-end;
	align-items: center;
	padding-right: 20px;
}

nav a {
	color: #fff;
	text-decoration: none;
	margin: 0 15px;
}
    </style>
</head>
<body>
	<header>
		<div class="container">
			<nav>
			<% HttpSession httpSession = request.getSession();%>
				<% String name = (String) httpSession.getAttribute("username");%>
				
				<%= name %>
				<a href="#">Home</a> <a href="#">Rooms</a> <a href="#">Contact
					Us</a>
				<form action="logout" method="post">
					<button type="submit" name="logout" class="cart">LOGOUT</button>
				</form>
			</nav>
		</div>
	</header>
	<div class="container">
	

    <div class="container mt-5">
        <h1 class="text-center">Admin Dashboard</h1>
        <form action="admin" method="post"> <!-- Add the action URL for form submission -->
            <div class="row mt-4">
                <div class="col-md-4">
                    <button type="submit" class="btn btn-primary btn-block" name="viewAllManager">View All Manager</button>
                </div>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-danger btn-block" name="rejectManager">Reject Manager</button>
                </div>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-success btn-block" name="authorisedManager">Authorize Manager</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
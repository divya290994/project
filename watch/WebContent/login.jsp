<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>
	<center>
		<a href="home.jsp" class="btn btn-default">Home</a> <a
			href="login.jsp" class="btn btn-default">login</a> <a
			href="aboutus.jsp" class="btn btn-default">About us</a> <a
			href="signup.jsp" class="btn btn-default">Signup</a> <a
			href="brand.jsp" class="btn btn-default">Brand</a>

		<div class="container">
			<h2>Login Page</h2>
			<form class="form-horizontal" role="form" action=Loginservlet
				method="POST">
				<div class="form-group">
					<label for="userid">userID</label> <input type="text"
						class="form-control" name="user" placeholder="Enter userid">
				</div>
				<div class="form-group">
					<label for="pwd">Password:</label> <input type="password"
						class="form-control" name="pwd" placeholder="Enter password">
				</div>
				<div class="checkbox">
					<label><input type="checkbox"> Remember me</label>
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
</body>
</html>







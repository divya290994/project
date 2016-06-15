<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>signup</title>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>signup</title>

<body>
	<center>
		<a href="home.jsp" class="btn btn-default">Home</a> <a
			href="login.jsp" class="btn btn-default">login</a> <a
			href="aboutus.jsp" class="btn btn-default">About us</a> <a
			href="signup.jsp" class="btn btn-default">Signup</a> <a
			href="brand.jsp" class="btn btn-default">Brand</a> <a
			href="discount.jsp" class="btn btn-default">Discount</a> <a
			href="price.jsp" class="btn btn-default">Price</a>
	</center>

	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<form class="form-horizontal" action="" method="POST">
					<fieldset></fieldset>
					<div id="legend">
						<legend class="">Registration form</legend>
					</div>
					<div class="control-group">
						<label class="control-label" for="username">Username</label>
						<div class="controls"></div>
						<input type="text" id="username" name="username" placeholder=""
							class="form-control input-lg">
						<p class="help-block">Username can contain any letters or
							numbers, without spaces</p>
					</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="email">E-mail</label>
				<div class="controls">
					<input type="email" id="email" name="email" placeholder=""
						class="form-control input-lg">
					<p class="help-block">Please provide your E-mail</p>

				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="password">Password</label>
				<div class="controls">
					<input type="password" id="password" name="password" placeholder=""
						class="form-control input-lg">
					<p class="help-block">Password should be at least 6 characters</p>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="password_confirm">Password
					(Confirm)</label>
				<div class="controls">
					<input type="password" id="password_confirm"
						name="password_confirm" placeholder=""
						class="form-control input-lg">
					<p class="help-block">Please confirm password</p>
				</div>
			</div>

			<div class="control-group">
				<!-- Button -->
				<div class="controls">
					<button class="btn btn-success">Register</button>
				</div>
			</div>
			</fieldset>
			</form>

		</div>
	</div>
	</div>

</body>
</html>







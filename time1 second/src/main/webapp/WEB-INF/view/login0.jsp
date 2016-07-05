<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<center><a href="home" class="btn btn-default">Home</a>
<a href="login" class="btn btn-default">Login</a>
<a href="Aboutus" class="btn btn-default">About us</a>
<a href="signup" class="btn btn-default">Signup</a>
<a href="brand" class="btn btn-default">Brand</a>
<a href="cart" class="btn btn-default">cart</a>

 <div class="container">
 <h2>Login Page</h2>
  <form class="form-horizontal" role="form" action="isvalidUser" method="POST">
    <div class="form-group">
      <label for="name">userID</label>
      <input type="text" class="form-control" name="name" placeholder="Enter userID">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="password" placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
</body>
</html>
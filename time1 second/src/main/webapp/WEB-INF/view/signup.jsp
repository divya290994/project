<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AboutUs</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<center> <a href=home  button type="button" class="btn btn-default">Home</button></a>
  <a href=Aboutus  button type="button" class="btn btn-success">AboutUs</button></a>
  <a href=brand button type="button" class="btn btn-success">Brands</button></a>
  <a href=login  button type="button" class="btn btn-warning">Login</button></a>
  <a href=signup button type="button" class="btn btn-danger">SignUp</button></a>
  <a href=cart  button type="button" class="btn btn-link">Cart</button></a></center>
 
 <center> <h2>Registration</h2></center>
  <form class="form-horizontal" role="form">
    <div class="form-group">
    
    
    
      <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Name:</label>
      <div class="col-sm-10">
        <input type="name" class="form-control" id="name" placeholder="Enter your name">
      </div>
    </div>
    
      <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Adrress:</label>
      <div class="col-sm-10">
        <input type="address" class="form-control" id="address" placeholder="Enter your address">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter your email">
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">paymentType:</label>
      <div class="col-sm-10">
        <input type="payment" class="form-control" id="payment" placeholder="Enter your paymenttype">
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
     <center><label><input type="checkbox"> Remember me</label></center>
        </div>
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
 <center><button type="submit" class="btn btn-default">Submit</button></center>
      </div>
    </div>
  </form>
</div>
    
   
     


</body>
</html>




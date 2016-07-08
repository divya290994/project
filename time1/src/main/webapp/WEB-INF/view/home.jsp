<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>watch</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
                                                             
<body>
<style>
.jumbotron { 
 background-color: #f4511e; /* orange */
 color: #ffffff;
}</style>
<div class="jumbotron text-center">

Hello ${sessionScope.user}
<h1>THE WATCH WORLD</h1> 

 <p>Time Makes a Man Perfect</p>
<center> <form method="get" name="searchform" action="http://www.google.com/search" target="_blank">
    <input type="hidden" name="sitesearch" value="stackoverflow.com">
    <input type="text" name="as_q" size="20" value="Search stackoverflow.com">
    <input type="submit" value="Search" title="Search">
</form> </center> 
</div>
<center>

<a href=home  button type="button" class="btn btn-default">Home</button></a>
  <a href=Aboutus  button type="button" class="btn btn-success">AboutUs</button></a>
  <a href=brand  button type="button" class="btn btn-success">Brands</button></a>
  <a href=login  button type="button" class="btn btn-warning">Login</button></a>
  <a href=signup  button type="button" class="btn btn-danger">SignUp</button></a>
  <a href=cart  button type="button" class="btn btn-link">Cart</button></a>
   <a href=admin  button type="button" class="btn btn-danger">Admin</button></a>
</center>
 


  
  
  <h2>Watch Collections</h2>
  
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

 <!-- Wrapper for slides -->
 <div class="carousel-inner" role="listbox">
  <div class="item active">
  <center><img src="<c:url value="resource/img3/ig6.jpg"/>" alt="watch" width="460" height="345"></center>
      </div>

 <div class="item">
 <center><img src="<c:url value="resource/img3/img7.jpg"/>" alt="watch" width="460" height="345"></center>
      </div>
<div class="item">
<center><img src="<c:url value="resource/img3/img10.jpg"/>" alt="watch" width="460" height="345"></center>
      </div>
      <div class="item">
<center><img src="<c:url value="resource/img3/img11.jpg"/>" alt="watch" width="460" height="345"></center>
      </div>
    </div>

 <!-- Left and right controls -->
 <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
 <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
  <span class="sr-only">Previous</span>
 </a>
<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
 <span class="sr-only">Next</span>
  </a>
  </div>
  </div>
  
  <div class="container">
  <div class="row">
    <div class="col-sm-3">
      <h3>Help</h3>
      <p>Payments</p>
      <p>Saved Cards</p>
      <p>Shipping</p>
      <p>Cancellation&Returns</p>
      <p>Payments</p>
      
    </div>
    <div class="col-sm-3">
      <h3>Watch World</h3>
      <p>Contact Us</p>
      <p>About Us</p>
      <p>Careers</p>
      <p>About Watches</p>
      <p>Offers</p>
    </div>
    <div class="col-sm-3">
      <h3>MISC</h3>
      <p>Online Shopping</p>
      <p>Affliated Programs</p>
      <p>Gift Cards</p>
      <p>Vouchers</p>
      <p>First Subscription</p>
    </div>
    
    <div class="col-sm-3">
      <h3>Familiar Brands</h3>
      <p>Titan</p>
      <p>Sonata</p>
      <p>Flipkart</p>
      <p>Water proofs</p>
      <p>Digital Types</p>
    </div>
    
      </div>
</div>



</div>
  
</body>
</html>
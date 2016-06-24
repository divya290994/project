<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

</head>
                                                             
<body>
<style>
.jumbotron { 
 background-color: #f4511e; /* orange */
 color: #ffffff;
}</style>
<div class="jumbotron text-center">
hello ${sessionScope.user}
<h1>THE WATCH WORLD</h1> 

 <p>Time Makes a Man Perfect</p> 
</div>

<center>

<a href="home.jsp" class="btn btn-default">Home</a>
<a href="login .jsp" class="btn btn-default">login</a>
<a href="Aboutus.jsp" class="btn btn-default">About us</a>
<a href="signup.jsp" class="btn btn-default">Signup</a>
<a href="product" class="btn btn-default">Brand</a>
<a href="index.jsp"></a>

 

  <button type="button" class="btn btn-link">Cart</button></center> 
  <h2>fastrack New Collections</h2>
  
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
</body>
</html>
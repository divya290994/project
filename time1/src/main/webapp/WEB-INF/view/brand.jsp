<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>brands</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  </head>
  <body>
<center>
           <a href="home.jsp" class="btn btn-default">Home</a>
            <a href="login.jsp" class="btn btn-default">login</a> 
            <a href="aboutus.jsp" class="btn btn-default">About us</a> 
			<a href="signup.jsp" class="btn btn-default">Signup</a> 
			<a href="product" class="btn btn-default">Brand</a>
			</center>

	<div class="container">
		<h2>Deals of the Day:</h2>

		<div class="row">

			<div class="col-md-4">
				
				<center>
				<a href="productservlet?id=w1" class="thumbnail">
					<img src="img3/ig6.jpg" alt="watch"
						style="width: 250px; height: 250px"></a>
					<p>Attractive watches</p>
					<p>Rs.899/-</p>
				</center>
			</div>


			<div class="col-md-4">
				<center>
				<a href="productservlet?id=w2"class="thumbnail">
					<img src="img3/img10.jpg" alt="watches"
						style="width: 250px; height: 250px"></a>
					<p>fastrack</p>
					<p>Rs.599/-</p>
				</center>
			</div>


			<div class="col-md-4">
				<center>
				<a href="productservlet?id=" w3"class="thumbnail">
					<img src="img3/img11.jpg" alt="watch"
						style="width: 250px; height: 250px"></a>
					<p>sonata</p>
					<p>rs.799/-</p>
				</center>
			</div>
		</div>
</body>
</html>




  
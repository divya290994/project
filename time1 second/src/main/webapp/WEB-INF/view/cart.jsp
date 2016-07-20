<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
        body {
            padding-top: 50px;
        }
        #divTotal{
            background-color: green;
        }
        .affix{
            right: 0px;
        }
        .affix-top{
            right: 0px;
            position: fixed;
        }
    </style>


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body>



	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">CAT_001 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="upload">UpLoad</a></li>
					<li><a href="index">index</a></li>
					<li><a href="#">pd_003</a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">CAT_002 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="product">pd_001</a></li>
					<li><a href="">pd_002</a></li>
					<li><a href="#">pd_003</a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">CAT_003 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="product">pd_001</a></li>
					<li><a href="#">pd_002</a></li>
					<li><a href="#">pd_003</a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">CAT_004 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="product">pd_001</a></li>
					<li><a href="#">pd_002</a></li>
					<li><a href="#">pd_003</a></li>
				</ul></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">

			<li><a href="admin"><span class="glyphicon glyphicon-log-in"></span>
					Admin</a></li>
		</ul>


		<ul class="nav navbar-nav navbar-right">

			<li><a href="">CART()</a></li>
		</ul>
	</div>
	</nav>
<body>
	<center>
		<a href=home button type="button" class="btn btn-default">Home
			</button>
		</a> <a href=Aboutus button type="button" class="btn btn-success">AboutUs
			</button>
		</a> <a href=brand button type="button" class="btn btn-success">Brands
			</button>
		</a> <a href=login button type="button" class="btn btn-warning">Login
			</button>
		</a> <a href=signup button type="button" class="btn btn-danger">SignUp
			</button>
		</a> <a href=cart button type="button" class="btn btn-link">Cart
			</button>
		</a>
	</center>

	<div class="container">

		<h2>Products Availability:</h2>
		<div class="row">
			<div class="col-md-4">

				<center>
					<a href="product1?id=w1" class="thumbnail"> <img
						src="resource/img3/ig6.jpg" alt="watch"
						style="width: 250px; height: 250px"></a>
					<p>Attractive watches</p>
					<p>Rs.899/-</p>
				</center>
			</div>


			<div class="col-md-4">
				<center>
					<a href="product1?id=w2" class="thumbnail"> <img
						src="resource/img3/img10.jpg" alt="watches"
						style="width: 250px; height: 250px"></a>
					<p>fastrack</p>
					<p>Rs.599/-</p>
				</center>
			</div>


			<div class="col-md-4">
				<center>
					<a href="product1?id=w3" class="thumbnail"> <img
						src="resource/img3/img11.jpg" alt="watch"
						style="width: 250px; height: 250px"></a>
					<p>sonata</p>
					<p>rs.799/-</p>
				</center>
			</div>


			<div class="container">


				<div class="row">

					<div class="col-md-4">

						<center>
							<a href="product1?id=w1" class="thumbnail"> <img
								src="resource/img3/flower.jpg" alt="watch"
								style="width: 250px; height: 250px"></a>
							<p>Watches</p>
							<p>Rs.899/-</p>
						</center>
					</div>

					<div class="row">
						<div class="col-md-4">
							<center>
								<a href="product1?id=w1" class="thumbnail"> <img
									src="resource/img3/flower1.jpg" alt="watch"
									style="width: 250px; height: 250px"></a>
								<p>Watches</p>
								<p>Rs.899/-</p>
							</center>
						</div>

						<div class="row">
							<div class="col-md-4">

								<center>
									<a href="product1?id=w1" class="thumbnail"> <img
										src="resource/img3/flower2.jpg" alt="watch"
										style="width: 250px; height: 250px"></a>
									<p>watches</p>
									<p>Rs.899/-</p>
								</center>
							</div>

							<div class="container">


								<div class="row">

									<div class="col-md-4">

										<center>
											<a href="product1?id=w1" class="thumbnail"> <img
												src="resource/img3/priya2.jpg" alt="watch"
												style="width: 250px; height: 250px"></a>
											<p>watches</p>
											<p>Rs.899/-</p>
										</center>
									</div>

									<div class="row">

										<div class="col-md-4">

											<center>
												<a href="product1?id=w1" class="thumbnail"> <img
													src="resource/img3/priya3.jpg" alt="watch"
													style="width: 250px; height: 250px"></a>
												<p>watches</p>
												<p>Rs.899/-</p>
											</center>
										</div>

										<div class="row">

											<div class="col-md-4">

												<center>
													<a href="product1?id=w1" class="thumbnail"> <img
														src="resource/img3/water1.jpg" alt="watch"
														style="width: 250px; height: 250px"></a>
													<p>watches</p>
													<p>Rs.899/-</p>
												</center>
											</div>
											
										
</div>
</body>
</html>
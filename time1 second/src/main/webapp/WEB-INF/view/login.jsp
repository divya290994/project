<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>
function validateForm() {
    var x = document.forms["myForm"]["fname"].value;
    if (x == null || x == "") {
        alert("Name must be filled out");
        return false;
    }
}

//function validateForm() {
    var x = document.forms["myForm"]["fname"].value;
    if (x == null || x == "") {
        alert("Please give Valid Password");
        return false;
    }

</script>


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


	<style>
form {
	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
<body>

	<center>
		<h2>Login Form</h2>
	</center>

	<form>


		<div class="imgcontainer">
			<img src="resource/img3/avatar.jpg" alt="Avatar" class="avatar"
				width="50" height="110">
		</div>
		  
		  <div class="container">
			<label><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="uname" required> 
				
				<br>
				
				<label><b>Password</b></label>
			<input type="password" placeholder="Enter Password" name="psw"
				required>

			<button type="submit">Login</button>
			
		</div>

		<div class="container" style="background-color: #f1f1f1">
			<button type="button" class="cancelbtn">Cancel</button>
			<span class="psw">Forgot <a href="#">password?</a></span>
		</div>
	</form>

</body>
</html>

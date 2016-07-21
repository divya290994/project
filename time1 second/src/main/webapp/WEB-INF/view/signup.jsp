
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
	<script>
		function validate() {

			if (document.myForm.UserName.value == "") {
				alert("Please provide your Username!");
				document.myForm.UserName.focus();
				return false;
			}

			if (document.myForm.EMail.value == "") {
				alert("Please provide your Email!");
				document.myForm.EMail.focus();
				return false;
			}

			if (document.myForm.PhoneNumber.value == ""
					|| isNaN(document.myForm.PhoneNumber.value)
					|| document.myForm.PhoneNumber.value.length != 5) {
				alert("Please provide a zip in the format #####.");
				document.myForm.PhoneNumber.focus();
				return false;
			}

			if (document.myForm.Address.value == "-1") {
				alert("Please provide your address!");
				return false;
			}
			return (true);
		}
	</script>

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

	<div class="row">
		<div
			class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">

			<form role="form">
				<h2>
					Please Signup <small>Attractive Discounts Available.</small>
				</h2>
				<hr class="colorgraph">
				<div class="row">

					<div class="form-group" role="POST">
						<input type="username" name="username" id="username"
							class="form-control input-lg" placeholder="User Name"
							tabindex="1" required="">
					</div>

					<div class="form-group">
						<input type="Email" name="Email" id="Email"
							class="form-control input-lg" placeholder="Email" tabindex="2"
							required="">
					</div>



					<div class="form-group">
						<input type="Address" name="Address" id="Address"
							class="form-control input-lg" placeholder="Address" tabindex="2"
							required="">
					</div>



					<div class="form-group">
						<input type="PhoneNumber" name="PhoneNumber" id="PhoneNumber"
							class="form-control input-lg" placeholder="PhoneNumber"
							tabindex="2" required="">
					</div>



				</div>
				<div class="control-group">
					<!-- Button -->
					<div class="controls">
						<a herf="home"><button class="btn btn-success">Login</button></a>
					</div>

				</div>
			</form>
		</div>
	</div>

	</div>
	</div>

	</div>
	</div>
	</div>


</body>
</html>
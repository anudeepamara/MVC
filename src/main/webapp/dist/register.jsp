<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}

/* Extra styles for the cancel button */
.cancelbtn {
	padding: 14px 20px;
	background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
	float: left;
	width: 50%;
}

/* Add padding to container elements */
.container {
	padding: 16px;
}

/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
	.cancelbtn, .signupbtn {
		width: 100%;
	}
}
</style>

</head>
<body>


	<div class="container">
		<div class="container"></div>
		<form id="regform" action="saveUser" modelAttribute="user"
			enctype="multipart/form-data">

			<img src="data:image/jpg;base64,${user.image}" width="90%" />


			<div class="container">
				<input class="form-control" name="Name" id="Name" placeholder="Name"
					type="text">
			</div>

			<div class="container">
				<div class="form-group has-error col-md-8">
					<input class="form-control" name="username" id="username"
						placeholder="user name" type="text">
				</div>

				<div class="container">
					<div class="form-group has-error col-md-8">
						<input class="form-control" name="email" id="email"
							placeholder="email" type="email">
					</div>

					<div class="container">
						<input class="form-control" name="password" id="password"
							placeholder="Password" type="password">
					</div>
					<div class="container">
						<input class="form-control" name="confromPassword"
							id="confirm_password" placeholder="confrom Password"
							type="password">
					</div>
					<div class="container">
						<tr>
							<td>StateNAME</td>
							<td><select name="locationId">
									<c:forEach var="location" items="${listlocations}">
										<option value="${location.locationId}">${location.locationName}</option>
									</c:forEach>
							</select><br /> <br /></td>
						</tr>
					</div>



					<div class="container">
						<td>Type</td> <input type="radio" id="student" name="type"
							value="student"> <label for="student">Student</label><br>
						<input type="radio" id="normal" name="type" value="normal">
						<label for="normal">Normal</label><br>
					</div>

					<div class="container">
						<td>ROLE</td> <input type="radio" id="user" name="role"
							value="user"> <label for="user">USER</label><br> <input
							type="radio" id="admin" name="role" value="admin"> <label
							for="admin">ADMIN</label><br>
					</div>
					
					<div class="form-group">
					<td>ADD PICTURE</td>
						<input class="form-control" name="file" id="image" type="file"><br>
						<br>
					</div>

					<input class="signupbtn" id="submit-button" type="submit"
						value="Sign Up"> <br>
					<div>
						<label>already user log in <a href="/">here</a>
						</label>
					</div>
					</p1>
				</div>
		</form>
	</div>
	<div class="form-group has-error col-md-6"></div>

	<div class="col-md-2"></div>

	</div>
</body>

<script>
	var password = document.getElementById("password"), confirm_password = document
			.getElementById("confirm_password");

	function validatePassword() {
		if (password.value != confirm_password.value) {
			confirm_password.setCustomValidity("Passwords Don't Match");
		} else {
			confirm_password.setCustomValidity('');
		}
	}

	password.onchange = validatePassword;
	confirm_password.onkeyup = validatePassword;
</script>

</html>
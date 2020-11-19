<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>New Passwords</title>
<style>

body {
	height: 100vh;
	width: 100%;
	background-image: url('bg11.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}

.nav {
	overflow: hidden;
	background-color: #bfbfbf;
	font-family: timesnewroman;
	align: center;
}

.nav a {
	float: right;
	padding: 12px;
	color: Black;
	font-size: 17px;
}

.input-group {
	align-content: center;
}

.box {
	font-family: timesnewroman;
	font-size: 17px;
}

.input-group {
	align-content: center;
}

.center-block {
	display: table;
	margin-left: auto;
	margin-right: auto;
}

h1 {
	background-color: black;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}
</style>
</head>
<center>
	<body class="box">
		<div>
			<nav class="nav">
				<h1>Update PassWrod</h1>
				<a href="homepage"><i class="fa fa-home" style="color: red"></i>Go
					Back Home</a> <a href="/"><i class="fa fa-sign-out"
					style="color: red"></i>Logut</a>
			</nav>
			<form action="/savepassword" commandname="user" method="post">
			<div class="container">
			<!-- 	<input class="form-control" name="Name" id="Name" placeholder="Name"
					type="text">
			</div>

			<div class="container">
				<div class="form-group has-error col-md-8">
					<input class="form-control" name="username" id="username"
						placeholder="user name" type="text">
				</div> -->
				<div class="container">
					<input class="form-control" name="password" id="password"
						placeholder="Password" type="password">
				</div>
				<div class="container">
					<input class="form-control" name="confromPassword"
						id="confirm_password" placeholder="confrom Password"
						type="password">
				</div>
				<br>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</body>
</html>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head style="background-color: #DC143C">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="webjars/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<style>
body {
	height: 100vh;
	width: 100%;
	background-image: url('f1.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}

h2 {
	background-color: red;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

.navbar {
	width: 100%;
	background-color: #555;
	overflow: auto;
}

.navbar a {
	float: left;
	padding: 12px;
	color: white;
	text-decoration: none;
	font-size: 17px;
}

.navbar a:hover {
	background-color: #000;
}

.active {
	background-color: #4CAF50;
}

@media screen and (max-width: 500px) {
	.navbar a {
		float: none;
		display: block;
	}
}
</style>

	<div align="center">

		<h2>SETTINGS</h2>

		<div class="navbar">
			<a class="active" href="homepage"><i class="fa fa-smile-o"></i>
				HOME</a> <a href="/newpasswords"><i class="fas fa-building"></i>
				UPDATE PASSWORD</a> <a href="/updatestate"><i class="fa fa-cogs"></i>
				UPDATE STATE </a> <a href="/history"><i class="fa fa-cart-plus"></i>ORDERS</a>

		</div>

	</div>
	<div></div>



</body>
</html>
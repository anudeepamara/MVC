<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head style="background-color: #DC143C">
<meta charset="utf-8" />
<title>Booking Manager</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" th:href="@{css/material.min.css}" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
	type="text/javascript" /></script>
<script src="scripts/material.min.js"
	th:src="@{scripts/material.min.js}" type="text/javascript" /></script>


<style>

/* Full-width input fields */
input[type=text] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
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

h2 {
	background-color: black;
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

button:hover {
	opacity: 0.8;
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

.loader_bg {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
}

.loader_bg {
	poistion: fixed;
	z-index: 999999;
	background: #fff;
	width: 100%;
	height: 100%;
}

.loader {
	border: 0 solid transparent;
	border-radius: 50%;
	width: 150px;
	height: 150px;
	position: absolute;
	top: calc(50vh - 75px);
	left: calc(50vw - 75px);
}

.loader:before, .loader:after {
	content: '';
	border: 1em solid #ff5733;
	border-radius: 50%;
	width: inherit;
	height: inherit;
	position: absolute;
	top: 0;
	left: 0;
	animation: loader 2s linear infinite;
	opacity: 0;
}

.loader:before {
	animation-delay: .5s;
}

@
Keyframes loader { 0%{
	transform: scale(0);
	opacity: 0;
}
50%{
opacity










:





 





1;
}
100%{
transform










:





 





scale










(1);
opacity










:





 





0;
}
}
</style>
<body>
	<div class="loader_bg" align="center">
		<div class="spinner-grow text-muted"></div>
		<div class="spinner-grow text-primary"></div>
		<div class="spinner-grow text-success"></div>
		<div class="spinner-grow text-info"></div>
		<div class="spinner-grow text-warning"></div>
		<div class="spinner-grow text-danger"></div>
		<div class="spinner-grow text-secondary"></div>
		<div class="spinner-grow text-dark"></div>
		<div class="spinner-grow text-light"></div>
	</div>

</body>
<body>
	<div align="center">

		<h1>FOOD CART</h1>

		<div class="navbar">
			<a href="register"><i class="fa fa-smile-o"></i> ADD USER</a> <a
				class="active" href="/restuarent"><i class="fas fa-building"></i>
				RESTUARENTS</a> <a href="food"><i class="fa fa-cogs"></i> SETTINGS </a>
			<a href="/type"><i class="fa fa-cart-plus"></i>CART</a>

		</div>
	</div>

</body>
<body>
	<div align="center">

		<h1>CRAVINGS</h1>
		<div align="center">

			<div class="row">
				<c:forEach items="${listfood}" var="food">
					<div class="col-md-3">
						<div class="thumbnail" data-toggle="modal" data-target="#mymodel">

							<img src="data:image/jpg;base64,${food.image}" width="90%" />

							<div class="caption">
								<h4>
									<c:out value="${food.foodName}"></c:out>
								</h4>
								<p>
									<c:out value="${food.description}"></c:out>
								</p>
								<p>
									<c:out value="${food.topings}"></c:out>
								</p>
								<p>
									<c:out value="${food.type}"></c:out>
								</p>
								<p>
									RS:
									<c:out value="${food.price}"></c:out>
								</p>
							</div>
							<button
								onclick="document.getElementById('id01').style.display='block'"
								style="width: auto;">
								<a href="/cartlist/<c:out value="${food.foodId}" />">ADD TO
									CART</a>
							</button>

						</div>

					</div>

				</c:forEach>
			</div>
		</div>
	</div>
</body>
<script>
	setTimeout(function() {
		$('.loader_bg').fadeToggle();
	}, 1500);
</script>

</html>
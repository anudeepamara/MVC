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



<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<style>
ul.breadcrumb {
	padding: 10px 16px;
	list-style: none;
	background-color: #eee;
}

ul.breadcrumb li {
	display: inline;
	font-size: 18px;
}

ul.breadcrumb li+li:before {
	padding: 8px;
	color: black;
	content: "/\00a0";
}

ul.breadcrumb li a {
	color: #0275d8;
	text-decoration: none;
}

ul.breadcrumb li a:hover {
	color: #01447e;
	text-decoration: underline;
}

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
	background-color: #0000FF;
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

<body>
	<div align="center">

		<h1>FAST FOOD</h1>

			<ul class="breadcrumb">
				<li><a href="register"><i class="fa fa-smile-o"></i> ADD
						USER</a></li>
				<li><aclass ="active" href="/restuarent"> <i
						class="fas fa-building"></i> RESTUARENTS</a></aclass></li>
				<li><a href="/viewsetting"><i class="fa fa-cogs"></i>
						SETTINGS </a></li>
				<li><a href="/cartlistt"><i class="fa fa-cart-plus"></i>CART</a></li>
			</ul>
		</div>
	</div>

</body>

<body>
<body>
	<div align="center">
		<h1>Restaurant Details</h1>
		<div align="center">

			<div class="row">

				<c:forEach items="${listrest}" var="restuarent">
					<div class="col-md-3">

						<div class="thumbnail" data-toggle="modal" data-target="#mymodel">
							<img src="data:image/jpg;base64,${restuarent.image}" width="200"
								height="150" />

							<div class="caption">

								<h4>
									<c:out value="${restuarent.restuarentName}"></c:out>
								</h4>
								<p>
									<c:out value="${restuarent.city}"></c:out>
								</p>

							</div>
							<button
								onclick="document.getElementById('id01').style.display='block'"
								style="width: auto;">
								<a href="/foodlist/<c:out value="${restuarent.restuarentId}" />">SHOW
									ITEMS </a>
							</button>

						</div>

					</div>

				</c:forEach>
			</div>
		</div>
</body>

</html>
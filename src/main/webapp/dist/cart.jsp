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

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

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
.cart-header {
	font-weight: bold;
	font-size: 1.25em;
	color: #333;
}

.cart-column {
	display: flex;
	align-items: center;
	border-bottom: 1px solid black;
	margin-right: 1.5em;
	padding-bottom: 10px;
	margin-top: 10px;
}

.cart-row {
	display: flex;
}

.cart-item {
	width: 45%;
}

.cart-price {
	width: 20%;
	font-size: 1.2em;
	color: #333;
}

.cart-quantity {
	width: 35%;
}

.cart-item-title {
	color: #333;
	margin-left: .5em;
	font-size: 1.2em;
}

.cart-item-image {
	width: 75px;
	height: auto;
	border-radius: 10px;
}

.btn-danger {
	color: white;
	background-color: #EB5757;
	border: none;
	border-radius: .3em;
	font-weight: bold;
}

.btn-danger:hover {
	background-color: #CC4C4C;
}

.cart-quantity-input {
	height: 34px;
	width: 50px;
	border-radius: 5px;
	border: 1px solid #56CCF2;
	background-color: #eee;
	color: #333;
	padding: 0;
	text-align: center;
	font-size: 1.2em;
	margin-right: 25px;
}

.cart-row:last-child {
	border-bottom: 1px solid black;
}

.cart-row:last-child .cart-column {
	border: none;
}

.cart-total {
	text-align: end;
	margin-top: 10px;
	margin-right: 10px;
}

.cart-total-title {
	font-weight: bold;
	font-size: 1.5em;
	color: black;
	margin-right: 20px;
}

.cart-total-price {
	color: #333;
	font-size: 1.1em;
}

.btn-purchase {
	display: block;
	margin: 40px auto 80px auto;
	font-size: 1.75em;
}
</style>
<style>
body {
	height: 100vh;
	width: 100%;
	background-image: url('bg7.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}

.btn-primary {
	color: white;
	background-color: #56CCF2;
	border: none;
	border-radius: .3em;
	font-weight: bold;
}

.btn-primary:hover {
	background-color: #2D9CDB;
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
	background-color: blue;
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

.loader_bg {
	poistion: absoulte;
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
	top: 0; left : 0; right : 0; bottom : 0;
	animation: loader 2s linear infinite;
	opacity: 0;
	left: 0;
	right: 0;
	bottom: 0;
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
		<div class="spinner-border text-muted"></div>
		<div class="spinner-border text-primary"></div>
		<div class="spinner-border text-success"></div>
		<div class="spinner-border text-info"></div>
		<div class="spinner-border text-warning"></div>
		<div class="spinner-border text-danger"></div>
		<div class="spinner-border text-secondary"></div>
		<div class="spinner-border text-dark"></div>
		<div class="spinner-border text-light"></div>
	</div>

</body>
<body>
	<div align="center">


		<div class="navbar">
			<a href="register"><i class="fa fa-smile-o"></i> ADD USER</a> <a
				href="/restuarent"><i class="fas fa-building"></i> RESTUARENTS</a> <a
				href="food"><i class="fa fa-cogs"></i> SETTINGS </a> <a
				class="active" href="/type"><i class="fa fa-cart-plus"></i>CART</a>

		</div>
	</div>

</body>


<body>
<body>
	<div class="container">
		<h1>CART</h1>

		<div>
			<form:form modelAttribute="carts" action="/order">

				<table class="table table-sm table-dark">
					<thead>
						<tr>
							<th>Food id</th>
							<th>Food name</th>
							<th>Food price</th>
							<th>Delete Item</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="t" items="${carts}">
							<tr>
								<td>${t.foodId}</td>

								<td>${t.foodName }</td>

								<td>${t.price}</td>

								<td><a href="/delete/<c:out value="${t.foodId}" />"><input
										type="button" value="delete item" /></a>
								<td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</form:form>
		</div>
		<button class="btn btn-primary btn-purchase" type="button">

			<a href="/ordernow" />ORDER NOW
		</button>
		</a>




	</div>
</body>
<script>
	setTimeout(function() {
		$('.loader_bg').fadeToggle();
	}, 1500);
</script>
</html>
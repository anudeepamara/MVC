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

<style>
body {
	height: 100vh;
	width: 100%;
	background-image: url('bg4.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
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

button:hover {
	opacity: 0.8;
}

.shop-item-price {
	flex-grow: 1;
	color: #333;
}

.shop-items {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
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
	background-color: #FF0000;
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

#food {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#food td, #food th {
	border: 1px solid #ddd;
	padding: 8px;
}

#food tr:nth-child(even) {
	background-color: #f2f2f2;
}

#food tr:hover {
	background-color: #ddd;
}

#food th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
	body
	{
	font-family
	:
	Arial
	,
	Helvetica
	,
	sans-serif;
}
</style>

<body>
<body>



	<div align="Center">
		<h1>Orders</h1>
		<form:form modelAttribute="item" id="food">
			<c:forEach var="t" items="${map}">
				<p>
					<b>order id</b> :${t.key.orderItemId} &nbsp; &nbsp; &nbsp;<b>order
						date :</b> ${t.key.date} &nbsp; &nbsp; &nbsp;<b>order time:</b>
					${t.key.time} &nbsp; &nbsp; &nbsp;<b>Total Price:</b>
					${t.key.totalPrice}
				</p>


				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Food Id</th>
							<th>Food Name</th>
							<th>Food Price</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="t" items="${t.value}">


							<img src="data:image/jpg;base64,${t.image}" width="200"
								height="150" />
							<tr>
								<td>${t.foodId}</td>
								<td>${t.foodName}</td>
								<td>${t.price}</td>

							</tr>

						</c:forEach>

					</tbody>

				</table>
			</c:forEach>

		</form:form>

	</div>
</body>
</html>
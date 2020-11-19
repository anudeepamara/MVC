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
body {
	height: 100vh;
	width: 100%;
	background-image: url('car5.jpg');
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
		<body>
			<div align="center">
				<h2>Restaurant Details</h2>
				<form:form action="/saverestFood" method="post"
					modelAttribute="restuarent">
					<table class="table table-hover">

						<div class="form-group">
							<label for="location">Location Name:</label> <select
								name="locationId">
								<c:forEach items="${listlocations}" var="location">
									<option value="${location.locationId}">${location.locationName}</option>
								</c:forEach>
							</select> <br />
						</div>

						<div class="form-group">
							<label for="restuarent">Restuarent Name:</label> <select
								name="restuarentId">
								<c:forEach items="${listrestuarent}" var="restuatrent">
									<option value="${restuatrent.restuarentId}">${restuatrent.restuarentName}</option>
								</c:forEach>
							</select> <br />
						</div>
						<tr>
							<td>RESTUARENT NAME</td>
							<td><form:input type="text" name="restuarentName"
									path="restuarentName" /> <span id="lengtherror"></span></td>
						</tr>
						<tr>
							<td>CITY</td>
							<td><form:input type="text" name="City" path="City" /> <span
								id="lengtherror"></span></td>
						</tr>

					</table>
					<button type="submit">ADD RESTUARENT</button>



				</form:form>

			</div>


		</body>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<title>Update District</title>
<style>
body {
	height: 100vh;
	width: 100%;
	background-image: url('bg10.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}

.nav {
	overflow: hidden;
	background-color: #bfbfbf;
	font-family: timesnewroman;
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
</style>
</head>
<center>
	<body class="box">
		<div>
			<nav class="nav">
				<h1>Update State</h1>
				<a href="homepage"><i class="fa fa-home" style="color: red"></i>Go
					Back Home</a> <a href="/"><i class="fa fa-sign-out"
					style="color: red"></i>Logut</a>
			</nav>
			<div class="input-group">
				<form action="/savestate">

					<label>District</label> <input type="text" class="form-control"
						name="locationName" id="locationId" placeholder="District"
						required value=${location.location.locationName } disabled="true">
					<br> <br> <label>Select New District</label><select
						name="locationId">
						<c:forEach var="us" items="${user}">
							<option value="<c:out value="${us.locationId}"></c:out>">${us.locationName}</option>
						</c:forEach>
					</select> <br> <br> <input class="btn btn-primary" type="submit"
						value="Update District">
				</form>
			</div>
		</div>
	</body>
</html>

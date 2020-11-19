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
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="resources/css/navbar.css">
<style>
select {
	width: 100%;
	height: 40px;
	border-style: groove;
	border-bottom-left-radius: 20px;
	border-top-left-radius: 20px;
}

body {
	height: 100vh;
	width: 100%;
	background-image: url('bg8.jpg');
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
<body>
	<%-- <nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand pull-left" href="#">RestuarentApp</a> <label
					class="nav-user"><c:out value="${user.userName}"></c:out></label>
			</div>
			<ul class="nav navbar-nav">
				<li class="nav-item"><a href="goSetting"><i
						class="fa fa-bars fa-3x" aria-hidden="true"></i></a></li>

			</ul>
		</div>
	</nav> --%>
	<div class="container">
		<div class="col-md-3"></div>
		<form id="regform" action="saverestImage" method="post"
			enctype="multipart/form-data">

			<div class="col-md-6 m-auto">
				<span id="msg">image uploaded successfully</span>

				<div class="form-group">
					<label id="label" class="form-label m-0 p-1 pull-left" for="food"><h3>Select
							Food:</h3></label> <select name="restuarentId">
						<c:forEach items="${restuarent}" var="restuarent">
							<option class="option" value="${restuarent.restuarentId}">${restuarent.restuarentName}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">

					<input class="form-control" name="file" id="image" type="file"><br>
					<br>
				</div>
				<input class="btn btn-primary btn-block pool-right"
					id="submit-button" type="submit" value="upload"> <br>
			</div>

			<div class="col-md-3"></div>

		</form>
		<div class="col-md-2"></div>



	</div>
	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
	<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
	<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>
	<script type="text/javascript" src="/resources/js/registerValidate.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {

			$("#msg").hide();
			$('#submit-button').on('click', function() {
				$("#msg").show();
				setTimeout(function() {
					$("#msg").hide();
				}, 100000);
			});

		});
	</script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head style="background-color: #808080">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="webjars/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Tickets Manager</title>
</head>
<script>
	$(document).ready(function() {
		$("button").click(function() {
			var div = $("div");
			div.animate({
				height : '300px',
				opacity : '0.4'
			}, "slow");
			div.animate({
				width : '300px',
				opacity : '0.8'
			}, "slow");
			div.animate({
				height : '100px',
				opacity : '0.4'
			}, "slow");
			div.animate({
				width : '100px',
				opacity : '0.8'
			}, "slow");
		});
	});
</script>

<style>
h1 {
	background-color: #0000FF;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

body {
	height: 100vh;
	width: 100%;
	background-image: url('img4.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}
</style>
<body>
	<button>Start Animation</button>

	<div>
		<h1>Item Has Been Sucessfully Placed</h1>
		<a href="homepage">Home</a>

	</div>





</body>
</html>
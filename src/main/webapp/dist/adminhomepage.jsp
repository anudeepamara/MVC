<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
html, body {
	height: 100%;
}

.carousel, .item, .active {
	height: 100%;
}

.carousel-inner {
	height: 100%;
}

.fill {
	width: 100%;
	height: 100%;
	background-position: center;
	background-size: cover;
}

.row::after {
	content: "";
	clear: both;
	display: block;
}

[class*="col-"] {
	float: left;
	padding: 15px;
}

.aside {
	background-color: #33b5e5;
	padding: 15px;
	color: #ffffff;
	text-align: center;
	font-size: 14px;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}
/* For mobile phones: */
[class*="col-"] {
	width: 100%;
}

@media only screen and (min-width: 600px) {
	/* For tablets: */
	.col-s-1 {
		width: 8.33%;
	}
	.col-s-2 {
		width: 16.66%;
	}
	.col-s-3 {
		width: 25%;
	}
	.col-s-4 {
		width: 33.33%;
	}
	.col-s-5 {
		width: 41.66%;
	}
	.col-s-6 {
		width: 50%;
	}
	.col-s-7 {
		width: 58.33%;
	}
	.col-s-8 {
		width: 66.66%;
	}
	.col-s-9 {
		width: 75%;
	}
	.col-s-10 {
		width: 83.33%;
	}
	.col-s-11 {
		width: 91.66%;
	}
	.col-s-12 {
		width: 100%;
	}
}

@media only screen and (min-width: 768px) {
	/* For desktop: */
	.col-1 {
		width: 8.33%;
	}
	.col-2 {
		width: 16.66%;
	}
	.col-3 {
		width: 50%;
	}
	.col-4 {
		width: 33.33%;
	}
	.col-5 {
		width: 41.66%;
	}
	.col-6 {
		width: 100%;
	}
	.col-7 {
		width: 58.33%;
	}
	.col-8 {
		width: 66.66%;
	}
	.col-9 {
		width: 75%;
	}
	.col-10 {
		width: 83.33%;
	}
	.col-11 {
		width: 91.66%;
	}
	.col-12 {
		width: 100%;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/"> FAST FOOD</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/newRestuarent"><span
							class="glyphicon glyphicon-cutlery"></span>ADD RESTUARENT</a></li>
					<li><a href="/newFood"><span class='fas fa-hamburger'></span>ADD
							FOODS</a></li>
					<li><a href="/"><span class="fa fa-sign-out"></span>LOGOUT</a>
					</li>

					<%-- 	<c:forEach items="${us}" var="user">
						<ul class="nav navbar-nav">
							<li class="nav-item"><img
								src="data:image/jpg;base64,${user.image }" width="48"
								height="58" /></li>
						</ul>
					</c:forEach> --%>

					<c:forEach items="${us}" var="user">

						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="/viewsetting"><span
								class="glyphicon glyphicon-cog"></span> <img
								src="data:image/jpg;base64,${user.image }" width="38"
								height="58" /> </a>
							<ul class="dropdown-menu">

								<li><a href="/edit">EDIT RESTUARENT </a></li>
								<li><a href="/edituser">EDIT USER DETAILS </a></li>
								<li><a href="/editfood">EDIT FOOD DETAILS </a></li>


								<li><a href="/uploadFoodImage
">ADD Images To Food</a></li>
								<li><a href="/uploadRestuarentImage
">ADD Images To
										Restuarent</a></li>

								<li><a href="/uploaduserImage">EDIT USER IMAGE </a></li>




							</ul></li>
					</c:forEach>

				</ul>
			</div>
		</div>
	</nav>
	<div class="container fill">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img class="fill" src="bg5.jpg" alt="Los Angeles"
						style="width: 100%; height: 100vh; -webkit-background-size: cover; background-size: cover;">
				</div>

				<div class="item">
					<img class="fill" src="bg6.jpg" alt="Chicago"
						style="width: 100%; height: 100vh; -webkit-background-size: cover; background-size: cover;">
				</div>

				<div class="item">
					<img class="fill" src="f3.jpg" alt="New york"
						style="width: 100%; height: 100vh; -webkit-background-size: cover; background-size: cover;">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
</body>
</html>
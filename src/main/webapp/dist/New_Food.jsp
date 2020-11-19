<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
	$(document).ready(function() {
		$("#hide").click(function() {
			$("p").hide(1000);

		});
		$("#show").click(function() {
			$("p").show();
		});
	});

	//this below method for fading.

	/* $(document).ready(function(){
		  $("button").click(function(){
		    $("#div1").fadeIn();
		    $("#div2").fadeIn("slow");
		    $("#div1").fadeOut();
		    $("#div2").fadeOut("slow");
		  });
		}); */

	$(document).ready(function() {
		$("#flip").click(function() {
			$("#panel").slideDown("slow");
			$("#panel").slideUp("slow");

		});
		$("#stop").click(function() {
			$("#panel").stop();
		});
	});
</script>


<script>
	document.getElementById("p2").style.color = "blue";
	document.getElementById("p2").style.fontFamily = "Arial";
	document.getElementById("p2").style.fontSize = "larger";
</script>


<style>
#panel, #flip {
	padding: 5px;
	text-align: center;
	background-color: #e5eecc;
	border: solid 1px #c3c3c3;
}

#panel {
	padding: 50px;
	display: none;
}

input:focus {
	background-color: chartreuse;
}

* {
	box-sizing: border-box;
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

html {
	font-family: "Lucida Sans", sans-serif;
}

.header {
	background-color: #9933cc;
	color: #ffffff;
	padding: 15px;
}

.menu ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.menu li {
	padding: 8px;
	margin-bottom: 7px;
	background-color: #33b5e5;
	color: #ffffff;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.menu li:hover {
	background-color: #0099cc;
}

.aside {
	background-color: #33b5e5;
	padding: 15px;
	color: #ffffff;
	text-align: center;
	font-size: 14px;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.footer {
	background-color: #0099cc;
	color: #ffffff;
	text-align: center;
	font-size: 12px;
	padding: 15px;
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
		width: 25%;
	}
	.col-4 {
		width: 33.33%;
	}
	.col-5 {
		width: 41.66%;
	}
	.col-6 {
		width: 50%;
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
<script>
//Testing media queries with jQuery
//Using matchMedia
//By Ravenous - July, 2014

(function ($) {
	/*
	 * We need to turn it into a function.
	 * To apply the changes both on document ready and when we resize the browser.
	 */

	function mediaSize() {
		/* Set the matchMedia */
		if (window.matchMedia("(min-width: 768px)").matches) {
			/* Changes when we reach the min-width  */
			$("body").css("background", "#222");
			$("strong").css("color", "tomato");
		} else {
			/* Reset for CSS changes – Still need a better way to do this! */
			$("body, strong").removeAttr("style");
		}
	}

	/* Call the function */
	mediaSize();
	/* Attach the function to the resize event listener */
	window.addEventListener("resize", mediaSize, false);
})(jQuery);

</script>
</head>
<body>



	<div class="header">
		<h1>FOOD WALA</h1>
	</div>

	<div class="row">
		<div class="col-3 menu">
			<ul>
				<li>The BIRYANI</li>
				<li>The JUICE</li>
				<li>The SALAD</li>
				<li>The FRUITS</li>
			</ul>
		</div>

		<div id="flip" class="col-6">
			<div id="panel">The Biryani Recipie !</div>
			<h1 onclick="this.innerHTML='Ooops!Birayani is over..'">THE
				BIRYANI</h1>
			<p id="p2">Biryani is a mixed rice dish with its origins among
				the Muslims of the Indian subcontinent. It can be compared to mixing
				a curry, later combining it with semi-cooked rice separately. This
				dish is especially popular throughout the Indian subcontinent, as
				well as among the diaspora from the region.</p>

			<p id="demo"></p>

		</div>

		<div id="div2" class="col-3 right">
			<div class="aside">
				<h2>What?</h2>
				<p>Biryani is Orgin at south india. Hyderabad is famous for
					different styles of biryanis/p>
				<h2>Ingredeints?</h2>
				<p>Meat; Nuts; Dried fruits; Potatoes.</p>
				<h2>How?</h2>
				<p>There are many types of biryani, whose names are often based
					on their region of origin. For example, Sindhi biryani developed in
					the Sindh region of what is now Pakistan, and Hyderabadi biryani
					developed in the city of Hyderabad in South India. Some have taken
					the name of the shop that sells it, for example: Haji Biriyani,
					Haji Nanna Biriyani in Old Dhaka,[29] Fakhruddin Biriyani in
					Dhaka,[30][31] Students biryani in Karachi, Lucky biryani in
					Bandra, Mumbai and Baghdadi biryani in Colaba,</p>

			</div>
		</div>
		<button id="hide">Hide</button>
		<button id="show">Show</button>
		<button id="stop">Stop sliding</button>
		<button onclick="displayDate()">The time is?</button>
		<button id="myBtn">HELP</button>
		<button onclick="myFunction()">CHANGE ME</button>




		<!-- 		<button>FADE</button><br><br>
 -->

	</div>

	<div class="footer"></div>



</body>

<title>Add Food</title>
</head>
<body>
	<div align="center">
		<h1>Add Food</h1>
		<form:form name="myform" action="/saveFood"
			onsubmit="return validateform()" method="post" modelAttribute="food">

			<table class="table table-hover">

				<div class="form-group">
					<label for="restuarent">Restuarent Name:</label> <select name="restuarentId">
						<c:forEach items="${listrestuarent}" var="restuatrent">
							<option value="${restuatrent.restuarentId}">${restuatrent.restuarentName}</option>
						</c:forEach>
					</select> <br />
				</div>

				<tr>
					<td>Food Name</td>
					<td><form:input typer="text" id="fname"
							onchange="myFunction()" path="foodName" /></td>
				</tr>

				<tr>
					<td>DESCRIPTION</td>
					<td><form:input typer="text" id="description"
							onchange="myFunction()" path="description" /></td>
				</tr>

				<tr>
					<td>Type</td>
					<td><form:radiobutton path="type" value="veg" />VEG <form:radiobutton
							path="type" value="nonveg" />NONVEG</td>
				</tr>
				<tr>
					<td>Topings</td>
					<td><form:checkbox path="topings" value="Cheese" />CHEESE<form:checkbox
							path="topings" value="Sause" />SAUSE <form:checkbox
							path="topings" value="Masala" />MASALA</td>
				</tr>
				<tr>
					<td>Price</td>
					<td><form:input type="numeric" path="price" /></td>
				</tr>
			</table>
			<button type="submit">ADD FOOD</button>
		</form:form>
	<
		<%-- <form method="POST">
			<input type="checkbox" name="checkbox" value="check" /> <input
				type="submit" value="submit"
				onclick="if(!this.form.checkbox.checked){alert('Are You Agree to Proceed!!');return false}" />
		</form> --%>
		
		
	
	</div>
	<a href="/uploaduserImage">ADD IMAGE</a>

</body>
<!-- <script type="text/javascript" src="/resources/js/app.js"></script> -->

<script>
	//the below function for changing the css by elementId.
	document.getElementById("p2").style.color = "green";
	document.getElementById("p2").style.fontFamily = "Arial";
	document.getElementById("p2").style.fontSize = "larger";

	//the below functions for display the time
	function displayDate() {
		document.getElementById("demo").innerHTML = Date();
	}

	//the below function for Uppercasing the words
	function myFunction() {
		var x = document.getElementById("fname");
		x.value = x.value.toUpperCase();
	}

	//this method is used for AddEventListner	
	document.getElementById("myBtn").addEventListener("click", myFunction);

	function myFunction() {
		alert("U can ContactOur Coustomer Care...!");
	}

	//this method is used to change the colour of <P>.
	function myFunction() {
		var myCollection = document.getElementsByTagName("p");
		var i;
		for (i = 0; i < myCollection.length; i++) {
			myCollection[i].style.color = "blue";
		}
	}
</script>


</html>
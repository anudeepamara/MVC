<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js"></script>
<link rel="stylesheet"
	href="webjars/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
h1 {
	background-color: black;
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
	background-image: url('cafe.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}
</style>
<!-- <style>
h1 {
	background-color: #008080;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

h2 {
	background-color: #00FF00;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

h3 {
	background-color: #191970;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

h4 {
	background-color: #A9A9A9;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

body {
	margin: 0;
	padding: 0;
}

#box1 {
	height: 100vh;
	width: 100%;
	background-image: url('p4.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}

#box2 {
	height: 100vh;
	width: 100%;
	background-image: url('p2.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}

#box3 {
	height: 100vh;
	width: 100%;
	background-image: url('p3.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}

h1 {
	font-family: arial black;
	font-size: 50px;
	color: white;
	margin: 0px;
	text-align: center;
	display: table-cell;
	vertical-align: middle;
}
</style>
</head>
<body>
	<div id="box1">
		<h2>
			Kalinga
			</h1>
	</div>
	<div id="box2">
		<h3>
			Block
			</h1>
	</div>
	<div id="box3">
		<h4>
			Application
			</h1>
	</div>


</body>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

h1 {
	background-color: #00BFFF;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}
</style> -->
<title>ADD RESTUARENTS</title>
</head>
<body>
	<div align="center">
		<h1>ADD RESTUARENTS</h1>

		<form:form action="/saverestFood" id="myForm" method="post"
			name="restuarent" modelAttribute="restuarent">
			<table class="table table-hover">


				<div class="form-group">
					<label for="location">Location Name:</label> <select
						name="locationId">
						<c:forEach items="${listlocations}" var="location">
							<option value="${location.locationId}">${location.locationName}</option>
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
					<td><form:input type="text" name="City" path="City"  />
						<span id="lengtherror"></span></td>
				</tr>

			</table>
			<button type="submit">ADD RESTUARENT</button>
		</form:form>
	</div>
	<a href="/uploadRestuarentImage">ADD IMAGE</a>


</body>
<script type="text/javascript" src="/resources/js/booking.js"></script>
<script>
$(function(){
	var $registerForm=$('#myForm');
	jQuerey.validator.addMethod("lettersonly", function(value, element){
		return this.optional(element)||/^[a-z0-9\-]+$/i.test(value);	
	}, "only Alphabets and numbers only Allowed");
	
	if($registerForm.length){
		$registerForm.validate({
			rules:{
				
				"blockName":{
					required:true,
					lettersonly:true,
				}
				};
				
			messages:{
				"blockName":{
					required: 'Name is Mandatory',
					lettersonly: "regestration format not valid"
				}
			}
				});
				
			
		});
	

</script>


<script>
    $('#check')
            .click(
                    function() {
                        var name = $('#name').val();
                        var lengthname = name.length;

 

                        if (lengthname > 7) {
                            $('#lengtherror').show();
                            $('#lengtherror')
                                    .text(
                                            'name length is exceeded and it should be less than 8');
                            return false;
                        }

 

                        return true;
  
</script>

</html>
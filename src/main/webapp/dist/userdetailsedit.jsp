<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%-- <script src="<c:url value="/resources/js/app.js" />"></script> --%>
<title>Insert title here</title>
</head>

<style>
body {
	height: 100vh;
	width: 100%;
	background-image: url('car6.jpg');
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
		<h1>Update User</h1>
		<form:form name="myform" action="/updateuser"
			onsubmit="return validate()" method="post" modelAttribute="user">
			<table>
				<tr>
					<td>
						<div class="form-group">
							<label for="user">User Naame:</label> <select name="userId">
								<c:forEach items="${users}" var="u">
									<option value="${u.userId}">${u.username}</option>
								</c:forEach>
							</select> <br />
						</div>
					</td>

				</tr>

				<tr>
					<td>Name</td>
					<td><form:input typer="text" id="name" onchange="myFunction()"
							path="name" /></td>
				</tr>


				<tr>
					<td>EMAIL</td>
					<td><form:input typer="email" id="wmail"
							onchange="myFunction()" path="email" /></td>
				</tr>


				<%-- <tr>
<td>userName</td>
<td><form:input typer="text" id="description"
onchange="myFunction()" path="userName" /></td>
</tr> --%>

				<tr>
					<td>password</td>
					<td><form:input typer="text" id="description"
							onchange="myFunction()" path="password" /></td>
				</tr>

				<tr>
					<td>type</td>
					<td><form:radiobutton path="type" value="student" />Student <form:radiobutton
							path="type" value="Employee" />Employee</td>
				</tr>

				<tr>
					<td>loginType</td>
					<td><form:radiobutton path="role" value="Admin" />Admin <form:radiobutton
							path="role" value="user" />User</td>
				</tr>

				<%-- <tr>
<td>state</td>
<td><form:input type="numeric" path="state" /></td>
</tr> --%>
			</table>
			<button type="submit">UPDATE USER</button>

		</form:form>
</body>
</html>

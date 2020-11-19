<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>


<html>
<head>
        <meta charset="UTF-8">
        <meta name="viewport"
	content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Login</title>
        <link rel="stylesheet" href="login-style.css">
        <link
	href="https://fonts.googleapis.com/css?family=Raleway:300,400,700&display=swap"
	rel="stylesheet">
    </head>

<style>
body {
	font-family: 'Raleway', sans-serif;
	background: #000;
}

.background {
	background: url(b1.jpg) no-repeat;
	background-size: cover;
	height: 100vh;
	display: flex;
}

.text, .box {
	margin-top: 45vh;
	flex: 1;
}

.text {
	margin-left: 10%;
	font-weight: 300px;
}

.box {
	margin-left: 25%;
}

.text h1 {
	font-size: 70px;
	color: #fff;
	font-weight: 500;
}

.text p {
	font-size: 20px;
	color: #fff;
	font-weight: 300;
}

.text p a {
	color: #fff;
	font-weight: 700;
}

.form {
	background: transparent;
	color: #fff;
	box-sizing: border-box;
	display: flex;
	flex-direction: column;
	width: 250px;
}

input {
	margin: 20px 0;
	padding: 10px;
	background: transparent;
	border: none;
	outline: none;
	color: #fff;
	font-family: 'Raleway', sans-serif;
}

.username, .password {
	border-bottom: 1px solid #fff;
}

.button {
	background: transparent;
	border: 1px solid #fff;
	color: #fff;
	font-size: 18px;
}

.button:hover {
	background: #fff;
	color: #000;
}
</style>

<body>
    <main>
        <div class="background">
            <div class="text">
                <h1>Login</h1>
                <p>No Account? <a href="register">Sign up</a>
			</p>
            </div>
            <div class="box">
                <form action="/admin" modelattribute="admin" method="post" class="form" >
                
                    <input type="text" class="adminName" name="adminName" 
					placeholder="adminName" required>
                    <input type="password" class="password" name="password"
					placeholder="Password" required>
                    <input type="submit" class="button" value="Login">
                </form>
            </div>
        </div>
    </main>
</body>
</html>






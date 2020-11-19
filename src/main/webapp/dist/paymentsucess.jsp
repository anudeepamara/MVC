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
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Simple Success Confirmation Popup</title>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body {
	font-family: Arial;
	font-size: 17px;
	padding: 8px;
}

* {
	box-sizing: border-box;
}

.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	margin: 0 -16px;
}

.col-25 {
	-ms-flex: 25%; /* IE10 */
	flex: 25%;
}

.col-50 {
	-ms-flex: 50%; /* IE10 */
	flex: 50%;
}

.col-75 {
	-ms-flex: 75%; /* IE10 */
	flex: 75%;
}

.col-25, .col-50, .col-75 {
	padding: 0 16px;
}

.container {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

input[type=text] {
	width: 100%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

.btn {
	background-color: #4CAF50;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	width: 100%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: #45a049;
}

a {
	color: #2196F3;
}

hr {
	border: 1px solid lightgrey;
}

span.price {
	float: right;
	color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
	.col-25 {
		margin-bottom: 20px;
	}
}
</style>
<style type="text/css">
body {
	font-family: 'Varela Round', sans-serif;
}

.modal-confirm {
	color: #636363;
	width: 325px;
}

.modal-confirm .modal-content {
	padding: 20px;
	border-radius: 5px;
	border: none;
}

.modal-confirm .modal-header {
	border-bottom: none;
	position: relative;
}

.modal-confirm h4 {
	text-align: center;
	font-size: 26px;
	margin: 30px 0 -15px;
}

.modal-confirm .form-control, .modal-confirm .btn {
	min-height: 40px;
	border-radius: 3px;
}

.modal-confirm .close {
	position: absolute;
	top: -5px;
	right: -5px;
}

.modal-confirm .modal-footer {
	border: none;
	text-align: center;
	border-radius: 5px;
	font-size: 13px;
}

.modal-confirm .icon-box {
	color: #fff;
	position: absolute;
	margin: 0 auto;
	left: 0;
	right: 0;
	top: -70px;
	width: 95px;
	height: 95px;
	border-radius: 50%;
	z-index: 9;
	background: #82ce34;
	padding: 15px;
	text-align: center;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
}

.modal-confirm .icon-box i {
	font-size: 58px;
	position: relative;
	top: 3px;
}

.modal-confirm.modal-dialog {
	margin-top: 80px;
}

.modal-confirm .btn {
	color: #fff;
	border-radius: 4px;
	background: #82ce34;
	text-decoration: none;
	transition: all 0.4s;
	line-height: normal;
	border: none;
}

.modal-confirm .btn:hover, .modal-confirm .btn:focus {
	background: #6fb32b;
	outline: none;
}

.trigger-btn {
	display: inline-block;
	margin: 100px auto;
}
</style>
</head>
<body>

	<div class="row">
		<div class="col-75">
			<div class="container">
				<form action="/action_page.php">

					<div class="row">
						<div class="col-50">
							<h3>Billing Address</h3>
							<label for="fname"><i class="fa fa-user"></i> Full Name</label> <input
								type="text" id="fname" name="firstname"
								placeholder="John M. Doe"> <label for="email"><i
								class="fa fa-envelope"></i> Email</label> <input type="text" id="email"
								name="email" placeholder="john@example.com"> <label
								for="adr"><i class="fa fa-address-card-o"></i> Address</label> <input
								type="text" id="adr" name="address"
								placeholder="542 W. 15th Street"> <label for="city"><i
								class="fa fa-institution"></i> City</label> <input type="text" id="city"
								name="city" placeholder="New York">

							<div class="row">
								<div class="col-50">
									<label for="state">State</label> <input type="text" id="state"
										name="state" placeholder="NY">
								</div>
								<div class="col-50">
									<label for="zip">Zip</label> <input type="text" id="zip"
										name="zip" placeholder="10001">
								</div>
							</div>
						</div>

						<div class="col-50">
							<h3>Payment</h3>
							<label for="fname">Accepted Cards</label>
							<div class="icon-container">
								<i class="fa fa-cc-visa" style="color: navy;"></i> <i
									class="fa fa-cc-amex" style="color: blue;"></i> <i
									class="fa fa-cc-mastercard" style="color: red;"></i> <i
									class="fa fa-cc-discover" style="color: orange;"></i>
							</div>
							<label for="cname">Name on Card</label> <input type="text"
								id="cname" name="cardname" placeholder="John More Doe">
							<label for="ccnum">Credit card number</label> <input type="text"
								id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
							<label for="expmonth">Exp Month</label> <input type="text"
								id="expmonth" name="expmonth" placeholder="September">
							<div class="row">
								<div class="col-50">
									<label for="expyear">Exp Year</label> <input type="text"
										id="expyear" name="expyear" placeholder="2018">
								</div>
								<div class="col-50">
									<label for="cvv">CVV</label> <input type="text" id="cvv"
										name="cvv" placeholder="352">
								</div>
							</div>
						</div>

					</div>
					<div class="text-center">
					<label> <input type="checkbox" checked="checked"
						name="sameadr"> Shipping address same as billing
					</label><a href="#myModal" class="btn" data-toggle="modal">PROCCED TO CHECKOUT</a>
					</div>
				</form>
			</div>
		</div>
			<!-- <div class="text-center">
				Button HTML (to Trigger Modal)
				<a href="#myModal" class="trigger-btn" data-toggle="modal">Click
					to Open Confirm Modal</a>
			</div> -->

			<!-- Modal HTML -->
			<div id="myModal" class="modal fade">
				<div class="modal-dialog modal-confirm">
					<div class="modal-content">
						<div class="modal-header">
							<div class="icon-box">
								<i class="material-icons">&#xE876;</i>
							</div>
							<h4 class="modal-title">Awesome!</h4>
						</div>
						<div class="modal-body">
							<p class="text-center">Your booking has been confirmed. Check
								your email for detials.</p>
						</div>
						<div class="modal-footer">
							<button class="btn btn-success btn-block" data-dismiss="modal">OK</button>
						</div>
					</div>
				</div>
			</div>
		</body>
</body>
</html>

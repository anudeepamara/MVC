<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
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
</head>
<style>
.cart-header {
	font-weight: bold;
	font-size: 1.25em;
	color: #333;
}

.cart-column {
	display: flex;
	align-items: center;
	border-bottom: 1px solid black;
	margin-right: 1.5em;
	padding-bottom: 10px;
	margin-top: 10px;
}

.cart-row {
	display: flex;
}

.cart-item {
	width: 45%;
}

.cart-price {
	width: 20%;
	font-size: 1.2em;
	color: #333;
}

.cart-quantity {
	width: 35%;
}

.cart-item-title {
	color: #333;
	margin-left: .5em;
	font-size: 1.2em;
}

.cart-item-image {
	width: 75px;
	height: auto;
	border-radius: 10px;
}

.btn-danger {
	color: white;
	background-color: #EB5757;
	border: none;
	border-radius: .3em;
	font-weight: bold;
}

.btn-danger:hover {
	background-color: #CC4C4C;
}

.cart-quantity-input {
	height: 34px;
	width: 50px;
	border-radius: 5px;
	border: 1px solid #56CCF2;
	background-color: #eee;
	color: #333;
	padding: 0;
	text-align: center;
	font-size: 1.2em;
	margin-right: 25px;
}

.cart-row:last-child {
	border-bottom: 1px solid black;
}

.cart-row:last-child .cart-column {
	border: none;
}

.cart-total {
	text-align: end;
	margin-top: 10px;
	margin-right: 10px;
}

.cart-total-title {
	font-weight: bold;
	font-size: 1.5em;
	color: black;
	margin-right: 20px;
}

.cart-total-price {
	color: #333;
	font-size: 1.1em;
}

.btn-purchase {
	display: block;
	margin: 40px auto 80px auto;
	font-size: 1.75em;
}
</style>
<style>
.btn-primary {
	color: white;
	background-color: #56CCF2;
	border: none;
	border-radius: .3em;
	font-weight: bold;
}

.btn-primary:hover {
	background-color: #2D9CDB;
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
	background-color: blue;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

h1 {
	background-color: #1E90FF;
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
	background-image: url('background.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
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
<!-- <body>
	<div align="center">

		<h1>ORDERS</h1>

		<div class="navbar">
			<a href="register"><i class="fa fa-smile-o"></i> ADD USER</a> <a
				href="/restuarent"><i class="fas fa-building"></i> RESTUARENTS</a> <a
				href="food"><i class="fa fa-cogs"></i> SETTINGS </a> <a
				class="active" href="/type"><i class="fa fa-cart-plus"></i>CART</a>

		</div>
	</div>

</body>
 -->

<body>
	<div class="container">
		<h1>ORDERS</h1>


		<div>

			<form:form id="myform" method="post" modelAttribute="cart">

				<table class="table table-hover table-dark">
					<thead>
						<tr>
							<th>Food Name</th>

							<th>Food Type</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="t" items="${carts}">
							<tr>
								<th>${t.foodName}</th>
								<th>${t.price}</th>
						</c:forEach>
						<tr>
							<th>TOTAL PRICE
							</td>
							<th>${totalprice}
							</td>
						</tr>
					</tbody>

				</table>
			</form:form>
		</div>
		<div align="center">
			<button class="btn btn-primary btn-purchase" type="button">

				<a href="/paysuccess">PAY NOW 
			</button>
			</a>
		</div>



	</div>
</body>
<script>
	/* if (document.readyState == 'loading') {
	 document.addEventListener('DOMContentLoaded', ready)
	 } else {
	 ready()
	 }

	 function ready() {
	 var removeCartItemButtons = document.getElementsByClassName('btn-danger')
	 for (var i = 0; i < removeCartItemButtons.length; i++) {
	 var button = removeCartItemButtons[i]
	 button.addEventListener('click', removeCartItem)
	 }

	 var quantityInputs = document.getElementsByClassName('cart-quantity-input')
	 for (var i = 0; i < quantityInputs.length; i++) {
	 var input = quantityInputs[i]
	 input.addEventListener('change', quantityChanged)
	 }

	 var addToCartButtons = document.getElementsByClassName('shop-item-button')
	 for (var i = 0; i < addToCartButtons.length; i++) {
	 var button = addToCartButtons[i]
	 button.addEventListener('click', addToCartClicked)
	 }

	 document.getElementsByClassName('btn-purchase')[0].addEventListener('click', purchaseClicked)
	 }

	 function purchaseClicked() {
	 alert('Thank you for your purchase')
	 var cartItems = document.getElementsByClassName('cart-items')[0]
	 while (cartItems.hasChildNodes()) {
	 cartItems.removeChild(cartItems.firstChild)
	 }
	 updateCartTotal()
	 }

	 function removeCartItem(event) {
	 var buttonClicked = event.target
	 buttonClicked.parentElement.parentElement.remove()
	 updateCartTotal()
	 }

	 function quantityChanged(event) {
	 var input = event.target
	 if (isNaN(input.value) || input.value <= 0) {
	 input.value = 1
	 }
	 updateCartTotal()
	 }

	 function addToCartClicked(event) {
	 var button = event.target
	 var shopItem = button.parentElement.parentElement
	 var title = shopItem.getElementsByClassName('shop-item-title')[0].innerText
	 var price = shopItem.getElementsByClassName('shop-item-price')[0].innerText
	 var imageSrc = shopItem.getElementsByClassName('shop-item-image')[0].src
	 addItemToCart(title, price, imageSrc)
	 updateCartTotal()
	 }

	 function addItemToCart(title, price, imageSrc) {
	 var cartRow = document.createElement('div')
	 cartRow.classList.add('cart-row')
	 var cartItems = document.getElementsByClassName('cart-items')[0]
	 var cartItemNames = cartItems.getElementsByClassName('cart-item-title')
	 for (var i = 0; i < cartItemNames.length; i++) {
	 if (cartItemNames[i].innerText == title) {
	 alert('This item is already added to the cart')
	 return
	 }
	 }
	 var cartRowContents = `
	 <div class="cart-item cart-column">
	 <img class="cart-item-image" src="${imageSrc}" width="100" height="100">
	 <span class="cart-item-title">${title}</span>
	 </div>
	 <span class="cart-price cart-column">${price}</span>
	 <div class="cart-quantity cart-column">
	 <input class="cart-quantity-input" type="number" value="1">
	 <button class="btn btn-danger" type="button">REMOVE</button>
	 </div>`
	 cartRow.innerHTML = cartRowContents
	 cartItems.append(cartRow)
	 cartRow.getElementsByClassName('btn-danger')[0].addEventListener('click', removeCartItem)
	 cartRow.getElementsByClassName('cart-quantity-input')[0].addEventListener('change', quantityChanged)
	 }

	 function updateCartTotal() {
	 var cartItemContainer = document.getElementsByClassName('cart-items')[0]
	 var cartRows = cartItemContainer.getElementsByClassName('cart-row')
	 var total = 0
	 for (var i = 0; i < cartRows.length; i++) {
	 var cartRow = cartRows[i]
	 var priceElement = cartRow.getElementsByClassName('cart-price')[0]
	 var quantityElement = cartRow.getElementsByClassName('cart-quantity-input')[0]
	 var price = parseFloat(priceElement.innerText.replace('$', ''))
	 var quantity = quantityElement.value
	 total = total + (price * quantity)
	 }
	 total = Math.round(total * 100) / 100
	 document.getElementsByClassName('cart-total-price')[0].innerText = '$' + total
	 } */
</script>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Electronic Shop</title>
<!-- Css Link internet -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- CSS-->
<link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/swiper.min.css">
<link rel="stylesheet" href="css/swiper.js">

<!-- Font-awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<!-- Script link -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	charset="utf-8"></script>
	
<!--JQuery animation -->
<script type="text/javascript" src="js/jQuery"></script>

<!-- lightslider.css animation ----->
<link rel="stylesheet" href="css/lightslider.css">

<!-- -->
<script type="text/javascript" src="js/lightslider.js"></script>
</head>
<body>
	<c:import url="sharedView\header.jsp"></c:import>
	<section class="section-two">
		<div class="container-product">
			<ul id="autoWidth" class="cs-hidden">
				<li class="item-a">
					<div class="box">
						<div class="slide-img">
							<img src="assets/img/product1.jpg" alt="" />
							<div class="overlay">
								<a href="#" class="buy-btn">Buy Now</a>
							</div>
						</div>
						<div class="box-detail">
							<div class="type">
								<a href="#">Laptop</a> <span>Acer i5</span>
							</div>
							<a href="#" class="price">15.000.000 VND </a>
						</div>
					</div>
				</li>
				<li class="item-b">
					<div class="box">
						<div class="slide-img">
							<img src="assets/img/product2.jpg" alt="" />
							<div class="overlay">
								<a href="#" class="buy-btn">Buy Now</a>
							</div>
						</div>

						<div class="box-detail">
							<div class="type">
								<a href="#">Laptop</a> <span>Acer i5</span>
							</div>
							<a href="#" class="price">15m</a>
						</div>
					</div>
				</li>
				<li class="item-c">
					<div class="box">
						<div class="slide-img">
							<img src="assets/img/product3.jpg" alt="" />
							<div class="overlay">
								<a href="#" class="buy-btn">Buy Now</a>
							</div>
						</div>

						<div class="box-detail">
							<div class="type">
								<a href="#">Laptop</a> <span>Acer i5</span>
							</div>
							<a href="#" class="price">15m</a>
						</div>
					</div>
				</li>
				<li class="item-d">
					<div class="box">
						<div class="slide-img">
							<img src="assets/img/product4.jpg" alt="" />
							<div class="overlay">
								<a href="#" class="buy-btn">Buy Now</a>
							</div>
						</div>

						<div class="box-detail">
							<div class="type">
								<a href="#">Laptop</a> <span>Acer i5</span>
							</div>
							<a href="#" class="price">15m</a>
						</div>
					</div>
				</li>
				<li class="item-e">
					<div class="box">
						<div class="slide-img">
							<img src="assets/img/product5.jpg" alt="" />
							<div class="overlay">
								<a href="#" class="buy-btn">Buy Now</a>
							</div>
						</div>

						<div class="box-detail">
							<div class="type">
								<a href="#">Laptop</a> <span>Acer i5</span>
							</div>
							<a href="#" class="price">15m</a>
						</div>
					</div>
				</li>
				<li class="item-g">
					<div class="box">
						<div class="slide-img">
							<img src="assets/img/product6.jpg" alt="" />
							<div class="overlay">
								<a href="#" class="buy-btn">Buy Now</a>
							</div>
						</div>

						<div class="box-detail">
							<div class="type">
								<a href="#">Laptop</a> <span>Acer i5</span>
							</div>
							<a href="#" class="price">15m</a>
						</div>
					</div>
				</li>
				<li class="item-h">
					<div class="box">
						<div class="slide-img">
							<img src="assets/img/product7.jpg" alt="" />
							<div class="overlay">
								<a href="#" class="buy-btn">Buy Now</a>
							</div>
						</div>

						<div class="box-detail">
							<div class="type">
								<a href="#">Laptop</a> <span>Acer i5</span>
							</div>
							<a href="#" class="price">15m</a>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</section>

	<section class="section-product-selling">
		<!-- Content for selling product -->
		<div class="container-card mb-5  mt-5">
			<div class="selling-header col-md-10">
				<h2>The best product sellings</h2>
			</div>
			<div class="row-card">
				<!-- Card -->
				<c:forEach var="tempProduct" items="${list_product}">
					<div class="col-md-3">
						<div class="card mt-3">
							<div class="product-1 align-items-center p-2 text-center">
								<img src="assets/img/product7.jpg" class="rounded" alt=""
									width="150px">
								<h5>${tempProduct.name}</h5>
								<div class="mt-3 info">
									<span class="text1 d-block">i7</span> <span class="text1">${tempProduct.description}</span>
								</div>
								<div class="cost mt-4 text-dark">
									<span>${tempProduct.price}</span>
									<div class="star mt-3 align-items-center">
										<i class="fas fa-star"></i> 
										<i class="fas fa-star"></i> 
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i> 
										<i class="fas fa-star-half"></i>
									</div>
								</div>
							</div>
							<!--Button for card -->
							<div class="p-3 laptop text-center text-white">
								<span class="text-uppercase"> Add to cart </span>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<hr>
	<section class="section-product-selling">
		<!-- Content for selling product -->
		<div class="container-card mb-5  mt-5">
			<div class="selling-header col-md-10">
				<h2>The best product sellings</h2>
			</div>
			<div class="row-card">
				<!-- Card -->
				<div class="col-md-3">
					<div class="card mt-3">
						<div class="product-1 align-items-center p-2 text-center">
							<img src="assets/img/product7.jpg" class="rounded" alt=""
								width="150px">
							<h5>Laptop</h5>
							<div class="mt-3 info">
								<span class="text1 d-block">i7</span> <span class="text1">
									Ram 8G</span>
							</div>
							<div class="cost mt-4 text-dark">
								<span>Price</span>
								<div class="star mt-3 align-items-center">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star-half"></i>
								</div>
							</div>
						</div>
						<!--Button for card -->
						<div class="p-3 laptop text-center text-white">
							<span class="text-uppercase"> Add to cart </span>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card mt-3">
						<div class="product-1 align-items-center p-2 text-center">
							<img src="assets/img/product5.jpg" class="rounded" alt=""
								width="150px">
							<h5>Laptop</h5>
							<div class="mt-3 info">
								<span class="text1 d-block">i7</span> <span class="text1">
									Ram 8G</span>
							</div>
							<div class="cost mt-4 text-dark">
								<span>Price</span>
								<div class="star mt-3 align-items-center">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star-half"></i>
								</div>
							</div>
						</div>
						<!--Button for card -->
						<div class="p-3 laptop text-center text-white">
							<span class="text-uppercase"> Add to cart </span>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card mt-3">
						<div class="product-1 align-items-center p-2 text-center">
							<img src="assets/img/product3.jpg" class="rounded" alt=""
								width="150px">
							<h5>Laptop</h5>
							<div class="mt-3 info">
								<span class="text1 d-block">i7</span> <span class="text1">
									Ram 8G</span>
							</div>
							<div class="cost mt-4 text-dark">
								<span>Price</span>
								<div class="star mt-3 align-items-center">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star-half"></i>
								</div>
							</div>
						</div>
						<!--Button for card -->
						<div class="p-3 laptop text-center text-white">
							<span class="text-uppercase"> Add to cart </span>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card mt-3">
						<div class="product-1 align-items-center p-2 text-center">
							<img src="assets/img/product1.jpg" class="rounded" alt=""
								width="150px">
							<h5>Laptop</h5>
							<div class="mt-3 info">
								<span class="text1 d-block">i7</span> <span class="text1">
									Ram 8G</span>
							</div>
							<div class="cost mt-4 text-dark">
								<span>Price</span>
								<div class="star mt-3 align-items-center">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star-half"></i>
								</div>
							</div>
						</div>
						<!--Button for card -->
						<div class="p-3 laptop text-center text-white">
							<span class="text-uppercase"> Add to cart </span>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card mt-3">
						<div class="product-1 align-items-center p-2 text-center">
							<img src="assets/img/product3.jpg" class="rounded" alt=""
								width="150px">
							<h5>Laptop</h5>
							<div class="mt-3 info">
								<span class="text1 d-block">i7</span> <span class="text1">
									Ram 8G</span>
							</div>
							<div class="cost mt-4 text-dark">
								<span>Price</span>
								<div class="star mt-3 align-items-center">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star-half"></i>
								</div>
							</div>
						</div>
						<!--Button for card -->
						<div class="p-3 laptop text-center text-white">
							<span class="text-uppercase"> Add to cart </span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<c:import url="sharedView\footer.jsp"></c:import>
</body>
</html>
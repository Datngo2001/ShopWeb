<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
	<header class="header">
		<a href="#" class="logo">logo</a> <input type="text" name="search"
			placeholder="Searching..." class="form-control">
		<button type="button" name="button" class="btn btn-primary">Search</button>
		<div class="navigation">
			<ul class="menu">
				<li class="menu-item"><a href="#">Home</a></li>
				<li class="menu-item"><a class="sub-btn" href="#">Laptop</a></li>
				<li class="menu-item"><a class="sub-btn" href="#">Accessories <i
						class="fas fa-angle-down"></i></a>
					<ul class="sub-menu">
						<li class="sub-item"><a href="#">Sub Item 01</a></li>
						<li class="sub-item"><a href="#">Sub Item 02</a></li>
						<li class="sub-item"><a href="#">Sub Item 03</a></li>
						<li class="sub-item"><a href="#">Sub Item 04</a></li>
						<li class="sub-item more"><a class="more-btn" href="#">More
								Items <i class="fas fa-angle-right"></i>
						</a>
							<ul class="more-menu">
								<li class="more-item"><a href="#">More Item 01</a></li>
								<li class="more-item"><a href="#">More Item 02</a></li>
							</ul></li>
					</ul></li>
				<li class="menu-item"><a href="#">Services</a></li>
				<li class="menu-item"><a href="#">Login</a></li>
			</ul>
		</div>
		<div class="menu-btn"></div>
	</header>
	<script src="js/header.js"></script>
</body>
</html>
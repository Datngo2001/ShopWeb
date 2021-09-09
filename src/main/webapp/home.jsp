<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="css\reset.css">
	<link rel="stylesheet" href="css\global.css">
	
	<link rel="stylesheet" href="css\home.css">
	<title>Electronic Store</title>
</head>
<body>
	<c:import url="sharedView\header.jsp"></c:import>
	<c:out value="${username}"></c:out>
	<div class="home">
    <div class="container">
      <div class="product">
        <div class="product-card">
          <h2 class="name">Laptop Apple MacBook Pro M1 2020 8GB/512GB/Space Grey (MYD92SA/A)</h2>
          <span class="price">15,000,000d</span>
          <img src="assets/img/apple-macbook-pro-2020-myd92saa-3.jpg" class="product-image" alt="">
        </div>
      </div>
      <div class="product">
        <div class="product-card">
          <h2 class="name">Laptop Apple MacBook Pro M1 2020 8GB/512GB/Space Grey (MYD92SA/A)</h2>
          <span class="price">15,000,000d</span>
          <img src="assets/img/dell-g3-15-i7-p89f002g3500c-600x600.jpg" class="product-image" alt="">
        </div>
      </div>
      <div class="product">
        <div class="product-card">
          <h2 class="name">Laptop Apple MacBook Pro M1 2020 8GB/512GB/Space Grey (MYD92SA/A)</h2>
          <span class="price">15,000,000d</span>
          <img src="assets/img/dell-g3-15-i7-p89f002g3500c-600x600.jpg" class="product-image" alt="">
        </div>
      </div>
      <div class="product">
        <div class="product-card">
          <h2 class="name">Laptop Apple MacBook Pro M1 2020 8GB/512GB/Space Grey (MYD92SA/A)</h2>
          <span class="price">15,000,000d</span>
          <img src="assets/img/dell-g3-15-i7-p89f002g3500c-600x600.jpg" class="product-image" alt="">
        </div>
      </div>
      <div class="product">
        <div class="product-card">
          <h2 class="name">Laptop Apple MacBook Pro M1 2020 8GB/512GB/Space Grey (MYD92SA/A)</h2>
          <span class="price">15,000,000d</span>
          <img src="assets/img/dell-g3-15-i7-p89f002g3500c-600x600.jpg" class="product-image" alt="">
        </div>
      </div>
      <div class="product">
        <div class="product-card">
          <h2 class="name">Laptop Apple MacBook Pro M1 2020 8GB/512GB/Space Grey (MYD92SA/A)</h2>
          <span class="price">15,000,000d</span>
          <img src="assets/img/dell-g3-15-i7-p89f002g3500c-600x600.jpg" class="product-image" alt="">
        </div>
      </div>
    </div>
  </div>
  
  <c:import url="sharedView\footer.jsp"></c:import>
  

  <script src="https://code.jquery.com/jquery.min.js"></script>

  <!-- Bootstrap JS form CDN -->
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

  <!-- jQuery sticky menu -->
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.sticky.js"></script>

  <!-- jQuery easing -->
  <script src="js/jquery.easing.1.3.min.js"></script>

  <!-- Main Script -->
  <script src="js/main.js"></script>

  <!-- Slider -->
  <script type="text/javascript" src="js/bxslider.min.js"></script>
  <script type="text/javascript" src="js/script.slider.js"></script>
  <script>
    $(document).ready(function() {
      $(".sub-btn").click(function() {
        $(this).next(".sub-menu").slideToggle();
      });
      $(".more-btn").click(function() {
        $(this).next(".more-menu").slideToggle();
      });
    });
    var menu = document.querySelector(".menu");
    var menuBtn = document.querySelector(".menu-btn");
    var closeBtn = document.querySelector(".close-btn");

    menuBtn.addEventListener("click", () => {
      menu.classList.add("active");
    });

    closeBtn.addEventListener("click", () => {
      menu.classList.remove("active");
    });
  </script>
	
</body>
</html>
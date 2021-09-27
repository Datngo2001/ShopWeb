<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css" integrity="sha512-oHDEc8Xed4hiW6CxD7qjbnI+B07vDdX7hEPTvn9pSZO1bcRqHp8mj9pyr+8RVC2GmtEfI2Bi9Ke9Ass0as+zpg==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,500;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/home.css">
  <link rel="stylesheet" href="css/base.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Electronic Shop</title>

</head>
<body>
	<c:import url="sharedView\header.jsp"></c:import>
	<br> <br> <br> <br>
	<div class="app_container">
      <div class="grid">
        <div class="grid_row app-content">
          <div class="grid_column-2">
            <nav class="category">
              <h3 class="category-heading"> <i class="category-heading-icon fas fa-list"></i>Content</h3>
              <ul class="category-list">
                <li class="category-item category--active">
                  <a href="" class="category-link">Laptop </a>
                </li>
                <li class="category-item">
                  <a href="" class="category-link">Smart Phone</a>
                </li>
                <li class="category-item"> 
                  <a href="" class="category-link">RAM & ROM</a>
                </li>
              </ul>
            </nav>
          </div>
          <div class="grid_column-10">
          
            <div class="home-filter">
              <span class="home-label">Sorting by</span>
              <button class="btn-product home-filter-btn">Popular</button>
              <button class="btn-product btn-primary home-filter-btn">Newest</button>
              <button class="btn-product home-filter-btn">Selling</button>
              <div class="select-input">
                <span class="select-price-label">Price</span>
                <i class="fas fa-angle-down select-price-icon"></i>
                <ul class="select-input-list">
                  <li class="select-input-item">
                    <a href="" class="select-input-link">Increase</a>
                  </li>
                  <li class="select-input-item">
                    <a href="" class="select-input-link">Decrease</a>
                  </li>
                </ul>
              </div>
              <div class="home-page">
                  <span class="filter-page-num">
                    <span class="filter-page-current">1</span>/14
                  </span>
                  <div class="filter-control">
                    <a href="" class="filter-page-btn">
                      <i class="fas fa-angle-left"></i>
                    </a>
                    <a href="" class="filter-page-btn">
                      <i class="fas fa-angle-right"></i>
                    </a>
                  </div>
              </div>
            </div>
            
            <div class="home-product">
              <div class="grid_row">
              	<c:forEach var="product" items="${list_product}">
                <div class="grid_column-2-5">
                  <div class="product-item">
                    <div class="product-item-img" style="background-image: url(https://cdn.tgdd.vn/Products/Images/44/236962/acer-aspire-7-a715-75g-52s5-i5-nhq85sv002-600x600.jpg);"></div>
                    <h4 class="product-item-name">${product.description	}</h4>
                    <div class="product-item-price">
                      <span class="price-old"> 18.190.000d</span>
                      <span class="price-current">17.790.000d</span>
                    </div>
                    <div class="product-action">
                      <span class="product-action-heart product-action-liked"> 
                        <i class="like-icon far fa-heart"></i>
                        <i class="liked-icon fas fa-heart"></i>
                      </span>
                      <div class="product-action-star">
                        <i class="star-gold fas fa-star"></i>
                        <i class="star-gold fas fa-star"></i>
                        <i class="star-gold fas fa-star"></i>
                        <i class="star-gold fas fa-star"></i>
                        <i class="star-gold far fa-star"></i>
                      </div>
                      <span class="product-item-sold">Sold 1k</span>
                    </div>
                    <div class="product-item-origin">
                      <span class="product-item-brand">HP</span>
                      <span class="product-item-bname">Korea</span>
                    </div>
                    <div class="product-item-favourite">
                      <i class="fas fa-check"></i> Interesting 
                    </div>
                    <div class="product-item-sale">
                      <span class="product-item-label">Discount</span>
                      <span class="product-item-percent">23%</span>
                    </div>
                  </div>
                </div>
                </c:forEach>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
	<c:import url="sharedView\footer.jsp"></c:import>
</body>
</html>
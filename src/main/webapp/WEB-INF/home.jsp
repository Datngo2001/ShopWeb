<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <!-- Global -->
  <c:import url="sharedView/global.html"/>
  <!-- Carousel -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
  <!-- Local -->
  <link rel="stylesheet" href="./css/home.css">
<title>Electronic Shop</title>
</head>
<body>
	<c:import url="sharedView/header.jsp"></c:import>
	<div class="adver-demo">
      <div class="owl-carousel owl-theme">
        <div class="adver-item">
          <a href=""><img  src="https://gearshop.vn/images/slider/mua-man-hinh-vx3418-2kpc-tang-ngay-chuot-khong-day-logitech-g304-wireless-vi1631183390.png" alt=""> </a>
        </div>
        <div class="adver-item">
          <a href=""><img src="https://gearshop.vn/images/slider/mua-ghe-e-dra-draco-egc2029-nhan-qua-doc-quyen-draco-vi1632132822.png" alt=""> </a>
        </div>
        <div class="adver-item">
          <a href=""><img src="https://gearshop.vn/images/slider/dai-tiec-ghe-gaming-e-dra-vi1622532975.jpg" alt=""> </a>
        </div>
        <div class="adver-item">
          <a href=""><img src="https://gearshop.vn/images/slider/back-to-school-vi1631511861.png" alt=""> </a>
        </div>
      </div>
    </div>
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
                <li class="category-item"> 
                  <a href="" class="category-link">Card Graphics</a>
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
                    <form action="Controller">
                    	<input type="hidden" ${product.id}>
                    </form>
                    <h4 class="product-item-name">${product.description}</h4>
                    <div class="product-item-price">
                      <span class="price-old"> ${product.price}d</span>
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
    <div class="grid">
      <div class="grid_row">
        <div class="grid_column-3">
          <div class="news-product">
            <h4 class="news-side">News</h4>
            <div class="news-content">
              <div class="news-img" style="background-image: url(https://gearshop.vn/upload/images/Tin%20t%E1%BB%A9c/Minimalist%20Setup/Minimalist-Setup-l%C3%A0-g%C3%AC-Tips-%C4%91%E1%BB%83-t%E1%BA%A1o-m%E1%BB%99t-b%C3%A0n-l%C3%A0m-vi%E1%BB%87c-phong-c%C3%A1ch-t%E1%BB%91i-gi%E1%BA%A3n-m%C3%B9a-d%E1%BB%8Bch.png);"> </div>
              <a href="#" class="news-titles"> <p>What is Minimalist Setup? Tips to create a minimalist style desk during the epidemic season</p> </a>
            </div>
            <div class="news-content">
              <div class="news-img" style="background-image: url(https://gearshop.vn/upload/images/Tin%20t%E1%BB%A9c/C%C3%A1ch%20ch%E1%BB%8Dn%20Gh%E1%BA%BF%20Gaming%20Bigsize%20cho%20nh%E1%BB%AFng%20b%E1%BA%A1n%20c%C3%B3%20%E2%80%9CForm%20ng%C6%B0%E1%BB%9Di%E2%80%9D%20to/C%C3%A1ch-ch%E1%BB%8Dn-Gh%E1%BA%BF-Gaming-Bigsize-cho-nh%E1%BB%AFng-b%E1%BA%A1n-c%C3%B3-%E2%80%9CForm-ng%C6%B0%E1%BB%9Di%E2%80%9D-to.png);"> </div>
              <a href="#" class="news-titles"> <p class="titles">How to choose a Bigsize Gaming Chair for those of you who have a large Human Form</p> </a>
            </div>
          </div>
        </div>
        <div class="grid_column-9 grid_column-block">
          <div class="header-product-side">
            <div class="header-left-side">
              <h2 class="title-section">Product Selling</h2>
            </div>
            <div class="header-right-side">
              <button type="button" class="btn btn-primary" name="button">Laptop</button>
              <button type="button" class="btn" name="button">Card</button>
              <button type="button" class="btn" name="button">Chip</button>
            </div>
          </div>
          <div class="carousel owl-carousel">
            <div class="card card-1">
              <h4 class="product-card-titles">Samsung LC27RG50FQE 27 inch 240Hz monitor</h4>
              <img src="assets/img/product1.jpg" alt="">
              <div class="price-card-carousel">
                <h4 class="price-title-old">12.490.400</h4>
                <h4 class="price-title-news">12.490.400 </h4>
                <h4 class="add-product-cart"><a href="" class="cart-btn-link"> <i class="fa fa-shopping-cart cart-icon"></i></a></h4>
              </div>
            </div>
            <div class="card card-2">
              <h4 class="product-card-titles">Samsung LC27RG50FQE 27 inch 240Hz monitor</h4>
              <img src="assets/img/product2.jpg" alt="">
              <div class="price-card-carousel">
                <h4 class="price-title-old">12.490.400</h4>
                <h4 class="price-title-news">12.490.400 </h4>
                <h4 class="add-product-cart"><a href="" class="cart-btn-link"> <i class="fa fa-shopping-cart cart-icon"></i></a></h4>
              </div>
            </div>
            <div class="card card-3">
              <h4 class="product-card-titles">Samsung LC27RG50FQE 27 inch 240Hz monitor</h4>
              <img src="assets/img/product3.jpg" alt="">
              <div class="price-card-carousel">
                <h4 class="price-title-old">12.490.400</h4>
                <h4 class="price-title-news">12.490.400 </h4>
                <h4 class="add-product-cart"><a href="" class="cart-btn-link"> <i class="fa fa-shopping-cart cart-icon"></i></a></h4>
              </div>
            </div>
            <div class="card card-4">
              <h4 class="product-card-titles">Samsung LC27RG50FQE 27 inch 240Hz monitor</h4>
              <img src="assets/img/product4.jpg" alt="">
              <div class="price-card-carousel">
                <h4 class="price-title-old">12.490.400</h4>
                <h4 class="price-title-news">12.490.400 </h4>
                <h4 class="add-product-cart"><a href="" class="cart-btn-link"> <i class="fa fa-shopping-cart cart-icon"></i></a></h4>
              </div>
            </div>
            <div class="card card-5">
              <h4 class="product-card-titles">Samsung LC27RG50FQE 27 inch 240Hz monitor</h4>
              <img src="assets/img/product5.jpg" alt="">
              <div class="price-card-carousel">
                <h4 class="price-title-old">12.490.400</h4>
                <h4 class="price-title-news">12.490.400 </h4>
                <h4 class="add-product-cart"><a href="" class="cart-btn-link"> <i class="fa fa-shopping-cart cart-icon"></i></a></h4>
              </div>
            </div>
            <div class="card card-6">
              <h4 class="product-card-titles">Samsung LC27RG50FQE 27 inch 240Hz monitor</h4>
              <img src="assets/img/product6.jpg" alt="">
              <div class="price-card-carousel">
                <h4 class="price-title-old">12.490.400</h4>
                <h4 class="price-title-news">12.490.400 </h4>
                <h4 class="add-product-cart"><a href="" class="cart-btn-link"> <i class="fa fa-shopping-cart cart-icon"></i></a></h4>
              </div>
            </div>
          </div>
		            <div class="header-most-product">
            <div class="most-left">
              <h2 class="title-most-left">The Most Product</h2>
            </div>
            <div class="most-right">
              <ul class="most-list">
                <li class="most-item">
                  <a href="" class="most-link">Card graphics</a>
                </li>
                <li class="most-item">
                  <a href="" class="most-link">Chip</a>
                </li>
                <li class="most-item">
                  <a href="" class="most-link">Ram & Rom</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="most-buyer">
            <div class="owl-carousel owl-theme">
              <div class="most-item-card most-list-block group-card">
                <div class="most-list-flex">
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p13.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p11.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                </div>
                <div class="most-list-flex">
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p15.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p12.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="most-item-card most-list-block group-card">
                <div class="most-list-flex">
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p10.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p10.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                </div>
                <div class="most-list-flex">
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p14.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p11.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="most-item-card most-list-block group-card">
                <div class="most-list-flex">
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p15.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p12.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                </div>
                <div class="most-list-flex">
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p13.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                  <div class="grid_column-6 most-list-flex card-most">
                    <div class="img-most-card">
                      <img src="assets/img/p11.jpg" alt="">
                    </div>
                    <div class="most-content-card">
                      <div class="most-content-info">
                        <h4 class="most-content-name"> RTX 2060</h4>
                        <h4 class="most-content-title">Hyper phone Stinger Core 7.1</h4>
                      </div>
                      <div class="most-content-active">
                        <div class="active-left">
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold fas fa-star"></i>
                          <i class="star-gold far fa-star"></i>
                        </div>
                        <div class="active-right">
                          <a href="" class="most-active-link"><i class="fas fa-heart most-active-icon"></i></a>
                        </div>
                      </div>
                      <span class="most-price-old">20.240.000d</span>
                      <span class="most-price-new"><a href="" class="most-price-link">18.990.000d</a></span>
                      <p class="most-price-new"> <a href="" class="most-price-link-1"> Buy </a></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>        
        </div>
      </div>
    </div>
    <br> <br>
	<c:import url="sharedView/footer.jsp"></c:import>
	  <script>
		   $(".carousel").owlCarousel({
		     margin: 20,
		     loop: true,
		     autoplay: true,
		     autoplayTimeout: 3000,
		     autoplayHoverPause: true,
		     responsive: {
		       0:{
		         items:1,
		         nav: false
		       },
		       600:{
		         items:2,
		         nav: false
		       },
		       1000:{
		         items:4,
		         nav: false
		       }
		     }
		   });
		   var owl = $(".owl-carousel");
		   owl.owlCarousel({
			      items: 1,
			      loop: true,
			      nav: true,
			      autoplay: true,
			      autoplayTimeout: 3000,
			      smartSpeed: 1000,
			      autoplayHoverPause: true,
		   });
	</script>
</body>
</html>
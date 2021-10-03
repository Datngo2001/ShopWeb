<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./css/base.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
	    <header class="header">
        <div class="grid">
          <nav class="navbar">
            <ul class="navbar_list">
              <li class="navbar-item navbar-has-qr navbar-separate">
                Wellcome to electronic store
                <!--Header QR-->
                <div class="navbar-qr">
                    <img src="./assets/img/QrCode.png" alt="" class="navbar-qr-img">
                    <div class="navbar-qr-apps">
                      <a href="" class="navbar_qr-link">
                        <img src="./assets/img/CHplay.png" alt="google play" class="download-img">
                      </a>
                      <a href="" class="navbar_qr-link">
                        <img src="./assets/img/Phone.png" alt="google play" class="download-img">
                      </a>
                    </div>
                </div>
              </li>
              <li class="navbar-item">|</li>
              <li class="navbar-item">
                Connection
                <i class="navbar_list-icon fab fa-facebook"> </i>
                <i class="navbar_list-icon fab fa-github"></i>
              </li>
            </ul>
            <ul class="navbar_list">
              <li class="navbar-item navbar-has-notify">
                <i class="navbar_list-icon fas fa-bell"></i>
                Notifications
                <div class="navbar-notify">
                  <header class="header-notify">
                    <h3> New notification </h3>
                    	
                  </header>
                  <ul class="navbar-notify-list">
                    <li class="navbar-notify-item">
                      <a href="" class="notify-link">
                        <img src="https://cdn.tgdd.vn/Products/Images/44/239538/acer-aspire-7-a715-41g-r150-r7-nhq8ssv004-200x200.jpg" class="notify-img">
                        <div class="notify-body">
                            <span class="notify-name">Product</span>
                            <span class="notify-description">User Thien Nguyen oder bold laptop HP 11065h</span>
                        </div>
                      </a>
                    </li>
                    <li class="navbar-notify-item">
                      <a href="" class="notify-link">
                        <img src="https://cdn.tgdd.vn/Products/Images/44/239538/acer-aspire-7-a715-41g-r150-r7-nhq8ssv004-200x200.jpg" class="notify-img">
                        <div class="notify-body">
                            <span class="notify-name">Product</span>
                            <span class="notify-description">User Thien Nguyen oder bold laptop HP 11065h</span>
                        </div>
                      </a>
                    </li>
                    <li class="navbar-notify-item">
                      <a href="" class="notify-link">
                        <img src="https://cdn.tgdd.vn/Products/Images/44/239538/acer-aspire-7-a715-41g-r150-r7-nhq8ssv004-200x200.jpg" class="notify-img">
                        <div class="notify-body">
                            <span class="notify-name">Product</span>
                            <span class="notify-description">User Thien Nguyen oder bold laptop HP 11065h</span>
                        </div>
                      </a>
                    </li>
                  </ul>
                  <footer class="footer-notify">
                    <a href="" class="footer-notify-btn">See All</a>
                  </footer>
                </div>
              </li>
              <li class="navbar-item">
                 <a href="" class="navbar-item-link"><i class="navbar_list-icon fas fa-question-circle"></i> Help?</a>
              </li>
              <li class="navbar-item">Sign up</li>
              <li class="navbar-item">|</li>
              <li class="navbar-item">Log in</li>
            </ul>
          </nav>
          <div class="navbar-search">
            <div class="navbar-logo">
              <h1 class="logo-title"> <span>LOGO</span></h1>
            </div>
            <div class="search-product">
              <input class="form-control-p" type="text" placeholder="Searching anything here...">
              <button class="btn-p btn-primary" > <i class="fas fa-search"></i> </button>
              <div class="product-history">
                <h4 class="history-heading">History Search</h4>
                <ul class="history-list">
                  <li class="history-item">
                    <a href="" class="history-link">Iphone 13</a>
                  </li>
                  <li class="history-item">
                    <a href="" class="history-link">Acer Gaming</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="cart-product">
                <i class="cart-product-icon fas fa-shopping-cart"></i>
            </div>
            <form action="ProductControllerServlet" method="get">
            <div class="product-header">
              <ul class="product-list">
                <li class="header-product-item">
                  <a href="" class="product-link">
                  	<input type="submit" name="command" value="Product">
                  </a>
                </li>
                
                <li class="header-product-item">
                  <a href="" class="product-link">
                  	<input type="submit" name="command" value="Employee">
                  </a>
                </li>
              </ul>
            </div>
           	</form>
          </div>    
        </div>

      </header>
	<script src="js/header.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="demoTag" uri="WEB-INF/tlds/helloTag.tld" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Electronic Store</title>
  <link rel="stylesheet" href="css/homepage.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" charset="utf-8"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="header">
    <a class="logo" href="#">LOGO</a>
    <input class="form-control" type="text" name="" value="" placeholder="Enter to search...">
    <div class="navigation">
      <ul class="menu">
        <div class="close-btn"></div>
        <li class="menu-item">
          <a class="sub-btn" href="#"><i class="fas fa-laptop-code"></i> Product <i class="fas fa-angle-down"></i></a>
          <ul class="sub-menu">
            <li class="sub-item"> <a> Item 1 </a></li>
            <li class="sub-item"> <a> Item 2 </a></li>
            <li class="sub-item"> <a> Item 3 </a></li>
            <li class="sub-item"> <a> Item 3 </a></li>
            <li class="sub-item more">
              <a class="more-btn"> Item 4 <i class="fas fa-angle-right"></i> </a>
              <ul class="more-menu">
                <li class="more-item"> <a> More Item 1</a></li>
                <li class="more-item"> <a> More Item 2</a></li>
                <li class="more-item"> <a> More Item 3</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li class="menu-item">
          <a href="#" class="sub-btn"> <i class="fas fa-users"></i> Employee <i class="fas fa-angle-down"></i></a>
          <ul class="sub-menu">
            <li class="sub-item"> <a>Employee 1</a></li>
            <li class="sub-item"> <a>Employee 2</a></li>
            <li class="sub-item"> <a>Employee 3</a></li>
          </ul>
        </li>
        <li class="menu-item"><a href="#"> <i class="fas fa-user-circle"></i> Account</a></li>
        <li class="menu-item"><a href="#"> <i class="fas fa-user-circle"></i> Login</a></li>
      </ul>
    </div>
  </div>
<demoTag:HelloTab/>
</body>
</html>
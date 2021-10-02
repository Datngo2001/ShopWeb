<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.model.*, java.util.*"%>
<%@page import="com.model.Product, java.util.*"%>
<%@page import="com.data.ProductDAO, com.controller.product.ProductControllerServlet"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css" integrity="sha512-oHDEc8Xed4hiW6CxD7qjbnI+B07vDdX7hEPTvn9pSZO1bcRqHp8mj9pyr+8RVC2GmtEfI2Bi9Ke9Ass0as+zpg==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,500;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="./css/home.css">
  <link rel="stylesheet" href="./css/base.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Add Product</title>
</head>
<body>
	<c:import url="sharedView\header.jsp"></c:import>
	  <div class="app-container app-content">
        <div class="grid">
          <div class="grid_row ">
            <div class="grid_column-3">
				<div class="product-left-side">
	                <h3 class="title-add-product">Add new product</h3>
	                <div class="add-main-content">
	                	<form action="ProductControllerServlet" method="get">
		                	<input type="hidden" name="command" value="UPDATE"/>
		                  <div class="add-form-group">
		                    <input type="text" class="input-control" name="name" placeholder="Name product">
		                  </div>
		                  <div class="add-form-group">
		                    <input type="text" class="input-control" name="description" placeholder="Description">
		                  </div>
		                  <div class="add-form-group">
		                    <input type="text" class="input-control" name="price" placeholder="Price">
		                  </div>
			              <div class="add-form-group">
							<button type="submit" class="btn btn-primary" name="save">Submit</button>
			              </div>
	                	</form>
	                </div>
	            </div>
            </div>
            <div class="grid_column-9">
              <div class="product-right-side">
                <h3 class="title-right-side">Product List</h3>
                <input type="text" id="myInput" onkeyup="filterProduct()" placeholder="Search for names.." title="Type in a name">
                <table id="table-product">
                  <thead>
                    <tr class="header-list">
                      <th id="name">Name</th>
                      <th id="des">Discription</th>
                      <th>Amount</th>
                      <th>Price</th>
                      <th>Picture</th>
                      <th>Brand</th>
                      <th>Active</th>
                    </tr>
                  </thead>
                  <tbody>
					<c:forEach var="tempProduct" items="${list_product}">
						<c:url var="tempLink" value="ProductControllerServlet">
							<c:param name="command" value="LOAD"/>
							<c:param name="productId" value="${tempProduct.id}"/>			
						</c:url>
						<tr class="body-list">
	                      <td>${tempProduct.name}</td>
	                      <td>${tempProduct.description}</td>
	                      <td>12</td>
	                      <td>${tempProduct.price}</td>
	                      <td> <img src="" alt=""></td>
	                      <td>Korea</td>
	                      <td> <a href="${tempLink}"> ${tempProduct.id}</a> </td>
	                    </tr>
					</c:forEach>
                  </tbody>
                </table>
                <p> <a href="ProductControllerServlet">Return the homepage</a> </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <c:import url="sharedView\footer.jsp"></c:import>
            <script>
        function filterProduct() {
          var input, filter, table, tr, td;
          input = document.getElementById("myInput");
          filter = input.value.toUpperCase();
          table = document.getElementById("table-product");
          tr = table.getElementsByClassName("body-list");
          for(var i = 0; i < tr.length; i++) {
            td0 = tr[i].getElementsByTagName("td")[0];
            td1 = tr[i].getElementsByTagName("td")[1];
            td2 = tr[i].getElementsByTagName("td")[2];
            td4 = tr[i].getElementsByTagName("td")[4];
            if(td0 || td1 || td2 || td4) {
              var txt0 = td0.textContent || td0.innerText;
              var txt1 = td1.textContent || td1.innerText;
              var txt2 = td2.textContent || td2.innerText;
              var txt4 = td4.textContent || td4.innerText;
              if((txt0.toUpperCase().indexOf(filter) > -1) 
              || (txt1.toUpperCase().indexOf(filter) > -1) 
              || (txt2.toUpperCase().indexOf(filter) > -1)
              || (txt4.toUpperCase().indexOf(filter) > -1)) {
                tr[i].style.display = "";
              }
              else {
                tr[i].style.display = "none";
              }
            }
          }
        }
      </script>
</body>
</html>
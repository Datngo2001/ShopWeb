<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.model.*" %>
<%@ page import="java.util.*, com.helperClass.*" %>
<%@ page import="java.util.*, com.controller.product.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="bootstrap.css">
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-2">
		<div class="row">
			<div class="col-7">
				<span> List of Student</span>
				 <br/>
				 <span> <a href="add-student-form.jsp"> New student </a> </span>
				<table class="table table-bordered table-hover">
					<thead>
						<tr> 
							<th> Firstname </th>
							<th> Lastname </th>
							<th> Email </th>						
						</tr>
					</thead>
					<c:forEach var="tempProduct" items="${list_product}">
						<tbody>
							<tr> 
								<td> ${tempProduct.name} </td>
								<td> ${tempProduct.description} </td>
								<td> ${tempProduct.price}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
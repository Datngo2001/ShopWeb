<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="login" method="POST">
		Username: <input type="text" name="username"><br>
		Password: <input type="password" name="password"><br>
		<span style="color:red"><c:out value="${loginMessage}"/></span>
		<input type="submit" value="login">
	</form>
</body>
</html>
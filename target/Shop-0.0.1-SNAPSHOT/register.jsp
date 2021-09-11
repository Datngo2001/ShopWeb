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
	<form action="register" method="POST">
		Username: <input type="text" name="username"><br>
		Password: <input type="password" name="password"><br>
		Re-Enter: <input type="password" name="reEnter"><br>
		<span style="color:red"><c:out value="${registerMessage}"/></span>		
		<input type="submit" value="register">
	</form>
</body>
</html>
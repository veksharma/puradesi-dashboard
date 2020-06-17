<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Create User</title>
<%@ include file="commonParts/header.jsp" %> 
</head>
<body>
<%@ include file="commonParts/navbar.jsp" %> 
<div class="container-fluid bg-1 text-center">
	<h1>Edit User</h1>
	<h2>${msg}</h2>
</div>
<div class="container-fluid bg-2 text-center">
<form action="updateUser" method="post">
<pre>
User Id:<input type="text" name="id" value="${userToEdit.id}" readonly/><br>
Username:<input type="text" name="userName" value="${userToEdit.userName}"/><br>
Password:<input type="text" name="password" value="${userToEdit.password}"/><br>
<input type="submit" class="btn btn-success" value="confirm"/>
</pre>
</form>
<a href="deleteUser?id=${userToEdit.id}" class="btn btn-danger" role="button">Click to DELETE</a>
<h2>${msg}</h2>
</div>
<%@ include file="commonParts/footer.jsp" %>  
</body>
</html>
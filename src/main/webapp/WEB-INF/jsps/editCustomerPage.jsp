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
	<h1>Edit Customer</h1>
	<h2>${msg}</h2>
</div>
<div class="container-fluid bg-2 text-center">
<form action="updateCustomer" method="post">
<pre>
Customer Id:<input type="text" name="id" value="${customerToEdit.id}" readonly/><br>
Code:<input type="text" name="code" value="${customerToEdit.code}"/><br>
Customer Name:<input type="text" name="customerName" value="${customerToEdit.customerName}"/><br>
Father or Husband Name:<input type="text" name="fatherOrHusbandName" value="${customerToEdit.fatherOrHusbandName}"/><br>
House Number:<input type="text" name="houseNumber" value="${customerToEdit.houseNumber}"/><br>
Street Number:<input type="text" name="streetNumber" value="${customerToEdit.streetNumber}"/><br>
Place:<input type="text" name="place" value="${customerToEdit.place}"/><br>
Ward Name:<input type="text" name="wardName" value="${customerToEdit.wardName}"/><br>
Ward Number:<input type="text" name="wardNumber" value="${customerToEdit.wardNumber}"/><br>
Phone:<input type="text" name="phone" value="${customerToEdit.phone}"/><br>
Email:<input type="text" name="email" value="${customerToEdit.email}"/><br>
Category:<input type="text" name="category" value="${customerToEdit.category}"/><br>
Sub Category:<input type="text" name="subCategory" value="${customerToEdit.subCategory}"/><br>
Charges:<input type="text" name="charges" value="${customerToEdit.charges}"/><br>
Service Activator:<input type="text" name="serviceActivator" value="${customerToEdit.serviceActivator}"/><br>
Date of Activation:<input type="text" name="dateOfActivation" value="${customerToEdit.dateOfActivation}"/><br>
Data Collector:<input type="text" name="dataCollector" value="${customerToEdit.dataCollector}"/><br>
<input type="submit" class="btn btn-success" value="confirm"/>
</pre>
</form>
<a href="deleteCustomer?code=${customerToEdit.code}" class="btn btn-danger" role="button">Click to DELETE</a>
<h2>${msg}</h2>
</div>
<%@ include file="commonParts/footer.jsp" %>  
</body>
</html>
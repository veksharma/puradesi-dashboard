<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Delete User</title>
<%@ include file="commonParts/header.jsp" %> 
<script>
function validateForm() {
  var x = document.forms["myForm"]["userName"].value;
  if (x == "") {
    alert("Username must be filled out");
    return false;
  }
}
</script>
</head>
<body>
<%@ include file="commonParts/navbar.jsp" %> 
<div class="container-fluid bg-1 text-center">
	<h1>Create user for WMS Mobile Application</h1>
</div>
<div class="container-fluid bg-2 text-center">
<form name="myForm" action="deleteUser" onsubmit="return validateForm()" method="post">
<pre>
Enter Username : <input type="text" name="userName" /><br>
	<input type="submit" class="btn btn-success" value="Delete User" />
</pre>
</form>
<h2>${msg}</h2>
</div>
<%@ include file="commonParts/footer.jsp" %>  
</body>
</html>
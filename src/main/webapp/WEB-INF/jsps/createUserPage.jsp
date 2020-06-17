<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Create User</title>
<%@ include file="commonParts/header.jsp" %> 
<script>
function validateForm() {
  var x = document.forms["myForm"]["userName"].value;
  var y = document.forms["myForm"]["password"].value;
  if (x == "" || y == "") {
    alert("Username and Password must be filled out");
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
<form name="myForm" action="createUser" onsubmit="return validateForm()" method="post">
<pre>
Enter Email : <input type="text" name="userName" /><br>
Enter Password : <input type="text" name="password" /><br>
	<input type="submit" class="btn btn-success" value="Create User" />
</pre>
</form>
<h2>${msg}</h2>
</div>
<%@ include file="commonParts/footer.jsp" %>  
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Add Customer</title>

<!-- Fontfaces CSS-->
<link href="css/font-face.css" rel="stylesheet" media="all">
<link href="vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet"
	media="all">

<!-- Vendor CSS-->
<link href="vendor/animsition/animsition.min.css" rel="stylesheet"
	media="all">
<link
	href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link href="vendor/wow/animate.css" rel="stylesheet" media="all">
<link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet"
	media="all">
<link href="vendor/slick/slick.css" rel="stylesheet" media="all">
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="css/theme.css" rel="stylesheet" media="all">

</head>
<body>
	<%-- <%@ include file="commonParts/navbar.jsp" %>  --%>
	<div class="container-fluid bg-1 text-center">
		<h1>Nagar Nigam Mathura Vrindavan</h1>
		<h2>${msg}</h2>
	</div>
	<div class="container-fluid bg-2 text-center">
		<div class="card">
			<div class="card-header">
				<strong>Add</strong> Customer Form
			</div>
			<div class="card-body card-block">
				<form action="updateCustomer" method="post"	class="form-horizontal">
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="text-input" class=" form-control-label">Customer Name</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="text" id="customerName" name="customerName"
								placeholder="Text" class="form-control">
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="text-input" class=" form-control-label">Father or Husband Name</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="text" id="fatherOrHusbandName" name="fatherOrHusbandName"
								placeholder="Text" class="form-control">
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="text-input" class=" form-control-label">House Number</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="text" id="houseNumber" name="houseNumber"
								placeholder="Text" class="form-control">
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="text-input" class=" form-control-label">Street Number</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="text" id="streetNumber" name="streetNumber"
								placeholder="Text" class="form-control">
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="text-input" class=" form-control-label">Mobile Number</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="text" id="phone" name="phone"
								placeholder="Text" class="form-control">
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="email-input" class=" form-control-label">Email</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="email" id="email" name="email"
								placeholder="Enter Email" class="form-control">
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="select" class=" form-control-label">Ward Name</label>
						</div>
						<div class="col-12 col-md-9">
							<select name="wardName" id="wardName" class="form-control">
								<option value="0">Please select</option>
								<option value="1">Option #1</option>
								<option value="2">Option #2</option>
								<option value="3">Option #3</option>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="select" class=" form-control-label">Ward Number</label>
						</div>
						<div class="col-12 col-md-9">
							<select name="wardNumber" id="wardNumber" class="form-control">
								<option value="0">Please select</option>
								<option value="1">Option #1</option>
								<option value="2">Option #2</option>
								<option value="3">Option #3</option>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="select" class=" form-control-label">Place</label>
						</div>
						<div class="col-12 col-md-9">
							<select name="place" id="place" class="form-control">
								<option value="0">Please select your Area</option>
								<option value="1">Option #1</option>
								<option value="2">Option #2</option>
								<option value="3">Option #3</option>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="select" class=" form-control-label">Category</label>
						</div>
						<div class="col-12 col-md-9">
							<select name="category" id="category" class="form-control">
								<option value="0">Please select</option>
								<option value="1">Option #1</option>
								<option value="2">Option #2</option>
								<option value="3">Option #3</option>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="select" class=" form-control-label">Sub Category</label>
						</div>
						<div class="col-12 col-md-9">
							<select name="subCategory" id="subCategory" class="form-control">
								<option value="0">Please select</option>
								<option value="1">Option #1</option>
								<option value="2">Option #2</option>
								<option value="3">Option #3</option>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="select" class=" form-control-label">Charges</label>
						</div>
						<div class="col-12 col-md-9">
							<select name="charges" id="charges" class="form-control">
								<option value="0">Please select</option>
								<option value="1">Option #1</option>
								<option value="2">Option #2</option>
								<option value="3">Option #3</option>
							</select>
						</div>
					</div>
					
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="disabled-input" class=" form-control-label">Disabled
								Input</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="text" id="disabled-input" name="disabled-input"
								placeholder="Disabled" disabled="" class="form-control">
						</div>
					</div>
					
				</form>
			</div>
			<div class="card-footer">
				<button type="submit" class="btn btn-primary btn-sm">
					<i class="fa fa-dot-circle-o"></i> Submit
				</button>
				<!-- <button type="reset" class="btn btn-danger btn-sm">
					<i class="fa fa-ban"></i> Reset
				</button> -->
			</div>
		</div>
	</div>
	<div class="text-center">
		<h3>Copyright ©2020 Nagar Nigam Mathura Vrindavan</h3>
	</div>
</body>
</html>
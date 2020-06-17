<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>WMS Payments</title>
<%@ include file="commonParts/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/buttons/1.6.1/css/buttons.dataTables.min.css">
<script type="text/javascript" language="javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.flash.min.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.print.min.js"></script>
<script>
	function validateForm() {
		var x = document.forms["myForm"]["code"].value;
		if (x == "") {
			alert("Unique Code must be filled out");
			return false;
		}
	}
</script>
</head>
<body>
	<%@ include file="commonParts/navbar.jsp"%>
	<div class="container-fluid bg-1 text-center">
		<h1>Payments from ${code} </h1>
		<h1>${notfound} </h1>
	</div>
<form name="myForm" action="getPaymentsByCode"
		onsubmit="return validateForm()" method="post">
		<pre>
Enter unique code : <input type="text" name="code" />   <input type="submit"
				class="btn btn-success" value="Get Payments" />
</pre>
</form>
	<div class="container-fluid bg-4 text-center">
		<table id="example" class="display nowrap" style="width: 100%">
			<thead>
				<tr>
					<th>S.No.</th>
					<th>Id</th>
					<th>Code</th>
					<th>Amount</th>
					<th>Mode</th>
					<th>Receive By</th>
					<th>Date Time</th>
					<th>Delete</th>
					<th>Id</th>
					<th>Code</th>
					<th>Customer Name</th>
					<th>Father Or Husband Name</th>
					<th>House Number</th>
					<th>Street Number</th>
					<th>Place</th>
					<th>Ward Name</th>
					<th>Ward Number</th>
					<th>Phone</th>
					<th>Email</th>
					<th>Category</th>
					<th>Sub Category</th>
					<th>Charges</th>
					<th>Service Activator</th>
					<th>Date Of Activation</th>
					<th>Data Collector</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>S.No.</th>
					<th>Id</th>
					<th>Code</th>
					<th>Amount</th>
					<th>Mode</th>
					<th>Receive By</th>
					<th>Date Time</th>
					<th>Delete</th>
					<th>Id</th>
					<th>Code</th>
					<th>Customer Name</th>
					<th>Father Or Husband Name</th>
					<th>House Number</th>
					<th>Street Number</th>
					<th>Place</th>
					<th>Ward Name</th>
					<th>Ward Number</th>
					<th>Phone</th>
					<th>Email</th>
					<th>Category</th>
					<th>Sub Category</th>
					<th>Charges</th>
					<th>Service Activator</th>
					<th>Date Of Activation</th>
					<th>Data Collector</th>
				</tr>
			</tfoot>
		</table>
	</div>
	<%@ include file="commonParts/footer.jsp"%>
	<script>
		$(document)
				.ready(
						function() {
							// Setup - add a text input to each footer cell
							$('#example thead tr').clone(true).appendTo(
									'#example thead');
							$('#example thead tr:eq(1) th')
									.each(
											function(i) {
												var title = $(this).text();
												$(this)
														.html(
																'<input type="text" placeholder="Search '+title+'" />');

												$('input', this)
														.on(
																'keyup change',
																function() {
																	if (t
																			.column(
																					i)
																			.search() !== this.value) {
																		t
																				.column(
																						i)
																				.search(
																						this.value)
																				.draw();
																	}
																});
											});
							var data = ${payments};
							var t = $('#example')
									.DataTable(
											{
												orderCellsTop : true,
												data : data,
												columns : [
														{
															data : null
														},
														{
															data : 'id'
														},
														{
															data : 'code'
														},
														{
															data : 'amount'
														},
														{
															data : 'mode'
														},
														{
															data : 'receiveBy'
														},
														{
															data : 'dateTime'
														},
														{
															data : null
														},
														{
															data : 'customer.id'
														},
														{
															data : 'customer.code'
														},
														{
															data : 'customer.customerName'
														},
														{
															data : 'customer.fatherOrHusbandName'
														},
														{
															data : 'customer.houseNumber'
														},
														{
															data : 'customer.streetNumber'
														},
														{
															data : 'customer.place'
														},
														{
															data : 'customer.wardName'
														},
														{
															data : 'customer.wardNumber'
														},
														{
															data : 'customer.phone'
														},
														{
															data : 'customer.email'
														},
														{
															data : 'customer.category'
														},
														{
															data : 'customer.subCategory'
														},
														{
															data : 'customer.charges'
														},
														{
															data : 'customer.serviceActivator'
														},
														{
															data : 'customer.dateOfActivation'
														},
														{
															data : 'customer.dataCollector'
														} ],
												dom : 'Bfrtip',
												buttons : [ 'excel',
														'pageLength' ],
												"columnDefs" : [
														{
															"searchable" : false,
															"orderable" : false,
															"targets" : 0
														},
														{
															"visible" : false,
															"targets" : 1
														},
														{
															"visible" : false,
															"targets" : 11
														},
														{
															"visible" : false,
															"targets" : 10
														},
														{
															"targets" : 7,
															"data" : null,
															"defaultContent" : "<button>Delete</button>"
														} ],
												"order" : [ [ 6, 'desc' ] ]
											});
							$('#example tbody')
									.on(
											'click',
											'button',
											function() {
												var data = t.row(
														$(this).parents('tr'))
														.data();
												var url = "deletePayment?id="
														+ data.id;
												window.open(url);
												console.log(data);
											});
							t.on('order.dt search.dt', function() {
								t.column(0, {
									search : 'applied',
									order : 'applied'
								}).nodes().each(function(cell, i) {
									cell.innerHTML = i + 1;
								});
							}).draw();
						});
	</script>
</body>
</html>
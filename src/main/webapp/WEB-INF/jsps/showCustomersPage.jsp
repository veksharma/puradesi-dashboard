<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>SVM Customers</title>
<%@ include file="commonParts/header.jsp" %>
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
</head>
<body>
	<%@ include file="commonParts/navbar.jsp"%>
	<div class="container-fluid bg-1 text-center">
		<h1>Customers</h1>
	</div>
	<div class="container-fluid bg-4 text-center">
		<table id="example" class="display nowrap" style="width: 100%">
			<thead>
				<tr>
				<th>S.No.</th>
					<th>Id</th>
					<th>Code</th>
					<th>Edit</th>
					<th>Customer Name</th>
					<th>Father or Husband Name</th>
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
					<th>Date of Activation</th>
					<th>Data Collector</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
				<th>S.No.</th>
					<th>Id</th>
					<th>Code</th>
					<th>Edit</th>
					<th>Customer Name</th>
					<th>Father or Husband Name</th>
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
					<th>Date of Activation</th>
					<th>Data Collector</th>
				</tr>
			</tfoot>
		</table>
	</div>
	<%@ include file="commonParts/footer.jsp"%>
<script>
$(document).ready(function() {
	// Setup - add a text input to each footer cell
    $('#example thead tr').clone(true).appendTo( '#example thead' );
    $('#example thead tr:eq(1) th').each( function (i) {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
 
        $( 'input', this ).on( 'keyup change', function () {
            if ( t.column(i).search() !== this.value ) {
                	t
                    .column(i)
                    .search( this.value )
                    .draw();
            }
        } );
    } );
 
	var data = ${customers};
	var t = $('#example').DataTable({
		orderCellsTop: true,
	    data: data,
	    columns: [ 
	    	{ data: null },
	    	{
				"data" : "id"
			}, {
				"data" : "code"
			}, 
			{ data: null },
			{
				"data" : "customerName"
			}, {
				"data" : "fatherOrHusbandName"
			}, {
				"data" : "houseNumber"
			}, {
				"data" : "streetNumber"
			}, {
				"data" : "place"
			}, {
				"data" : "wardName"
			}, {
				"data" : "wardNumber"
			}, {
				"data" : "phone"
			}, {
				"data" : "email"
			}, {
				"data" : "category"
			}, {
				"data" : "subCategory"
			}, {
				"data" : "charges"
			}, {
				"data" : "serviceActivator"
			}, {
				"data" : "dateOfActivation"
			}, {
				"data" : "dataCollector"
			} ],
			dom : 'Bfrtip',
			buttons : [ 'excel', 'pageLength' ],
		 	"columnDefs": [ 
			 { "searchable": false, "orderable": false, "targets": 0 },
			 { "visible": false, "targets": 1 },
			 { 
	          "targets": 3,
	          "data": null,
			  "defaultContent": "<button>Edit</button>"
			}
			 ],
	     "order": [[ 17, 'desc' ]]
			} );
	$('#example tbody').on( 'click', 'button', function () {
        var data = t.row( $(this).parents('tr') ).data();
        var url = "editCustomer?code=" + data.code;
        window.open(url);
        console.log(data);
    } ); 
		t.on( 'order.dt search.dt', function () {
        t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
            cell.innerHTML = i+1;
        } );
    } ).draw();
});
</script>
</body>
</html>
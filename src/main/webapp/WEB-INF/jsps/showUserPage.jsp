<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>WMS App Users</title>
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
		<h1>List of WMS App users</h1>
	</div>
	<div class="container-fluid bg-4 text-center">
		<table id="example" class="display nowrap" style="width: 100%">
			<thead>
				<tr>
				<th>S.No.</th>
					<th>Id</th>
					<th>User Name</th>
					<th>Password</th>
					<th>Edit</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
				<th>S.No.</th>
					<th>Id</th>
					<th>User Name</th>
					<th>Password</th>
					<th>Edit</th>
				</tr>
			</tfoot>
		</table>
	</div>
	<%@ include file="commonParts/footer.jsp"%>
<script>
$(document).ready(function() {
	var data = ${users};
	var t = $('#example').DataTable({
	    data: data,
	    columns: [
	    	{ data: null },
	        { data: 'id' },
	        { data: 'userName' },
	        { data: 'password' }, 
			{ data: null }
	    ],
	dom : 'Bfrtip',
	buttons : [ 'excel', 'pageLength' ],
	"columnDefs": [ 
		 { "searchable": false, "orderable": false, "targets": 0 },
		 { "visible": false, "targets": 1 },
		 { 
	          "targets": 4,
	          "data": null,
			  "defaultContent": "<button>Edit</button>"
			}
		 ],
		 "order": [[ 2, 'asc' ]]
	} );
	$('#example tbody').on( 'click', 'button', function () {
        var data = t.row( $(this).parents('tr') ).data();
        var url = "editUser?id=" + data.id;
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
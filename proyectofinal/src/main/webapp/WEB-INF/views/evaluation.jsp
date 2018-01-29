<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible"
	content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Proyecto Final</title>
<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link
	href="<c:url value="/resources/css/ie10-viewport-bug-workaround.css" />"
	rel="stylesheet">
<!-- DataTables -->
<link
	href="<c:url value="/resources/css/dataTables.bootstrap.min.css" />"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value="/resources/css/custom.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
</head>
<body>
	<div class="container">
		<div class="header clearfix">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation">
						<a href="<c:url value="/evaluacion/"/>">Usuario:&nbsp;
							${nombreUsuario}
						</a>
					</li>
				</ul>
			</nav>
			<h3 class="text-muted">Evaluaci&oacute;n T&eacute;cnica</h3>
		</div>
		<div class="searchForm">
			<form id="frmSearch" class="form-inline">

				<div class="input-group input-group-sm">
					<span class="input-group-addon"><i
						class="glyphicon glyphicon-user"></i></span> <input type="text"
						class="form-control" id="inputSName" aria-describedby=""
						placeholder="Buscar por nombre" name="sname">
				</div>

				<div class="input-group input-group-sm">
					<span class="input-group-addon" id="basic-addon1">@</span> <input
						type="email" class="form-control" id="inputSEmail" name="semail"
						placeholder="Buscar por email" aria-describedby="">
				</div>
				<button type="button" id="btnSearch" name="btnSearch" class="btn btn-primary btn-sm"
				data-toggle="tooltip" data-placement="right" title="Búsqueda por nombre, email o ambos">
					<span class="glyphicon glyphicon-search"></span> Buscar
				</button>
				<button type="button" id="btnNew" name="btnNew"
					class="btn btn-primary btn-sm btn-success pull-right">
						<span class="glyphicon glyphicon-plus"></span> Nuevo
				</button>
			</form>
		</div>
		<div class="dataTable">
			<table id="datatb" class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>#</th>
						<th>Nombre</th>
						<th>Año</th>
						<th>Edad</th>
						<th>Email</th>
						<th>Tel&eacute;fono</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>#</th>
						<th>Nombre</th>
						<th>Año</th>
						<th>Edad</th>
						<th>Email</th>
						<th>Tel&eacute;fono</th>
					</tr>
				</tfoot>
			</table>
		</div>
		<c:import url="include/footer.jsp" />
	</div>
	<!-- Jquery & Bootstrap-->
	<script src="<c:url value="/resources/js/jquery.validate.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="<c:url value="/resources/js/ie10-viewport-bug-workaround.js"/>"></script>
	<!-- DataTables -->
	<script src="<c:url value="/resources/js/jquery.dataTables.min.js" />"></script>
	<script
		src="<c:url value="/resources/js/dataTables.bootstrap.min.js" />"></script>
	<!-- Custom -->
	<script
		src="<c:url value="/resources/js/util.js" />"></script>
	<script
		src="<c:url value="/resources/js/functions.js" />"></script>
		
	<script type="text/javascript">
		$(document).ready(function() {
			//TODO: Agregar endpoint para cargar todos los registros >>>>>
			Util.initTable('http://localhost:8180/evaluacion/api/records');
			
			$('#btnNew').click(function() {
				Util.initModal();
			});
			$('#btnSearch').click(function () {
				//TODO: Agregar endpoint para buscar registros >>>>>
				var inputName = $("#inputSName").val();
				var inputEmail = $("#inputSEmail").val();
				if(inputName === undefined || inputName == ""){
					inputName = " ";
				} 
				if(inputEmail === undefined || inputEmail == ""){
					inputEmail = " ";
				}
				Util.updateTable('http://localhost:8180/evaluacion/api/records/ /' + inputName + '/' + inputEmail);
			});
		});
	</script>
	
	<!-- Modal -->
	<c:import url="include/modal.jsp" />
</body>
</html>
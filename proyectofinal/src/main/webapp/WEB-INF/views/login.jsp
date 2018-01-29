<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" />
		<link href="<c:url value="/resources/css/ie10-viewport-bug-workaround.css" />" rel="stylesheet" />
		<link href="<c:url value="/resources/css/dataTables.bootstrap.min.css" />" rel="stylesheet" />
		<link href="<c:url value="/resources/css/custom.css" />" rel="stylesheet" />
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
		<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<script type="text/javascript">
		</script>
	</head>
	<body>
		<div class="container py-5">
			<div class="row">
	        	<div class="col-md-6 offset-md-3">
					<div class="container">
			            <div class="card card-outline-secondary">
				            <div class="card-header">
				                <h3 class="mb-0">Login</h3>
				            </div>
				            <div class="col-md-12 card-block">
				                <form class="form" role="form" autocomplete="off" id="formLogin">
				                    <div class="form-group">
				                        <label for="uname1">Usuario</label>
				                        <input type="text" class="form-control" name="uname1" id="uname1" required="">
				                    </div>
				                    <div class="form-group">
				                        <label>Clave</label>
				                        <input type="password" class="form-control" id="pwd1" required="" autocomplete="new-password">
				                    </div>
				                    <div class="form-check small">
				                        <a href="/registrarUsuario" class="offset-md-5">Registrarse</a>
				                    </div>
				                    <div class="offset-lg-4 col-md-12" style="display: inline;">
				                        <button type="button" class="btn btn-primary btn-lg "">Ingresar</button>
				                        <button type="button" class="btn btn-cancel btn-lg " >Cancelar</button>
				                    </div>
				                </form>
				            </div>
				        </div>
			        </div>
		        </div>
	        </div>
        </div>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="container py-5">
			<div class="row">
	        	<div class="col-md-6 offset-md-3">
					<div class="container">
			            <div class="card card-outline-secondary">
				            <div class="card-header">
				                <h3 class="mb-0">Datos del Cliente</h3>
				            </div>
				            <div class="col-md-12 card-block">
				                <form:form modelAttribute="userBean" method="POST" action="grabarCliente">
				                    <div class="form-group">
				                        <label for="uname1">Nombres</label>
				                        <form:input type="text" class="form-control" id="nombrePersona" path="nombrePersona" />
				                    </div>
				                    <div class="form-group">
				                        <label for="uname1">Apellidos</label>
				                        <form:input type="text" class="form-control"  id="apellidoPersona" path="apellidoPersona" />
				                    </div>
				                    <div class="form-group">
				                        <label for="uname1">Edad</label>
				                        <form:input type="number" class="form-control"  id="edad" path="edad" />
				                    </div>
				                    <div class="form-group">
				                        <label for="uname1">Número Teléfono</label>
				                        <form:input type="text" class="form-control"  id="numeroTelefono" path="numeroTelefono" />
				                    </div>
				                    <div class="form-group">
				                        <label for="uname1">Correo Electrónico</label>
				                        <form:input type="text" class="form-control"  id="correoElectronico" path="correoElectronico" />
				                    </div>
				                    <div class="form-group">
				                        <label for="uname1">Nombre Usuario</label>
				                        <form:input type="text" class="form-control"  id="nombreUsuario" path="cliente.nombreUsuario" />
				                    </div>
				                    <div class="form-group">
				                        <label>Contraseña</label>
				                        <form:input type="password" class="form-control" id="clave" path="cliente.clave" autocomplete="new-password"/>
				                    </div>
				                    <div class="col-md-12">
				                        <form:button class="btn btn-primary offset-md-1 col-md-5" value="enviar" >Registrar</form:button>
				                        <form:button class="btn btn-primary col-md-5" value="enviar" >Cancelar</form:button>
				                    </div>
				                </form:form>
<%-- 				                <form class="form" role="form" autocomplete="off" id="formLogin"> --%>
<!-- 				                    <div class="form-group"> -->
<!-- 				                        <label for="uname1">Nombres</label> -->
<!-- 				                        <input type="text" class="form-control"  id="uname1" > -->
<!-- 				                    </div> -->
<!-- 				                    <div class="form-group"> -->
<!-- 				                        <label for="uname1">Apellidos</label> -->
<!-- 				                        <input type="text" class="form-control"  id="uname1" > -->
<!-- 				                    </div> -->
<!-- 				                    <div class="form-group"> -->
<!-- 				                        <label for="uname1">Edad</label> -->
<!-- 				                        <input type="number" class="form-control"  id="uname1" > -->
<!-- 				                    </div> -->
<!-- 				                    <div class="form-group"> -->
<!-- 				                        <label for="uname1">Número Teléfono</label> -->
<!-- 				                        <input type="text" class="form-control"  id="uname1" > -->
<!-- 				                    </div> -->
<!-- 				                    <div class="form-group"> -->
<!-- 				                        <label for="uname1">Correo Electrónico</label> -->
<!-- 				                        <input type="text" class="form-control"  id="uname1" > -->
<!-- 				                    </div> -->
<!-- 				                    <div class="form-group"> -->
<!-- 				                        <label for="uname1">Nombre Usuario</label> -->
<!-- 				                        <input type="text" class="form-control"  id="uname1" > -->
<!-- 				                    </div> -->
<!-- 				                    <div class="form-group"> -->
<!-- 				                        <label>Contraseña</label> -->
<!-- 				                        <input type="password" class="form-control" id="pwd1"  autocomplete="new-password"> -->
<!-- 				                    </div> -->
<!-- 				                    <div class="col-md-12"> -->
<!-- 				                        <button type="button" class="btn btn-primary offset-md-1 col-md-5">Registrar</button> -->
<!-- 				                        <button type="button" class="btn btn-primary col-md-5">Cancelar</button> -->
<!-- 				                    </div> -->
<%-- 				                </form> --%>
				            </div>
				        </div>
			        </div>
		        </div>
	        </div>
        </div>
	</body>
</html>
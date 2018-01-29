<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div id="modalNew" class="modal fade" role="dialog" tabindex="-1" aria-hidden="false">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Nuevo Registro</h4>
			</div>
			<form id="frmNew" name="frmNew">
			<div class="modal-body">
				
		          <div class="form-group form-group-sm v-error">
		            <label for="recipient-name" class="form-control-label">Nombre:</label>
		            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
		            <input type="text" class="form-control" id="name" name="name">
		          </div>
		          <div class="form-group form-group-sm v-error">
		            <label for="message-text" class="form-control-label">Edad:</label>
			        <span class="input-group-addon" id="basic-addon1">#</span>
		            <input type="text" class="form-control" id="age" name="age">
		          </div>
		          <div class="form-group form-group-sm v-error">
		            <label for="message-text" class="form-control-label">Email:</label>
			        <span class="input-group-addon" id="basic-addon1">@</span>
		            <input type="email" class="form-control" id="email" name="email">
		          </div>
		          <div class="form-group form-group-sm v-error">
		            <label for="message-text" class="form-control-label">Tel&eacute;fono:</label>
			        <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
		            <input type="text" class="form-control" id="phone" name="phone">
		          </div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-sm btn-success" id="btnSave" >
					<span class="glyphicon glyphicon-floppy-disk"></span> Guardar
				</button>
			</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		Util.initForm();
		$('#btnSave').click(function(){
		    if ($("#frmNew").valid()) {
		    	//TODO: Agregar lógica para guardar un registro >>>>>
		    	var data = {}
					data["name"] = $("#name").val();
					data["age"] = $("#age").val();
					data["email"] = $("#email").val();
					data["phone"] = $("#phone").val();

				$.ajax({
		             type: "POST",
		             contentType: "application/json",
		             url: "/evaluacion/api/grabarUsuario",
		             data: JSON.stringify(data),
		             dataType: 'json',
		             timeout: 600000,
		             success: function (data) {
		                 $("#btnSave").prop("disabled", false);
		                 //...
		             },
		             error: function (e) {
		                 $("#btnSave").prop("disabled", false);
		                 //...
		             }
				});
		    	$('#modalNew').modal('toggle');
		    	Util.resetForm();
		    }
		});
	});
</script>

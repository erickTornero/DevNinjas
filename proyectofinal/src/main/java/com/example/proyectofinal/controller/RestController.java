package com.example.proyectofinal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.example.proyectofinal.bean.DataTableBean;
import com.example.proyectofinal.bean.UserBean;
import com.example.proyectofinal.bean.Usuario;
import com.example.proyectofinal.service.UserService;

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/pagoServicio/api")
public class RestController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/buscarUsuario", method = RequestMethod.POST	, produces = {
			"application/json" }, consumes = { "application/json" })
	@ResponseBody
	public Usuario buscarUsuario(@RequestBody Usuario usuario) throws Exception {
		usuario = new Usuario();
		usuario = userService.buscarUsuarioClave(usuario.getUsuario(), usuario.getClave());
		return usuario;
	}

	@RequestMapping(value = "/records", method = RequestMethod.GET, produces = { "application/json" })
	@ResponseBody
	public DataTableBean getRecords() throws Exception {
		DataTableBean dataTableBean = new DataTableBean();
		List<UserBean> lstUserBean = userService.searchUsers(null, null, null);
		dataTableBean.setData(lstUserBean);
		return dataTableBean;
	}

	@RequestMapping(value = "/records/{id}/{name}/{email}", method = RequestMethod.GET, produces = {
			"application/json" })
	@ResponseBody
	public DataTableBean searchRecords(@PathVariable String id, @PathVariable String name, @PathVariable String email)
			throws Exception {
		DataTableBean dataTableBean = new DataTableBean();
		List<UserBean> lstUserBean = userService.searchUsers(id.trim(), name.trim(), email.trim());
		dataTableBean.setData(lstUserBean);
		return dataTableBean;
	}

	@RequestMapping(value = "/grabarUsuario", method = RequestMethod.POST, consumes = { "application/json" })
	@ResponseStatus(HttpStatus.OK)
	public ResponseEntity<UserBean> grabarUsuario(@RequestBody UserBean userBean) throws Exception {
		userBean = userService.saveUser(userBean);
		return new ResponseEntity<>(userBean, HttpStatus.CREATED);
	}

	@RequestMapping(value = "/actualizarUsuario", method = RequestMethod.PUT, consumes = { "application/json" })
	@ResponseStatus(HttpStatus.OK)
	public ResponseEntity<UserBean> actualizarUsuario(@RequestBody UserBean userBean) throws Exception {
		userBean = userService.updateUser(userBean);
		return new ResponseEntity<>(userBean, HttpStatus.CREATED);
	}

	@RequestMapping(value = "/eliminarUsuario", method = RequestMethod.DELETE, consumes = { "application/json" })
	@ResponseStatus(HttpStatus.OK)
	public ResponseEntity<UserBean> eliminarUsuario(@RequestBody UserBean userBean) throws Exception {
		userBean = userService.deleteUser(userBean);
		return new ResponseEntity<>(userBean, HttpStatus.CREATED);
	}

}

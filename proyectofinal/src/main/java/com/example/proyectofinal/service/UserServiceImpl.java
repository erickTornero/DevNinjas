package com.example.proyectofinal.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.proyectofinal.bean.UserBean;
import com.example.proyectofinal.bean.Usuario;
import com.example.proyectofinal.dao.UserDao;

@Service("viewService")
public class UserServiceImpl implements UserService {

	private static final long serialVersionUID = -8461498672265857217L;

	@Autowired
	private UserDao userDao;

	@Override
	public Usuario buscarUsuarioClave(String codigoUsuario, String clave) throws Exception {
		Usuario usuario = new Usuario();
		usuario = userDao.buscarUsuarioClave(codigoUsuario, clave);
		return usuario;
	}

	public List<UserBean> searchUsers(String id, String name, String email) throws Exception {
		List<UserBean> lstUserBean = new ArrayList<UserBean>(0);
		try {
			lstUserBean = userDao.searchUsers(id, name, email);
		} catch (Exception e) {
			throw e;
		}
		return lstUserBean;
	}

	public UserBean saveUser(UserBean userBean) throws Exception {
		try {
			userDao.saveUser(userBean);
		} catch (Exception e) {
			throw e;
		}
		return null;
	}

	public UserBean updateUser(UserBean userBean) throws Exception {
		try {
			userDao.updateUser(userBean);
		} catch (Exception e) {
			throw e;
		}
		return null;
	}

	public UserBean deleteUser(UserBean userBean) throws Exception {
		try {
			userDao.deleteUser(userBean);
		} catch (Exception e) {
			throw e;
		}
		return null;
	}

}

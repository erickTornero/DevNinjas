package com.example.proyectofinal.dao;

import java.util.List;

import com.example.proyectofinal.bean.UserBean;
import com.example.proyectofinal.bean.Usuario;

public interface UserDao {

	public Usuario buscarUsuarioClave(final String usuario, final String clave) throws Exception;

	public List<UserBean> searchUsers(String id, String name, String email) throws Exception;

	public UserBean saveUser(UserBean userBean) throws Exception;

	public UserBean updateUser(UserBean userBean) throws Exception;

	public UserBean deleteUser(UserBean userBean) throws Exception;
}

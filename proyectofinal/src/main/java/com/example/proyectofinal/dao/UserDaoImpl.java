package com.example.proyectofinal.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.proyectofinal.bean.UserBean;
import com.example.proyectofinal.bean.UserMapper;
import com.example.proyectofinal.bean.Usuario;
import com.example.proyectofinal.bean.UsuarioMapper;

@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao {

	@Autowired
	private DataSource dataSource;
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public Usuario buscarUsuarioClave(String codigoUsuario, String clave) throws Exception {
		Usuario usuario = new Usuario();
		StringBuilder query = new StringBuilder();
		try {
//			query.append("  SELECT * FROM USUARIO  ");
//			query.append("  WHERE USUARIO = ?  ");
//			query.append("  AND CLAVE = ?  ");
//			jdbcTemplate = new JdbcTemplate(dataSource);
//			usuario = (Usuario) jdbcTemplate.query(query.toString(), new UsuarioMapper());
			
			usuario.setClave("asd");
			usuario.setUsuario("asdasd");
			com.example.proyectofinal.bean.Error error = new com.example.proyectofinal.bean.Error();
			error.setCodigoError("1");
			error.setDescripcionError("usuario no existe");
			usuario.setError(error);
		} catch (Exception e) {
			throw e;
		}
		return usuario;
	}

	@Override
	public List<UserBean> searchUsers(String id, String name, String email) throws Exception {
		List<UserBean> lstUserBean = new ArrayList<UserBean>(0);
		StringBuilder query = new StringBuilder();
		query.append("  select * PHONE from USUARIO  ");

		try {
			query.append("  select ID, NAME, AGE, EMAIL, PHONE from USERR  ");
			if (name == null) {
				name = "";
			}
			if (email == null) {
				email = "";
			}
			if (id == null) {
				id = "";
			}
			if (name == "" && email != "" && id == "") {
				query.append(" Where NAME = %" + name + "% ");
			}
			if (email == "" && name != "" && id == "") {
				query.append(" Where EMAIL = %" + email + "% ");
			}
			if (id == "" && email != "" && name != "") {
				query.append(" Where ID = %" + id + "% ");
			}
			if (email != "" && name != "" && id != "") {
				query.append(" Where EMAIL like '%" + email + "%' ");
				query.append("   And NAME like '%" + name + "%' ");
				query.append("   And ID like '%" + id + "%' ");
			}
			jdbcTemplate = new JdbcTemplate(dataSource);
			lstUserBean = jdbcTemplate.query(query.toString(), new UserMapper());
		} catch (Exception e) {
			throw e;
		}
		return lstUserBean;
	}

	@Override
	public UserBean saveUser(UserBean userBean) throws Exception {
		try {
			StringBuilder query = new StringBuilder();
			query.append("insert into USERR (name, age, email, phone) values (?, ?, ?, ?)");
			jdbcTemplate.update(query.toString(), userBean.getName(), userBean.getAge(), userBean.getEmail(),
					userBean.getPhone());
		} catch (Exception e) {
			throw e;
		}
		return null;
	}

	@Override
	public UserBean updateUser(UserBean userBean) throws Exception {
		try {
			StringBuilder query = new StringBuilder();
			query.append(" UPDATE USERR ");
			query.append(" SET NAME = ?, ");
			query.append(" 	   EMAIL = ?, ");
			query.append("     AGE = ?, ");
			query.append("     PHONE = ? ");
			query.append(" WHERE ID = ? ");
			jdbcTemplate.update(query.toString(), userBean.getName(), userBean.getEmail(), userBean.getAge(),
					userBean.getPhone(), userBean.getId());
		} catch (Exception e) {
			throw e;
		}
		return null;
	}

	@Override
	public UserBean deleteUser(UserBean userBean) throws Exception {
		StringBuilder query = new StringBuilder();
		query.append(" DELETE FROM USERR ");
		query.append(" WHERE ID = ? ");
		jdbcTemplate.update(query.toString(), userBean.getId());
		return null;
	}

}

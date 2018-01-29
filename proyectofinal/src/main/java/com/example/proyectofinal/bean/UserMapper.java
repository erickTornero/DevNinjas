package com.example.proyectofinal.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<UserBean> {

	public UserBean mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserBean userBean = new UserBean();

		userBean.setId(rs.getInt("ID"));
		userBean.setName(rs.getString("NAME"));
		userBean.setAge(rs.getInt("AGE"));
		userBean.setEmail(rs.getString("EMAIL"));
		userBean.setPhone(rs.getString("PHONE"));
		userBean.setYear(2018);

		return userBean;
	}
}

package com.example.proyectofinal.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UsuarioMapper implements RowMapper<Usuario> {
	public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
		Usuario usuario = new Usuario();

		usuario.setUsuario(rs.getString("USUARIO"));
		usuario.setClave(rs.getString("CLAVE"));

		return usuario;
	}
}

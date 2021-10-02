package com.data.adminDAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.data.Database;
import com.model.AdminType;
import com.model.Adminuser;
import com.model.User;

public class AdminAccountDAO {
	
	Connection con;
	String loadHashAndSaltQuery = "SELECT username, password_hash, password_salt FROM shop.adminuser where username=?;";
	String registerQuery = "Insert into Shop.adminuser (username, password_hash, password_salt, first_name, last_name, type_id) Values (?, ?, ?, ?, ?, ?);";
	String checkUsernameQuery = "Select username From Shop.adminuser Where username = ? ;";
	String loadAdminQuery = "SELECT * FROM shop.adminuser INNER JOIN shop.admin_type ON adminuser.type_id = admin_type.id where username=?;";

	public AdminAccountDAO() throws ClassNotFoundException, SQLException {
		con = new Database().getConnection();
	}

	// load password hash and salt by the username from database
	public Adminuser loadHashAndSalt(String username) throws SQLException {
		var st = con.prepareStatement(loadHashAndSaltQuery);
		st.setString(1, username);
		var rs = st.executeQuery();
		if (rs.next()) {
			// exist
			Adminuser admin = new Adminuser();
			admin.setUsername(rs.getString("username"));
			admin.setPasswordHash(rs.getBytes("password_hash"));
			admin.setPasswordSalt(rs.getBytes("password_salt"));
			return admin;
		} else {
			// not exist
			return null;
		}
	}

	// true if ok, false if failse
	public boolean CreateAdmin(Adminuser newAdmin) throws SQLException {

		var st = con.prepareStatement(registerQuery);
		st.setString(1, newAdmin.getUsername());
		st.setBytes(2, newAdmin.getPasswordHash());
		st.setBytes(3, newAdmin.getPasswordSalt());
		st.setString(4, newAdmin.getFirst_name());
		st.setString(5, newAdmin.getLast_name());
		st.setInt(6, newAdmin.getType_id());
		var rs = st.executeUpdate();
		if (rs > 0) {
			// Success
			return true;
		} else {
			// Fails
			return false;
		}
	}

	// true if exist, false if not exist
	public boolean isUsernameExisted(String username) throws SQLException {
		var st = con.prepareStatement(checkUsernameQuery);
		st.setString(1, username);
		var rs = st.executeQuery();
		if (rs.next()) {
			// exist
			return true;
		} else {
			// not exist
			return false;
		}
	}

	public Adminuser loadAdmin(String username) throws SQLException {
		var st = con.prepareStatement(loadAdminQuery);
		st.setString(1, username);
		var rs = st.executeQuery();
		if (rs.next()) {
			// exist
			Adminuser admin = new Adminuser();
			admin.setUsername(rs.getString("username"));
			admin.setPasswordHash(rs.getBytes("password_hash"));
			admin.setPasswordSalt(rs.getBytes("password_salt"));
			admin.setFirst_name(rs.getString("first_name"));
			admin.setLast_name(rs.getString("last_name"));
			admin.setLast_login(rs.getTimestamp("last_login"));
			admin.setCreated_at(rs.getTimestamp("created_at"));
			admin.setModified_at(rs.getTimestamp("modified_at"));
			admin.setType_id(rs.getInt("type_id"));
			
			AdminType type = new AdminType();
			type.setId(rs.getInt("type_id"));
			type.setAdmin_type(rs.getString("admin_type"));
			type.setPermissions(rs.getString("permissions"));
			type.setCreated_at(rs.getTimestamp("created_at"));
			type.setModified_at(rs.getTimestamp("modified_at"));
			
			admin.setType(type);
			
			return admin;
		} else {
			// not exist
			return null;
		}
	}
}

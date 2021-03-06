package com.data.accountDAO;

import java.sql.Connection;
import java.sql.SQLException;

import com.DTOs.RegisterDTO;
import com.data.Database;
import com.model.User;
import com.services.HashService;

public class RegisterDAO {
	
	Connection con;
	String registerQuery = "Insert into Shop.user (username, password_hash, password_salt) Values (?, ?, ?);";
	String checkUsernameQuery = "Select username From Shop.user Where username = ? ;";
	
	public RegisterDAO () throws ClassNotFoundException, SQLException {
		con = new Database().getConnection();
	}
	
	public boolean register(User newUser) throws SQLException{
		
		var st = con.prepareStatement(registerQuery);
		st.setString(1, newUser.getUsername());
		st.setBytes(2, newUser.getPasswordHash());
		st.setBytes(3, newUser.getPasswordSalt());
		var rs = st.executeUpdate();
		if(rs > 0) {
			// Success
			return true;
		}else {
			// Fails
			return false;
		}
	}
	
	//true if exist, false if not exist
	public boolean isUsernameExisted(String username) throws SQLException {
		var st = con.prepareStatement(checkUsernameQuery);
		st.setString(1, username);
		var rs = st.executeQuery();
		if(rs.next()) {
			// exist
			return true;
		}else {
			// not exist
			return false;
		}
	}
}

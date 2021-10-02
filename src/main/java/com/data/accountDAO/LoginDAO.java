package com.data.accountDAO;

import java.sql.Connection;
import java.sql.SQLException;


import com.data.Database;
import com.model.User;

public class LoginDAO {
	
	Connection con;
	String loadUserQuery = "SELECT username, password_hash, password_salt FROM shop.user where username=?;";
	
	public LoginDAO () throws ClassNotFoundException, SQLException {
		con = new Database().getConnection();
	}
	

	// load password hash and salt by the username from database
	public User loadHashAndSalt (String username) throws SQLException{
		var st = con.prepareStatement(loadUserQuery);
		st.setString(1, username);
		var rs = st.executeQuery();
		if (rs.next()) {
			// exist
			User user = new User();
			user.setUsername(rs.getString("username"));
			user.setPasswordHash(rs.getBytes("password_hash"));
			user.setPasswordSalt(rs.getBytes("password_salt"));
			return user;
		} else {
			// not exist
			return null;
		}
	}
} 

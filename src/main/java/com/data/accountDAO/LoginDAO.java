package com.data.accountDAO;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Arrays;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import com.DTOs.LoginDTO;
import com.data.Database;
import com.model.User;
import com.services.HashService;

public class LoginDAO {
	
	Connection con;
	String loadUserQuery = "SELECT username, password_hash, password_salt FROM shop.user where username=?;";
	
	public LoginDAO () throws ClassNotFoundException, SQLException {
		con = new Database().getConnection();
	}
	
	public boolean login(LoginDTO loginDTO){
		User userFromDatabase = null;
		
		try {
			userFromDatabase = loadHashAndSalt(loginDTO.getUsername());
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
		if(userFromDatabase == null) {
			return false;
		}
		
		//compute hash
		HashService hashService = new HashService();
		byte[] hashedInputPass = hashService.doHash(
				loginDTO.getPassword().getBytes(), userFromDatabase.getPasswordSalt());
		
		// compare hash result with the hash from database
		return Arrays.equals(hashedInputPass, userFromDatabase.getPasswordHash());
	}
	

	// load password hash and salt by the username from database
	protected User loadHashAndSalt (String username) throws SQLException{
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

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

public class LoginDAO {
	
	Connection con;
	String loadUserQuery = "SELECT username, password_hash, password_salt FROM shop.user where username=?;";
	
	public LoginDAO () throws ClassNotFoundException, SQLException {
		con = new Database().getConnection();
	}
	
	public boolean login(LoginDTO loginDTO){
		try {
			User user = loadHashAndSalt(loginDTO.getUsername());
			if(user == null) {
				return false;
			}
			
			// compute hash from the input password
			SecretKeySpec secretKeySpec = new SecretKeySpec(user.getPasswordSalt(), "HmacSHA512");
			Mac mac = Mac.getInstance("HmacSHA512");
			mac.init(secretKeySpec);
			byte[] hashResult = mac.doFinal(loginDTO.getPassword().getBytes());
			
			// compare hash result with the hash from database
			return Arrays.equals(hashResult, user.getPasswordHash());
			
		} catch (SQLException | InvalidKeyException | NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	

	// load password hash and salt
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

package com.data.accountDAO;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Random;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import com.DTOs.RegisterDTO;
import com.data.Database;

public class RegisterDAO {
	Connection con;
	String registerQuery = "Insert into Shop.user (username, password_hash, password_salt) Values (?, ?, ?);";
	String checkUsernameQuery = "Select username From Shop.user Where username = ? ;";
	
	public RegisterDAO () throws ClassNotFoundException, SQLException {
		con = new Database().getConnection();
	}
	
	public boolean register(RegisterDTO registerDTO) throws SQLException{
		
		byte[] salt = generateSalt();;
		byte[] hash = null;
		
		try {
			// do hashing
			SecretKeySpec secretKeySpec = new SecretKeySpec(salt, "HmacSHA512");
			Mac mac = Mac.getInstance("HmacSHA512");
			mac.init(secretKeySpec);
			hash = mac.doFinal(registerDTO.getPassword().getBytes());
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		var st = con.prepareStatement(registerQuery);
		st.setString(1, registerDTO.getUsername());
		st.setBytes(2, hash);
		st.setBytes(3, salt);
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
	
	// Stack stackoverflow: https://stackoverflow.com/questions/20536566/creating-a-random-string-with-a-z-and-0-9-in-java
	protected byte[] generateSalt() {
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 18) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        return salt.toString().getBytes();
    }
}

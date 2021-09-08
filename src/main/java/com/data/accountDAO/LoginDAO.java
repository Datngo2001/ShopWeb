package com.data.accountDAO;

import java.sql.Connection;
import java.sql.SQLException;

import com.data.Database;
import com.model.account.LoginModel;

public class LoginDAO {
	
	Connection con;
	String loginQuery = "SELECT username, password FROM shop.user where username=? and password=?;";
	
	public LoginDAO () throws ClassNotFoundException, SQLException {
		con = new Database().getConnection();
	}
	
	public boolean login(LoginModel loginModel) throws SQLException {
		
		var st = con.prepareStatement(loginQuery);
		st.setString(1, loginModel.getUsername());
		st.setString(2, loginModel.getPassword());
		var rs = st.executeQuery();
		if(rs.next()) {
			return true;
		}else {
			return false;
		}
	}
} 

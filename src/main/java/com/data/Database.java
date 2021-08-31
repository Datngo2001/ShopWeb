package com.data;

import java.sql.*;
//import com.mysql.jdbc.Driver;

public class Database {
	private String url = "jdbc:mysql://localhost:3306/shop";
	private String username = "ShopApp";
	private String password = "2021ShopApp2021";
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		return con;
	}
}

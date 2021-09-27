package com.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Product;

public class ProductDAO {
	
	String getProductQuery = "select * from Product";
	String insertProductQuery = "insert into product (name, description, price) values (?, ?, ?)";
	
	public Database db;
	
	public ProductDAO() {
		db = new Database();
	}
	
	public List<Product> getProducts() throws Exception {
		List<Product> products = new ArrayList<>();
		Connection myCon = null;
		Statement mySta = null;
		ResultSet myRes = null;
		try {
			myCon = db.getConnection();
			mySta = myCon.createStatement();
			
			myRes = mySta.executeQuery(getProductQuery);
			while(myRes.next()) {
				String name = myRes.getString("name");
				String des = myRes.getString("description");
				int price = myRes.getInt("price");
				Product tempProduct = new Product(name, des, price);
				products.add(tempProduct);
			}
			return products;
		}
		finally {
			db.closeConnection(myCon, mySta, myRes);
		}
		
	}

	public void addProduct(Product theProduct) throws ClassNotFoundException, SQLException {
		Connection myCon = null;
		PreparedStatement myPreS = null;
		try {
			myCon = db.getConnection();
			myPreS = myCon.prepareStatement(getProductQuery);
			myPreS.setString(1, theProduct.getName());
			myPreS.setString(2, theProduct.getDescription());
			myPreS.setInt(3, theProduct.getPrice());
			myPreS.execute();
		}
		finally {
			db.closeConnection(myCon, myPreS, null);
		}
	}
	
}


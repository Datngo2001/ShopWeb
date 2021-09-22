package com.data;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Product;

public class ProductDAO {
	
	String getProductQuery = "select * from Product";
	
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
	
}


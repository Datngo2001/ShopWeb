package com.helperClass;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.model.Product;

public class ProductDbUtil {
	private DataSource dataSource;
	public ProductDbUtil(DataSource _data) {
		dataSource = _data;
	}
	public List<Product> getProducts() throws Exception {
		List<Product> products = new ArrayList<>();
		Connection myCon = null;
		Statement mySta = null;
		ResultSet myRes = null;
		try {
			myCon = dataSource.getConnection();
			String sql = "select * from Product";
			mySta = myCon.createStatement();
			
			myRes = mySta.executeQuery(sql);
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
			close(myCon, mySta, myRes);
		}
		
	}
	private void close(Connection myCon, Statement mySta, ResultSet myRes) {
		try {
			if(myCon != null) 
				myCon.close();
			if(mySta != null)
				mySta.close();
			if(myRes != null)
				myRes.close();
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}

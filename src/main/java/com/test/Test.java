package com.test;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.data.Database;

@WebServlet("/test")
public class Test extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
//		int a = Integer.parseInt(req.getParameter("num1"));
//		int b = Integer.parseInt(req.getParameter("num2"));
//		
//		int c = a + b;
//		
//		PrintWriter out = res.getWriter();
//		
//		out.println("Result is: " + c);
		
		try {
			Connection con = new Database().getConnection();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

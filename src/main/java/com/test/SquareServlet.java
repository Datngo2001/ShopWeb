package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SquareServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		HttpSession session = req.getSession();
		
		//int c = Integer.parseInt(req.getParameter("c"));
		
		int c = (int) session.getAttribute("c");
		
		c = c * c;
		
		PrintWriter out = res.getWriter();
		
		out.println("Result is: " + c);

	}
}

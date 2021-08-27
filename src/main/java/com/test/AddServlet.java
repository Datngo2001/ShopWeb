package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		int a = Integer.parseInt(req.getParameter("num1"));
		int b = Integer.parseInt(req.getParameter("num2"));
		
		int c = a + b;
		
		//PrintWriter out = res.getWriter();
	
		//out.println("Result is: " + c);
		
		/*
		req.setAttribute("c", c);
		
		RequestDispatcher rd = req.getRequestDispatcher("square");
		rd.forward(req, res);
		*/
		
		//res.sendRedirect("square?c=" + c);	
		
		HttpSession session = req.getSession();
		session.setAttribute("c", c);
		res.sendRedirect("square");
	}
}

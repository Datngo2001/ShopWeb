package com.controller.account;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.data.accountDAO.LoginDAO;
import com.model.account.LoginModel;

@WebServlet("/login")
public class login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		LoginModel loginModel = new LoginModel();
		loginModel.setUsername(request.getParameter("username"));
		loginModel.setPassword(request.getParameter("password"));
		
		try {
			var loginDAO = new LoginDAO();
			if(loginDAO.login(loginModel)) {
				HttpSession session = request.getSession();
				session.setAttribute("username", loginModel.getUsername());
				response.sendRedirect("home.jsp");
			}else {
				response.sendRedirect("login.jsp");
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

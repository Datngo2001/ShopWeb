package com.controller.account;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DTOs.RegisterDTO;
import com.data.accountDAO.RegisterDAO;


@WebServlet("/register")
public class register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RegisterDTO registerDTO = new RegisterDTO();
		registerDTO.setUsername(request.getParameter("username"));
		registerDTO.setPassword(request.getParameter("password"));
		registerDTO.setReEnter(request.getParameter("reEnter"));
		
		//Check not match password
		if (!registerDTO.getPassword().equals(registerDTO.getReEnter())) {
			// dispatch to register.jsp with a message			
			SendErrorForRegisterPage(request, response, "Password not match");
		}
		
		try {
			var registerDAO = new RegisterDAO();
			
			// Check existed user name
			if(registerDAO.isUsernameExisted(registerDTO.getUsername())) {
				// dispatch to register.jsp with a message
				SendErrorForRegisterPage(request, response, "Username is existed");
			}
			
			// do register
			if(registerDAO.register(registerDTO)) {
				HttpSession session = request.getSession();
				session.setAttribute("username", registerDTO.getUsername());
				response.sendRedirect("home.jsp");
			}else {
				// dispatch to register.jsp with a message
				SendErrorForRegisterPage(request, response, "Register server error");
			}					
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void SendErrorForRegisterPage(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {
		request.setAttribute("registerMessage", message);			
		request.getRequestDispatcher("register.jsp").forward(request, response);
	}
}

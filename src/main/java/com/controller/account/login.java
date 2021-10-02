package com.controller.account;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DTOs.LoginDTO;
import com.data.accountDAO.LoginDAO;
import com.services.HashService;

@WebServlet("/login")
public class login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		LoginDTO loginDTO = new LoginDTO();
		loginDTO.setUsername(request.getParameter("username"));
		loginDTO.setPassword(request.getParameter("password"));

		try {
			var loginDAO = new LoginDAO();
			
			var user = loginDAO.loadHashAndSalt(loginDTO.getUsername());
				
			//compute hash
			HashService hashService = new HashService();
			byte[] hashedInputPass = hashService.doHash(
					loginDTO.getPassword().getBytes(), user.getPasswordSalt());
				
			// compare hash result with the hash from database
		    boolean matched = Arrays.equals(hashedInputPass, user.getPasswordHash());			
			
			if (matched) {
				HttpSession session = request.getSession();
				session.setAttribute("username", loginDTO.getUsername());
				response.sendRedirect("home.jsp");
			} else {
				request.setAttribute("loginMessage", "Password or username incorrect");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

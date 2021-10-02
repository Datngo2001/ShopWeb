package com.controller.admin;

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
import com.data.adminDAO.AdminAccountDAO;
import com.services.HashService;


@WebServlet("/admin/admin-login")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginDTO loginDTO = new LoginDTO();
		loginDTO.setUsername(request.getParameter("username"));
		loginDTO.setPassword(request.getParameter("password"));

		try {
			var adminAccountDAO = new AdminAccountDAO();
			
			var admin = adminAccountDAO.loadHashAndSalt(loginDTO.getUsername());
				
			//compute hash
			HashService hashService = new HashService();
			byte[] hashedInputPass = hashService.doHash(
					loginDTO.getPassword().getBytes(), admin.getPasswordSalt());
				
			// compare hash result with the hash from database
		    boolean matched = Arrays.equals(hashedInputPass, admin.getPasswordHash());			
			
			if (matched) {
				HttpSession session = request.getSession();
				session.setAttribute("username", loginDTO.getUsername());
				
				admin = adminAccountDAO.loadAdmin(loginDTO.getUsername());
				var type = admin.getType();
				
				session.setAttribute("adminType", type.getAdmin_type());
				session.setAttribute("permissions", type.getPermissions());
				
				response.sendRedirect("admin-root");
			} else {
				request.setAttribute("loginMessage", "Password or username incorrect");
				request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

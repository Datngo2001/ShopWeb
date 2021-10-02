package com.controller.admin;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DTOs.admin.AdminCreateDTO;
import com.data.adminDAO.AdminAccountDAO;
import com.model.Adminuser;
import com.services.HashService;

@WebServlet("/admin/admin-create")
public class CreateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CreateAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminCreateDTO adminCreateDTO = new AdminCreateDTO();
		adminCreateDTO.setUsername(request.getParameter("username"));
		adminCreateDTO.setPassword(request.getParameter("password"));
		adminCreateDTO.setReEnter(request.getParameter("reEnter"));
		adminCreateDTO.setFirstName(request.getParameter("firstName"));
		adminCreateDTO.setLastName(request.getParameter("lastName"));
		try {
			adminCreateDTO.setTypeID(Integer.parseInt(request.getParameter("TypeID")));
		}catch(NumberFormatException e){
			SendMessage(request, response, "Type Invalid");
		}	
		
		// Check not match password
		if (!adminCreateDTO.getPassword().equals(adminCreateDTO.getReEnter())) {
			// dispatch to register.jsp with a message
			SendMessage(request, response, "Password not match");
		}

		try {
			var adminAccountDAO = new AdminAccountDAO();
			
			// Check existed user name
			if (adminAccountDAO.isUsernameExisted(adminCreateDTO.getUsername())) {
				// dispatch to register.jsp with a message
				SendMessage(request, response, "Username is existed");
			}
			
			HashService hashService = new HashService();

			byte[] salt = hashService.generateSalt();
			byte[] hash = null;

			// compute hash
			hash = hashService.doHash(adminCreateDTO.getPassword().getBytes(), salt);

			Adminuser admin = new Adminuser();
			admin.setPasswordHash(hash);
			admin.setPasswordSalt(salt);
			admin.setUsername(adminCreateDTO.getUsername());
			admin.setFirst_name(adminCreateDTO.getFirstName());
			admin.setLast_name(adminCreateDTO.getLastName());
			admin.setType_id(adminCreateDTO.getTypeID());
			
			// do register
			if (adminAccountDAO.CreateAdmin(admin)) {
				SendMessage(request, response, "Admin Created");
			} else {
				// dispatch to register.jsp with a message
				SendMessage(request, response, "Register server error");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void SendMessage(HttpServletRequest request, HttpServletResponse response, String message)
			throws ServletException, IOException {
		request.setAttribute("registerMessage", message);
		request.getRequestDispatcher("/admin/createAdmin.jsp").forward(request, response);
	}
}

package com.controller.product;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.data.ProductDAO;
import com.model.Product;

@WebServlet("/ProductControllerServlet")
public class ProductControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;
    
    @Override
	public void init() throws ServletException {
		super.init();
		try {
			productDAO = new ProductDAO();
		}
		catch(Exception ex) {
			throw new ServletException(ex);
		}
		
	}
	public ProductControllerServlet() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String theCommand = request.getParameter("command");
			if(theCommand == null)
				theCommand = "LIST";
			switch(theCommand) {
				case "LIST":
					listProduct(request, response);
					break;
				case "ADD":
					addProduct(request, response);
					break;
				case "LOAD":
					loadProduct(request, response);
					break;
				case "UPDATE":
					updateProduct(request, response);
				default:
					listProduct(request, response);
				
			}
			listProduct(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		int price = Integer.parseInt(request.getParameter("price"));
		Product theProduct = new Product(description, description, price);
		productDAO.updateProduct(theProduct);
		listProduct(request, response);
		
	}
	private void loadProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String theProductId = request.getParameter("ProductId");
		Product theProduct = productDAO.getProducts(theProductId);
		request.setAttribute("The_product", theProduct);
		RequestDispatcher dispatcher = request.getRequestDispatcher("update-product.jsp");
		dispatcher.forward(request, response);
	}
	private void addProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		int price = Integer.parseInt(request.getParameter("price"));
		Product theProduct = new Product(name, description, price);
		productDAO.addProduct(theProduct);
		listProduct(request, response);
	}
	private void listProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Product> product = productDAO.getProducts();
		request.setAttribute("list_product", product);
		RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

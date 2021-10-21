package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.data.ProductDAO;
import com.model.Product;

@WebServlet("/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProductDAO productDao;
    @Override
	public void init() throws ServletException {
		super.init();
		try {
			productDao = new ProductDAO();
		}
		catch(Exception ex) {
			throw new ServletException(ex);
		}
	}
    public HomeController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String theCommand = request.getParameter("command");
			if(theCommand == null) {
				theCommand = "LIST";
			} 
			switch(theCommand) {
			case "LIST":
				listProduct(request, response);
				break;
			case "LOAD":
				detailProduct(request, response);
				break;
			default:
				listProduct(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	private void detailProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String productId = request.getParameter("productID");
		Product product = productDao.getProducts(productId);
		request.setAttribute("theProduct", product);
		request.getRequestDispatcher("WEB-INF/productItem.jsp").forward(request, response);
	}
	private void listProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Product> product = productDao.getProducts();
		request.setAttribute("list_product", product);
		request.getRequestDispatcher("WEB-INF/home.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

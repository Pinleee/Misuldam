package com.misuldam.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.misuldam.dao.ProductDAO;
import com.misuldam.dto.ProductDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.fo")
public class ProductController extends HttpServlet{
	private static final long serialVersionUID = -4306688709054560052L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getRequestURI();
	    PrintWriter out = resp.getWriter();
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html; charset=utf-8");
        
        if(path.contains("product")) {
        	int categoryNum = Integer.parseInt(req.getParameter("categoryNum"));
        	ProductDAO dao = new ProductDAO();
        	List<ProductDTO> list = dao.pruductList(categoryNum);
        	
        	req.setAttribute("productList", list);
        	req.getRequestDispatcher("./product/Menu.jsp").forward(req, resp);
        }
		
		
		
	}
	
	

}

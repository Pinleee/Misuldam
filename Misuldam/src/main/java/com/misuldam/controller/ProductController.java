package com.misuldam.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.misuldam.dao.PaymentDAO;
import com.misuldam.dao.ProductDAO;
import com.misuldam.dao.ReviewDAO;
import com.misuldam.dto.ProductDTO;
import com.misuldam.dto.ReviewDTO;
import com.misuldam.dto.WishListItemDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("*.fo")
public class ProductController extends HttpServlet{
	private static final long serialVersionUID = -4306688709054560052L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getRequestURI();
	    PrintWriter out = resp.getWriter();
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html; charset=utf-8");
        HttpSession session = null;
        
        if(path.contains("product")) {
        	String userIdParam = req.getParameter("userId");
        	int userId = 0;
        	if(userIdParam != null && !userIdParam.isEmpty()) {
        		userId = Integer.parseInt(userIdParam);
        	}
        	int categoryNum = Integer.parseInt(req.getParameter("categoryNum"));
        	
        	ProductDAO dao = new ProductDAO();
        	List<ProductDTO> list = dao.pruductList(categoryNum);
        	int productTotal = dao.productTotal(categoryNum);
        	req.setAttribute("productList", list);
        	req.setAttribute("productTotal", productTotal);
        	
        	if(userId > 0) {
        		PaymentDAO dao2 = new PaymentDAO();
        		List<WishListItemDTO> searchLists = dao2.searchList(userId);
        		req.setAttribute("searchLists", searchLists);
        		System.out.println("컨트롤러 :위시리스트 불러오기");
        	}
        	req.getRequestDispatcher("./product/Menu.jsp").forward(req, resp);
    	}
        else if(path.contains("Detail")) {
        	int productNum = Integer.parseInt(req.getParameter("productNum"));
        	ProductDAO dao = new ProductDAO();
        	List<ProductDTO> list2 = dao.productDetail(productNum);
        	
        	//리뷰
        	ReviewDAO dao2 = new ReviewDAO();
        	List<ReviewDTO> list3 = dao2.reviewList(productNum);
        	
        	session = req.getSession();
        	session.setAttribute("productNum", productNum);
        	req.setAttribute("productDetail", list2);
        	req.setAttribute("reviewList", list3);
        	
        	req.getRequestDispatcher("./product/Detail.jsp").forward(req, resp);
        	
        }
        
		
		
	}
	
	

}

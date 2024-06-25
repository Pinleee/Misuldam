package com.misuldam.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.misuldam.dao.ReviewDAO;
import com.misuldam.dto.ReviewDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("*.review")
public class ReviewController extends HttpServlet{

	private static final long serialVersionUID = 8018502975327722676L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getRequestURI();
	    PrintWriter out = resp.getWriter();
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html; charset=utf-8");
        
		
        
        if(path.contains("review")) {
        	
        	int productNum = Integer.parseInt(req.getParameter("productNum"));
        	int userId = Integer.parseInt(req.getParameter("userId"));
        	String comment = req.getParameter("comment");
        	
        	ReviewDTO review = new ReviewDTO();
        	
        	review.setProductId(productNum);
        	review.setUserId(userId);
        	review.setComment(comment);
        	
        	ReviewDAO dao = new ReviewDAO();
        	dao.reviewRegister(review);
        	System.out.println("컨트롤러: 리뷰 작성 성공");
        	req.getRequestDispatcher("./product/Detail.jsp").forward(req, resp);
        	
        }
        
        
	}
	
	
	
}
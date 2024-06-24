package com.misuldam.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.misuldam.dao.PaymentDAO;
import com.misuldam.dto.PaymentDTO;
import com.misuldam.dto.WishListItemDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class PaymentController extends HttpServlet{
	private static final long serialVersionUID = 5073606535912945162L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req,resp);
	}

	protected void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getRequestURI();
		PrintWriter out = resp.getWriter();
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
	//위시리스트 등록
		if(path.contains("insertWish")) {
			int userId = Integer.parseInt(req.getParameter("userId"));
			int productId = Integer.parseInt(req.getParameter("productId"));
			
			WishListItemDTO dto = new WishListItemDTO();
			dto.setUserId(userId);
			dto.setProductId(productId);
			
			PaymentDAO dao = new PaymentDAO();
			int result = dao.insertWishList(dto);
			if(result>0) { // 등록 성공
				out.println("<script> alert('해당 제품이 위시리스트에 등록되었습니다.');location.href='./Menu.jsp'</script>");
			}else { // 등록 오류
				out.println("<script> alert('다시 시도해주시길 바랍니다.');location.href='./Menu.jsp'</script>");
			}
		}
	
	
	
	}
	
}

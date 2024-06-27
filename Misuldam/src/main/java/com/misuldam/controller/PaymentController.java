package com.misuldam.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.misuldam.dao.PaymentDAO;
import com.misuldam.dto.CartItemDTO;
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
			String userIdParam = req.getParameter("userId");
			int userId = 0;
			int productId = Integer.parseInt(req.getParameter("productId"));
			if(userIdParam != null && !userIdParam.isEmpty()) {
				userId = Integer.parseInt(userIdParam);
				
				WishListItemDTO dto = new WishListItemDTO();
				dto.setUserId(userId);
				dto.setProductId(productId);
				
				PaymentDAO dao = new PaymentDAO();
				int result = dao.insertWishList(dto);
				if(result>0) { // 등록 성공
					out.println("<script> alert('해당 제품이 위시리스트에 등록되었습니다.');");
					out.println("history.go(0); </script>"); 
				} else if(result == -1){ // 중복
					out.println("<script> alert('해당 제품은 이미 등록된 제품입니다..');");
					out.println("history.go(-1); </script>");
				}
				else { // 등록 오류
					out.println("<script> alert('다시 시도해주시길 바랍니다.');");
					out.println("history.go(-1); </script>");
					}
			}else {
				out.println("<script> alert('로그인이 필요한 서비스입니다.');");
				out.println("history.go(-1); </script>");
			}
		}
	//위시리스트 불러오기
		else if(path.contains("selectWish")) {
			int userId = Integer.parseInt(req.getParameter("userId"));
			
			PaymentDAO dao = new PaymentDAO();
			List<WishListItemDTO> wishList = dao.selectWishList(userId);
			
			req.setAttribute("wishList", wishList);
			req.getRequestDispatcher("./payment/Wish.jsp").forward(req, resp);
			System.out.println("컨트롤러: 위시리스트 불러오기 성공");
			
		}
	//위시리스트 삭제하기
		else if(path.contains("deleteWish")) {
			int userId = Integer.parseInt(req.getParameter("userId"));
			int productId = Integer.parseInt(req.getParameter("productId"));
			int result = 0;
			
			PaymentDAO dao = new PaymentDAO();
			result = dao.deleteWishList(userId, productId);
			if(result>0) { // 삭제 성공
				out.println("<script> alert('해당 제품이 위시리스트에서 삭제되었습니다.');");
				out.println("history.go(0); </script>"); 
			}else { // 등록 오류
				out.println("<script> alert('다시 시도해주시길 바랍니다.');");
				out.println("history.go(-1); </script>");
				}
			
		}
	//장바구니 등록하기
		else if(path.contains("insertCart")) {
			String userIdParam = req.getParameter("userId");
			int userId = 0;
			int productQty = Integer.parseInt(req.getParameter("productQty")); 
			int productId = Integer.parseInt(req.getParameter("productId"));
			if(userIdParam != null && !userIdParam.isEmpty()) {
				userId = Integer.parseInt(userIdParam);
				
				CartItemDTO dto = new CartItemDTO();
				dto.setUserId(userId);
				dto.setProductId(productId);
				dto.setQuantity(productQty);
				
				PaymentDAO dao = new PaymentDAO();
				int result = dao.insertCartLsit(dto);
				if(result>0) { //등록 성공
					out.println("<script> alert('해당 제품이 장바구니에 등록되었습니다.');");
					out.println("history.go(0);</script>");
				}else if(result == -1) { // 중복
					out.println("<script> alert('해당 제품은 이미 등록된 제품입니다..');");
					out.println("history.go(-1); </script>");
				}else { // 등록 오류
					out.println("<script> alert('다시 시도해주시길 바랍니다.');");
					out.println("history.go(-1); </script>");
					}
			
			}else {
				out.println("<script> alert('로그인이 필요한 서비스입니다.');");
				out.println("history.go(-1); </script>");
			}
		}
		
	//장바구니 리스트 불러오기
		else if(path.contains("selectCart")) {
			int userId = Integer.parseInt(req.getParameter("userId"));
			
			PaymentDAO dao = new PaymentDAO();
			List<CartItemDTO> cartList = dao.selectCartList(userId);
			
			req.setAttribute("cartList", cartList);
			req.getRequestDispatcher("./payment/Cart.jsp").forward(req, resp);
			System.out.println("컨트롤러 : 장바구니 불러오기 성공");
		}
	//장바구니 삭제하기
		else if(path.contains("deleteCart")) {
			int userId = Integer.parseInt(req.getParameter("userId"));
			int productId = Integer.parseInt(req.getParameter("productId"));
			int result = 0;
			
			PaymentDAO dao = new PaymentDAO();
			result = dao.deleteCartList(userId, productId);
			
			if(result>0) { // 삭제 성공
				out.println("<script> alert('해당 제품이 장바구니에서 삭제되었습니다.');");
				req.setAttribute("userId", userId);
				req.getRequestDispatcher("./selectCart.do").forward(req, resp);
			}else { // 등록 오류
				out.println("<script> alert('다시 시도해주시길 바랍니다.');");
				out.println("history.go(-1); </script>");
				}
			
		}	
		
		
		
	}
}

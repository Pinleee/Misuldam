package com.misuldam.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import com.misuldam.dao.UserDAO;
import com.misuldam.dto.UserDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("*.user")
public class UserController extends HttpServlet {

	private static final long serialVersionUID = 175441274183996814L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getRequestURI();
		PrintWriter out = resp.getWriter();
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");

		HttpSession session = null;
		
		if (path.contains("join")) {
			System.out.println("join성공");

			// 요청에서 폼 데이터 추출

			String userName = req.getParameter("userName");
			String userPw = req.getParameter("userPw");
			String userEmail = req.getParameter("userEmail");
			String userPhone = req.getParameter("userPhone");
			String name = req.getParameter("name");
			Date userBirth = Date.valueOf(req.getParameter("userBirth"));

			// UserDTO 객체 생성 및 데이터 설정
			UserDTO user = new UserDTO();

			user.setUserName(userName);
			user.setUserPw(userPw);
			user.setUserEmail(userEmail);
			user.setUserPhone(userPhone);
			user.setName(name);
			user.setUserBirth(userBirth);

			// UserDAO의 joinUser 메서드 호출하여 사용자 정보 저장
			UserDAO dao = new UserDAO();
			dao.joinUser(user);

			// 클라이언트에 응답 전송
			System.out.println("회원가입 성공");
			req.getRequestDispatcher("/Main.jsp").forward(req, resp);

		}
		// 계정로그인
		else if (path.contains("login")) {
		    System.out.println("login 성공");
		    
		    UserDTO dto = new UserDTO();
		    UserDAO dao = new UserDAO();

		    String id = req.getParameter("accountId");
		    System.out.println("컨트롤러 id값" + id);
		    String pw = req.getParameter("accountPw");

		    try {
		    
		        // 로그인 처리
		        dto = dao.accountLogin(id, pw);

		        if (dto != null) {
		        	System.out.println("if문 실행");
		            // 로그인 성공 시
		            session = req.getSession();
		            session.setAttribute("accountId", dto.getUserName());
		            session.setAttribute("userId", dto.getUserId());
		            session.setAttribute("userName", dto.getName());
		            session.setAttribute("userEmail",dto.getUserEmail());
		            System.out.println("로그인 컨트롤러 실행");
		            
		            req.getRequestDispatcher("/Main.jsp").forward(req, resp);
		        } else {
		            // 로그인 실패 시
		            out.println("<script>alert('아이디 혹은 비밀번호가 틀립니다. 다시 로그인해주세요.'); history.go(-1);</script>");
		            out.flush();
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		}
	}
}
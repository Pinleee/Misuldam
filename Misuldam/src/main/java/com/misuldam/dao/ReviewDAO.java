package com.misuldam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.misuldam.dto.ReviewDTO;

public class ReviewDAO {
	
	private Connection conn; //DB연결
	private PreparedStatement psmt;
	private ResultSet rs;
	
	//DB 커넥션 연결
	public void getConnection() {
		try {
			Context initCtx = new InitialContext();
			Context ctx = (Context)initCtx.lookup("java:comp/env");
			DataSource source = (DataSource)ctx.lookup("DBPool");
			
			conn = source.getConnection();

			System.out.println("DB 커넥션 풀 연결 성공");
		}
		catch (Exception e) {
			System.out.println("DB 커넥션 풀 연결 실패");
			e.printStackTrace();
		}
	}
	
	//리뷰등록
	public void reviewRegister(ReviewDTO dto) {
		
		getConnection();
		
		String sql = "INSERT INTO reviews(product_id,user_id,comment,review_user_id) VALUES (?, ?, ?, ?)";
		try {
			
			psmt = conn.prepareStatement(sql);
		
			psmt.setInt(1,dto.getProductId());
			psmt.setInt(2,dto.getUserId());
			psmt.setString(3,dto.getComment());
			psmt.setString(4,dto.getReviewUserId());
			
			psmt.executeUpdate();
		
		} catch (Exception e) {
			
		}finally {
			close();
		}
		
	}
		
		
	//연결 해제(자원 반납)
	public void close() {
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
			
			System.out.println("DB 커넥션 풀 자원 반납");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}

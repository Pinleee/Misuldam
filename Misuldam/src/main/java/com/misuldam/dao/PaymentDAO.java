package com.misuldam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.misuldam.dto.WishListItemDTO;


public class PaymentDAO {
	private Connection con;			// 데이터베이스와 연결 담당
	private PreparedStatement psmt;	// 인파라미터가 있는 동적 쿼리문을 실행할 때 사용
	private ResultSet rs;			// SELECT 쿼리문의 결과를 저장할 때 사용
	
	public void getConnection() {
		try {
			Context initCtx = new InitialContext();
			Context ctx = (Context)initCtx.lookup("java:comp/env");	// lookup은 리턴타입이 Object 이므로 Context로 강제 형변환
			DataSource source = (DataSource)ctx.lookup("DBPool");
			con = source.getConnection();
			System.out.println("DB 커넥션 풀 연결 성공");
		} catch (Exception e) {
			System.out.println("DB 커넥션 풀 연결 실패");
			e.printStackTrace();
		}
	}
	// 위시리스트 저장
	public int insertWishList(WishListItemDTO dto) {
		getConnection();
		String query = "INSERT INTO wishlistitems(user_id,product_id) VALUES(?,?)";
		int result = 0;
		try {
			psmt = con.prepareStatement(query);
			psmt.setInt(1, dto.getUserId());
			psmt.setInt(2, dto.getProductId());
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			e.getStackTrace();
		} finally {
			close();
		}
		System.out.println("insert dao 성공");
		return result;
	}
	// 위시리스트 불러오기
	public List<WishListItemDTO> selectWishList(int userId){
		List<WishListItemDTO> wishList = new ArrayList<>();
		getConnection();
		String query = "SELECT * FROM wishlistitems WHERE user_id = ?";
		try {
			psmt = con.prepareStatement(query);
			psmt.setInt(1, userId);
			rs = psmt.executeQuery();
			while(rs.next()) {
				WishListItemDTO dto = new WishListItemDTO();
				dto.setUserId(rs.getInt("user_id"));
				dto.setProductId(rs.getInt("product_id"));
				wishList.add(dto);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		System.out.println("select dao 성공");
		return wishList;
		
	}
	// 위시리스트 삭제
	public int deleteWishList(int userId, int productId) {
		getConnection();
		String query = "DELETE FROM wishlistitems WHERE user_id = ? AND product_id = ?";
		int result = 0;
		try {
			psmt = con.prepareStatement(query);
			psmt.setInt(1, userId);
			psmt.setInt(2, productId);
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		System.out.println("delete dao 성공");
		return result;
	}
	
	
	
	
	
	
	
	public void close() {	// close를 안 하면 자원낭비가 됨.
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(con != null) con.close();
			
			System.out.println("DB 커넥션 풀 자원 반납");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}

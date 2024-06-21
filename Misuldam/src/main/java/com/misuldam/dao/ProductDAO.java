package com.misuldam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.misuldam.dto.ProductDTO;

public class ProductDAO {
	
	private Connection conn; //DB연결
	private PreparedStatement psmt;
	private ResultSet rs;
	
	//DB 커넥션 연결
	public void getConnection() {
		try {
			Context initCtx = new InitialContext();
			Context ctx = (Context)initCtx.lookup("java:comp/env");
			DataSource source = (DataSource)ctx.lookup("dbcp_myoracle");
			
			conn = source.getConnection();

			System.out.println("DB 커넥션 풀 연결 성공");
		}
		catch (Exception e) {
			System.out.println("DB 커넥션 풀 연결 실패");
			e.printStackTrace();
		}
	}
	
	
	//카테고리별 상품조회
	public ArrayList<ProductDTO> userWhere(int num){
		getConnection();
		ProductDTO dto = new ProductDTO();
		
		String sql = "select * from projectdb.products where category_id = ?";
		ArrayList<ProductDTO> arr2 = new ArrayList<ProductDTO>();
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, num);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				dto = new ProductDTO();
				
				//이미지/이름/가격/카테고리 숫자
				dto.setProductName(rs.getString("ProductName"));
				dto.setProductPrice(rs.getDouble("ProductPrice"));
				dto.setProductCategory(rs.getInt("ProductCategory"));
				
				arr2.add(dto);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			close();
		}
		
		return arr2;
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

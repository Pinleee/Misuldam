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
			DataSource source = (DataSource)ctx.lookup("DBPool");
			
			conn = source.getConnection();

			System.out.println("DB 커넥션 풀 연결 성공");
		}
		catch (Exception e) {
			System.out.println("DB 커넥션 풀 연결 실패");
			e.printStackTrace();
		}
	}
	
	
	//카테고리별 상품조회
	public ArrayList<ProductDTO> pruductList(int categoryNum){
		getConnection();
		ProductDTO dto = new ProductDTO();
		
		String sql = "select * from products where category_id = ?";
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, categoryNum);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				dto = new ProductDTO();
				
				//이미지/이름/가격/카테고리 숫자
				dto.setCategory_id(rs.getInt("category_id"));
				dto.setProductName(rs.getString("product_name"));
				dto.setProductPrice(rs.getDouble("product_price"));
				dto.setImage(rs.getString("image_url"));
				dto.setProductId(rs.getInt("product_id"));
				list.add(dto);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			close();
		}
		
		return list;
	}
	
	//상품상세정보 조회
	public ArrayList<ProductDTO> productDetail(int productId){
		getConnection();
		ProductDTO dto = new ProductDTO();
		
		String sql = "select * from products where product_id = ?";
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, productId);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				dto = new ProductDTO();
				
				dto.setCategory_id(rs.getInt("category_id"));
				dto.setProductName(rs.getString("product_name"));
				dto.setProductPrice(rs.getDouble("product_price"));
				dto.setImage(rs.getString("image_url"));
				dto.setDescription(rs.getString("product_description"));
				dto.setProductId(rs.getInt("product_id"));
				list.add(dto);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			close();
		}
		
		return list;
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

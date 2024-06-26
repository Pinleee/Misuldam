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

import com.misuldam.dto.CartItemDTO;
import com.misuldam.dto.ProductDTO;
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
		String checkQuery = "SELECT COUNT(*) FROM wishlistitems WHERE user_id = ? AND product_id = ?";
		String insertQuery = "INSERT INTO wishlistitems(user_id,product_id) VALUES(?,?)";
		int result = 0;
		
		try {
			psmt = con.prepareStatement(checkQuery);
			psmt.setInt(1, dto.getUserId());
			psmt.setInt(2, dto.getProductId());
			rs = psmt.executeQuery();
			
			if(rs.next() && rs.getInt(1)==0) {
				psmt = con.prepareStatement(insertQuery);
				psmt.setInt(1, dto.getUserId());
				psmt.setInt(2, dto.getProductId());
				result = psmt.executeUpdate();
			}else {
				System.out.println("위시리스트 중복");
				result = -1;
			}
			
		} catch (SQLException e) {
			e.getStackTrace();
		} finally {
			close();
		}
		System.out.println("DAO:insertWish dao 성공");
		return result;
	}
	// 위시리스트 불러오기
	public List<WishListItemDTO> selectWishList(int userId){
		List<WishListItemDTO> wishList = new ArrayList<>();
		getConnection();
		String query = "SELECT wishlistitems.user_id, wishlistitems.product_id, products.category_id,products.product_name AS product_name,"
						+ "products.product_description AS product_description, products.product_price AS product_price, products.image_url "
						+ "FROM wishlistitems JOIN products ON wishlistitems.product_id = products.product_id WHERE wishlistitems.user_id = ?";
		try {
			psmt = con.prepareStatement(query);
			psmt.setInt(1, userId);
			rs = psmt.executeQuery();
			while(rs.next()) {
				WishListItemDTO wishListItem = new WishListItemDTO();
				wishListItem.setUserId(rs.getInt("user_id"));
				wishListItem.setProductId(rs.getInt("product_id"));
				
				ProductDTO product = new ProductDTO();
				product.setProductId(rs.getInt("product_id"));
				product.setCategory_id(rs.getInt("category_id"));
				product.setProductName(rs.getString("product_name"));
				product.setDescription(rs.getString("product_description"));
				product.setProductPrice(rs.getDouble("product_price"));
				product.setImage(rs.getString("image_url"));
				
				wishListItem.setProduct(product);
				wishList.add(wishListItem);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		System.out.println("DAO: selectWish dao 성공");
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
	// 등록된 상품 확인
	public List<WishListItemDTO> searchList(int userId){
		List<WishListItemDTO> searchLists = new ArrayList<>();
		getConnection();
		String query = "SELECT * FROM wishlistitems WHERE user_id = ?";
		try {
			psmt = con.prepareStatement(query);
			psmt.setInt(1, userId);
			rs = psmt.executeQuery();
			while(rs.next()) {
				WishListItemDTO wishList = new WishListItemDTO();
				wishList.setProductId(rs.getInt("product_id"));
				
				searchLists.add(wishList);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		System.out.println("DAO: 위시리스트 검색 성공");
		return searchLists;
	}
	//장바구니 담기
	public int insertCartLsit(CartItemDTO dto) {
		getConnection();
		String checkQuery = "select count(*) from cartitems where user_id = ? and product_id = ?";
		String insertQuery = "insert into cartitems(user_id,product_id,quantity) values(?,?,?) ";
		int result = 0;
		
		try {
			psmt = con.prepareStatement(checkQuery);
			psmt.setInt(1, dto.getUserId());
			psmt.setInt(2, dto.getProductId());
			rs = psmt.executeQuery();
			
			if(rs.next() && rs.getInt(1)==0) {
				psmt = con.prepareStatement(insertQuery);
				psmt.setInt(1, dto.getUserId());
				psmt.setInt(2, dto.getProductId());
				psmt.setInt(3, dto.getQuantity());
				result = psmt.executeUpdate();
			}else {
				System.out.println("DAO : 장바구니 중복");
				result = -1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		System.out.println("DAO:insertCart 성공");
		return result;
	}
	// 장바구니 불러오기
	public List<CartItemDTO> selectCartList(int userId){
		List<CartItemDTO> cartList = new ArrayList<>();
		getConnection();
		String query = "SELECT cartitems.user_id, cartitems.product_id, cartitems.quantity, products.category_id, "
						+ "products.product_name AS product_name, "
						+ "products.product_description AS product_description, "
						+ "products.product_price AS product_price, products.image_url "
						+ "FROM cartitems JOIN products ON cartitems.product_id = products.product_id "
						+ "WHERE cartitems.user_id = ?";
		try {
			psmt = con.prepareStatement(query);
			psmt.setInt(1, userId);
			rs = psmt.executeQuery();
			while(rs.next()) {
				CartItemDTO cartListItem = new CartItemDTO();
				cartListItem.setUserId(rs.getInt("user_id"));
				cartListItem.setProductId(rs.getInt("product_id"));
				
				ProductDTO product = new ProductDTO();
				product.setProductId(rs.getInt("product_id"));
				product.setCategory_id(rs.getInt("category_id"));
				product.setProductName(rs.getString("product_name"));
				product.setDescription(rs.getString("product_description"));
				product.setProductPrice(rs.getDouble("product_price"));
				product.setImage(rs.getString("image_url"));
				
				cartListItem.setProduct(product);
				cartList.add(cartListItem);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		System.out.println("DAO: selectCart dao 성공");
		return cartList;
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

package com.misuldam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.misuldam.dto.UserDTO;

public class UserDAO {
	private Connection con;
	private PreparedStatement psmt;
	private ResultSet rs;

	public void getConnection() {
		try {
			Context initCtx = new InitialContext();
			Context ctx = (Context) initCtx.lookup("java:comp/env");
			DataSource source = (DataSource) ctx.lookup("DBPool");

			con = source.getConnection();
			System.out.println("DB 커넥션 풀 연결 성공");
		} catch (Exception e) {
			System.out.println("DB 커넥션 풀 연결 실패");
			e.printStackTrace();
		}
	}
	//회원가입
	public void joinUser(UserDTO dto) {
		
		getConnection();
		
		String sql = "INSERT INTO users(user_name,user_pw,user_email,user_phone,name,user_birth) VALUES ( ?, ?, ?, ?, ?,?)";
		try {
			
			PreparedStatement psmt = con.prepareStatement(sql);
			
			
		
			psmt.setString(1,dto.getUserName());
			psmt.setString(2, dto.getUserPw());
			psmt.setString(3, dto.getUserEmail());
			psmt.setString(4, dto.getUserPhone());
			psmt.setString(5, dto.getName());
			psmt.setDate(6, dto.getUserBirth());
			
			psmt.executeUpdate();
		
		} catch (Exception e) {
			
		}finally {
			close();
		}
		
	}
	
	//로그인
	public UserDTO accountLogin(String id, String pw) {
	    getConnection();
	    UserDTO dto = null;

	    String sql = "SELECT * FROM users WHERE user_name=? AND user_pw=?";
	    
	    try {
	        PreparedStatement psmt = con.prepareStatement(sql);
	        psmt.setString(1, id);
	        psmt.setString(2, pw);
	        rs = psmt.executeQuery();

            if (rs.next()) {
                dto = new UserDTO();
                dto.setUserName(rs.getString("user_name"));
                dto.setUserPw(rs.getString("user_pw"));
                dto.setUserId(rs.getInt("user_id"));
            }
	      
	     
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        close();
	    }

	    return dto;
	    
	}
	
	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (con != null)
				con.close();

			System.out.println("DB 커넥션 풀 자원 반납");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

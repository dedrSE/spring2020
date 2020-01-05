package com.kgitbank.mvc05;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO_old {

	
	
	public void insert(MemberDTO memberDTO) {
		//1. driver 설정 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			System.out.println("1번 드라이버 설정 ok");

		//2. db연결
			String url = "jdbc:mysql://localhost:3308/spring";
			String user = "root";
			String password = "1234";
			
			Connection con = DriverManager.getConnection(url, user, password);

			System.out.println("2번 db 연결 ok");
		
		//3. sql문 결정
			String sql = "insert into member values (?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, memberDTO.getId());
			ps.setString(2, memberDTO.getPw());
			ps.setString(3, memberDTO.getName());
			ps.setString(4, memberDTO.getTel());

			System.out.println("3번 sql문 결정 ok");
		
		//4. sql문 전달
			ps.executeUpdate();
			

			System.out.println("4번 sql문 전달 ok");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
}

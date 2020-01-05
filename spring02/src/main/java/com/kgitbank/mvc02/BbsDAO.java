package com.kgitbank.mvc02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;


//싱글톤 객체로 하나 만들어주렴!
@Repository
public class BbsDAO {

	public void insert(BbsDTO dto) {
		/* db처리하는 특별한 부분 : 방법이 정해져 있음 (4단계) : Model */
		//db 처리 4단계
		//1. connector 설정

		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.print("1. connector 설정 Ok...<br>");

			//2. db연결

			String url = "jdbc:mysql://localhost:3308/spring";
			String user = "root";
			String password = "1234";

			Connection con = DriverManager.getConnection(url, user, password);
			System.out.print("2. db 연결 Ok...<br>");

			//3. sql문 객체화

			String sql = "insert into bbs values (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
			ps.setString(4, dto.getWriter());

			System.out.print("3. sql문 객체화 Ok...<br>");

			//4, sql문 db로 전송
			ps.executeUpdate();

			/* 처리 결과를 보여주는 부분 : View */
			System.out.print("4. sql문 db로 전송 연결 Ok...<br>");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}

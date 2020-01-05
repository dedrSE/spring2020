package com.kgitbank.mvcFinal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


//싱글톤으로 객체 설정
@Repository		
public class MemberDAO implements MemberInter{

	@Autowired
	SqlSessionTemplate my;

	@Override
	public void insert(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int login(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	
	
	
	
}

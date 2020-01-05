package com.kgitbank.mvc06;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kgitbank.mvc06.BbsDTO;
import com.kgitbank.mvc06.MemberDTO;

//싱글톤으로 객체 설정
@Repository		
public class MemberDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public void update(BbsDTO bbsDTO) {
		my.update("bbs.update", bbsDTO);
	}
	
	public List<MemberDTO> selectList() {
		List<MemberDTO> list = my.selectList("member.selectList");
		
		return list;
	}
	
	public void insert(MemberDTO memberDTO) {
		
		my.insert("member.insert", memberDTO);
		
	}
	
	public void delete(MemberDTO memberDTO) {
		
		my.delete("member.delete", memberDTO);
	}
	
	public MemberDTO select(MemberDTO memberDTO) {
		MemberDTO dto = my.selectOne("member.select", memberDTO);
		return dto;
	}
	
}

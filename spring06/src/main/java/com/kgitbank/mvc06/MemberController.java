package com.kgitbank.mvc06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kgitbank.mvc06.MemberDAO;

@Controller
public class MemberController {

	@Autowired
	MemberDAO dao;
	
	@RequestMapping("memberList")
	public void list(Model model) {
		List<MemberDTO> list = dao.selectList();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("memberSelect")
	public void select(Model model, MemberDTO memberDTO) {
		
		MemberDTO dto = dao.select(memberDTO);
		model.addAttribute("dto", dto);
		
	}
	
	@RequestMapping("memberInsert")
	public void insert(MemberDTO memberDTO) {
		
		dao.insert(memberDTO);
	}
	
	@RequestMapping("memberDelete")
	public void delete(MemberDTO memberDTO) {
		
		dao.delete(memberDTO);
	}
	
	
}

package com.kgitbank.mvc00;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("insert")
	public void insert(MemberDTO memberDTO, MemberDAO dao) {	//알아서 new 객체 생성
		dao.insert(memberDTO);
		System.out.println("db처리 완료함------------");
		
		
		
		
		
//		System.out.println(memberDTO.getId());
//		System.out.println(memberDTO.getPw());
//		System.out.println(memberDTO.getName());
//		System.out.println(memberDTO.getTel());
	}
	
}

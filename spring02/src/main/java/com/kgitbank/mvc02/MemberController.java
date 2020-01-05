package com.kgitbank.mvc02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	//싱글톤으로 만들어진 객체의 주소값을 찾아서 dao 변수에 넣어주렴!
	@Autowired
	MemberDAO dao;
	
	
	@RequestMapping("insert")
	public void insert(MemberDTO memberDTO) {	//객체이름 이렇게 모델에 넣어서 views에서 사용가능
		
		System.out.println("컨트롤러에서 입력한 값 받음..");
		//db처리...
		dao.insert(memberDTO);
		
		//views 아래에 insert.jsp 호출
		
		
		
	}
	
}

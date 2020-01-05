package com.kgitbank.mvc02;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("loginCheck")
	public String login(String id, String pw) {		//이름 똑같으면 자동으로 넣어줌 신기하당!
		String dbId="root";
		String dbPw="1234";
		
		if (dbId.contentEquals(id) && dbPw.contentEquals(pw)) {
			System.out.println("로그인 ok");
			return "loginOK";
		} else {
			System.out.println("로그인 Not");
			return "loginNOT";
		}
		
		
	}
	
	
}

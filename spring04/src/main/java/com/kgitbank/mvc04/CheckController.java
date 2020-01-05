package com.kgitbank.mvc04;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CheckController {

	@RequestMapping("member.do")
	public void id(String id, Model model) { // 모델 객체 알아서 생성!
		String[] list = { "root", "admin", "manager" };

		String result = "사용할 수 있는 아이디입니다.";
		for (int i = 0; i < 3; i++) {
			if (id.equals(list[i])) {
				result = "아이디가 이미 사용 중입니다.";
			}
		}
		model.addAttribute("result1", result); // result1이름으로 result값 저장

	}

	@RequestMapping("admin.do")
	public void admin(String admin, Model model) {
		String adminId = "admin";
		String result = "누구신지..?";
		if (admin.equals(adminId)) {
			result = "환영합니다!";
		}
		model.addAttribute("result2", result); // result1이름으로 result값 저장

	}
	
	@RequestMapping("tel.do")
	public void tel(String tel, Model model) {
		String result = "";
		Random r = new Random();
		int num = r.nextInt(1000);
		result = String.valueOf(num);
		model.addAttribute("result3", result);
	}
	
	@RequestMapping("tel2.do")
	public void tel2(String tel, Model model) {
		String result = "";
		String num = tel.substring(0, 3);
		if(num.equals("010")) {
			result = "1111";
		} else if(num.equals("011")) {
			result = "2222";
		} else if(num.equals("018")) {
			result = "3333";
		} else {
			result = "4444";
		}
		model.addAttribute("result4", result);
	}
	
	@RequestMapping("money.do")
	public void money(String money, String level, Model model) {
		String result = "";
		int money2 = Integer.parseInt(money);
		double money3 = 0;
		switch (level) {
		case "1":
			money3 = money2*0.7;
			break;
		case "2":
			money3 = money2*0.8;
			break;
		case "3":
			money3 = money2*0.9;
			break;

		default:
			money3 = money2;
			break;
		}
		result = "당신의 지불 금액은 " + (int)money3 + "원입니다.";
		model.addAttribute("result5", result);
	}
	
	

}

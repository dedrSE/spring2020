package com.kgitbank.mvc02;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodContoroller {

	@RequestMapping("food")
	public String result(String foodname, String price) {
		
		if(Integer.parseInt(price)>=5000)
			return "up";
		else
			return "down";
		
	}
	
	
}

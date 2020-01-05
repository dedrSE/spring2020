package com.kgitbank.mvc06;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {

	//Autowired로  dao 싱글톤으로 만들어진 것 주소값을 주입
	//dependency injection(DI)
	@Autowired
	BbsDAO dao;
	
	@RequestMapping("insert2")
	public String insert2(BbsDTO bbsDTO) {
		dao.insert2(bbsDTO);
		
		return "redirect:bbsList";
	}
	
	
	@RequestMapping("update2")
	public void update2(BbsDTO bbsDTO) {
		dao.update(bbsDTO);
		
	}
	
	@RequestMapping("bbsUpdate")
	public void update(BbsDTO bbsDTO, Model model) {
		//기존의 값을 확인해보고, 수정할 것이 있으면 수정!
		//검색이 들어가야 함.
		BbsDTO dto = dao.one(bbsDTO);
		model.addAttribute("dto", dto);
	}
	
	@RequestMapping("bbsList")
	public void list(Model model, HttpSession session) {
		session.setAttribute("id", "park");
		List<BbsDTO> list = dao.list();		//mybatis가 리턴해준걸 넣어줌
		model.addAttribute("list", list);	//다음으로 넘겨주기위해 모델 객체에 넣어줌
			
	}
	
	@RequestMapping("bbsSelect")
	public void one(BbsDTO bbsDto, Model model) {
		BbsDTO dto = dao.one(bbsDto);
		model.addAttribute("dto", dto);
	}
	
	@RequestMapping("bbsDelete")
	public String del(BbsDTO bbsDTO, Model model) {
		dao.delete(bbsDTO);
		
		return "redirect:bbsList";
	}
	
	
}

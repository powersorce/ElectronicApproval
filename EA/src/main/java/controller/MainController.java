package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.MemberDTO;
import service.MemberListService;
import service.MemberService;

@Controller
public class MainController {
	@Autowired
	MemberService memberService;
	@Autowired
	MemberListService memberListService;
	
	@RequestMapping("memberList")
	public String memberList(Model model) {
		memberListService.memberList(model);
		return "memberList";
	}
	
	@RequestMapping("registAct")
		public String registAct(MemberDTO memberDTO) {
		memberService.registAct(memberDTO);
		return "redirect:main";
	}
	
	
	@RequestMapping("memberRegist")
		public String memberRegist(Model model) {
			memberService.autoNum(model);
			return "memberRegist";
	}
	
	@RequestMapping("main")
		public String mainPage() {
			return "main";
	}

}

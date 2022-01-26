package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.MemberDTO;
import repository.MemberRepository;

@Service
public class MemberService {
	@Autowired
	MemberRepository memberRepository;
	
	public void registAct(MemberDTO memberDTO) {
		memberRepository.registAct(memberDTO);
	}
	
	public void autoNum(Model model) {
		int autoNum = memberRepository.autoNum();
		model.addAttribute("autoNum", autoNum);
	}
	
}

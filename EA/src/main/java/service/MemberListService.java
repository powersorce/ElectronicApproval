package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.MemberDTO;
import repository.MemberRepository;

@Service
public class MemberListService {
	@Autowired
	MemberRepository memberRepository;
	
	public void memberList(Model model) {
		MemberDTO dto = new MemberDTO();
		List<MemberDTO> memberList = memberRepository.memberList(dto);
		model.addAttribute("list", memberList);
	}
}

package com.lg.t2.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("memberLogin") //memberLogin
	public void memberLogin()throws Exception{}
	
	@PostMapping("memberLogin")
	public String memberLogin(MemberDTO memberDTO)throws Exception{
		memberDTO = memberService.memberLogin(memberDTO);
		
		return "redirect:../";
	}
	
	@GetMapping("memberJoin")
	public void memberJoin()throws Exception{}
	
	public String memberJoin(MemberDTO memberDTO,Model model,HttpSession session)throws Exception{
		int result = memberService.memberJoin(memberDTO);
		
		String message = "회원가입 실패";
		String path = "./memberJoin";
		
		if(result>0) {
			message = "회원 가입 성공";
			path="../";
		}
		
		model.addAttribute("msg", message);
		model.addAttribute("path", path);
		
		return "common/commonResult";
		
	}
	
	
	
	
	
	
	
}

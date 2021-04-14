package com.lg.t2.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("memberJoinCheck")
	public void memberJoinCheck()throws Exception{}
	
	@GetMapping("memberIdCheck")
	public String memberIdCheck(MemberDTO memberDTO, Model model)throws Exception{
		memberDTO = memberService.memberIdCheck(memberDTO);
		String result = "0";
		if(memberDTO==null) {
			result="1";
		}
		
		model.addAttribute("result", result);
		
		return "common/ajaxResult";
		
	}
	
	@RequestMapping("memberLogin") //memberLogin
	public void memberLogin()throws Exception{}
	
	@RequestMapping(value="memberLogin",method = RequestMethod.POST)
	public String memberLogin(MemberDTO memberDTO,HttpSession session)throws Exception{
		memberDTO = memberService.memberLogin(memberDTO);
		
		session.setAttribute("member", memberDTO);
		
		return "redirect:../";
	}
	
	
	
	@RequestMapping("memberJoin")
	public void memberJoin()throws Exception{}
	
	@RequestMapping(value="memberJoin",method = RequestMethod.POST)
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
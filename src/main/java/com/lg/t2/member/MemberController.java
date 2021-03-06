package com.lg.t2.member;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lg.t2.member.MemberDTO;
import com.lg.t2.ticket.PurchaseTicketDTO;
import com.lg.t2.ticket.TicketDTO;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("memberJoinCheck")
	public void memberJoinCheck()throws Exception{}
	
	@RequestMapping("memberJoin")
	public void memberJoin()throws Exception{}
	
	@RequestMapping(value="memberJoin", method = RequestMethod.POST)
	public String memberJoin(MemberDTO memberDTO, MultipartFile avatar, Model model,HttpSession session)throws Exception{
		int result = memberService.memberJoin(memberDTO, avatar, session);
		System.out.println(avatar.getName());//파라미터명
		System.out.println(avatar.getOriginalFilename());//upload 할 때 파일명
		System.out.println(avatar.getSize());//파일의 크기(byte)
		System.out.println(avatar.isEmpty());//파일의 존재 유무
		
		
		String message = "회원가입 실패";
		String path="./memberJoin";
		
		if(result>0) {
			message ="회원 가입 성공";
			path="../";
		}
		
		model.addAttribute("msg", message);
		model.addAttribute("path", path);
		return "common/commonResult";
	}
	
	
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
	
	
	

	@RequestMapping("memberUpdate") // MemberUpdate
	public void memberUpdate()throws Exception{}
	
	@RequestMapping(value="memberUpdate", method = RequestMethod.POST)
	public String memberUpdate(MemberDTO memberDTO, HttpSession session)throws Exception{
		int result = memberService.memberUpdate(memberDTO);
		
		if(result>0) {
			session.setAttribute("member", memberDTO);
		}
		return "redirect:../";
	}
	
	@RequestMapping("memberDelete") // MemberDelete
	public String memberDelete(HttpSession session)throws Exception{
		MemberDTO memberDTO =(MemberDTO)session.getAttribute("member");
		int result = memberService.memberDelete(memberDTO, session);
		
		session.invalidate();
		
		return "redirect:../";
	}
	
	
	@RequestMapping("memberPage") //MemberPage
	public void memberPage()throws Exception{
		
	}
	
	@RequestMapping("memberLogout") //MemberLogout
	public String memberLogout(HttpSession session)throws Exception{
		session.invalidate();
		return "redirect:../";
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
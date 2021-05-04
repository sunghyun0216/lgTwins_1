package com.lg.t2.team.carnpay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lg.t2.team.member.TeamMemberDTO;
import com.lg.t2.team.member.TeamMemberService;

@Controller
public class CarNPayController {
	@Autowired
	private CarNPayService carNPayService ;
	
	//404 오류 안뜨기 위한 임시용 
	@RequestMapping("teaminfo/career")
	public String tempPay () throws Exception {
		
		return "home";
	}
	//요청한 tNum 가져오기 
	public void reqDetail()throws Exception{
		System.out.println("요청성공!");
		//playList set Name;
		
	}
	
	// 요청 데이터 가져오기  
	@PostMapping ("teaminfo/infoDetail/**")
	public ModelAndView getPayList(TeamMemberDTO teamMemberDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<PlayerPayDTO> pp = carNPayService.getPayList(teamMemberDTO);
		mv.addObject("payData",pp);
		mv.setViewName("teaminfo/infoDetail");
		return mv;
	}
	
	//내용등록하기
	
	//내용삭제하기 
	
}

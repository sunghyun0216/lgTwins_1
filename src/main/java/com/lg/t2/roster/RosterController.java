package com.lg.t2.roster;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/roaster/**")
public class RosterController {
	
	@Autowired
	private RosterService rosterService;
	
	
	//1. 로그아웃 시  > 리스트만 보여줌, 공유만
	//2. 로그인 시 > 좋아요만 누를 수 있음
	//3. 관리자의 경우 > 선수 정보 삽입, 수정, 삭제 가능
	
	
	
	/*
	 * public ModelAndView getSelect (RosterDTO rosterDTO)throws Exception{
	 * 
	 * ModelAndView mv = new ModelAndView(); rosterDTO =
	 * rosterService.getSelect(rosterDTO); mv.addObject("board", "qna");
	 * mv.addObject("dto", rosterDTO); mv.setViewName("roaster/roasterList"); return
	 * mv; }
	 */
	
}

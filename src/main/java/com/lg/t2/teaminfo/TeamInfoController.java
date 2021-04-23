package com.lg.t2.teaminfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/teaminfo/**")//view 위치 알려주기
public class TeamInfoController {
	
	@Autowired
	private TeamInfoService teamInfoService;	
	
	@RequestMapping("getRosterList")
	public ModelAndView getRosterInfoSelect()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<TeamMemberInfoDTO> rosterList = teamInfoService.getRosterInfoSelect();
		mv.addObject("roster",rosterList); // jsp 맵핑할 용어, 배열이름
		mv.setViewName("teaminfo/teamList");
		return mv; 
	}
	
}

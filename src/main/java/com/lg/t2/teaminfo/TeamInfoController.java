package com.lg.t2.teaminfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/teaminfo/**")//view 위치 알려주기
public class TeamInfoController {
	
	@Autowired
	private TeamInfoService teamInfoService;	
	
	@RequestMapping("teaminfo/teamList")
	public ModelAndView getRosterInfoSelect()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<TeamMemberInfoDTO> rosterList = teamInfoService.getRosterInfoSelect();
		mv.addObject("rosterdto",rosterList); // jsp 맵핑할 용어, 배열이름
		mv.setViewName("teaminfo/teamList");
		return mv; 
	}
	@RequestMapping("/posi")
	public ModelAndView getRosterPerPosiSelect ()throws Exception{
		//포지션 넘버 가져오기 
		ModelAndView mv = new ModelAndView();
		List<TeamMemberInfoDTO> rosterList = teamInfoService.getRosterPerPosiSelect(11); //포지션 번호 전해야 한다.
		mv.addObject("rosterdto",rosterList);
		mv.setViewName("teaminfo/teamList");
		return mv;
	}
	
	@GetMapping("teaminfo/teamPerInfo/*") // 전달값은... teamMemberInfoDTO.tNum으로 해야 한다 
	public ModelAndView getPerInfoSelect (int tNum) {
		ModelAndView mv = new ModelAndView();
		//MemberBioDTO bioDTO = teamInfoService.getPerInfoSelect(); // 팀맴버디티오 전달해야한다.
		//파라미터를 어떻게 전달 받아야 할까?
		mv.addObject("rosterdto",tNum);
		mv.setViewName("teaminfo/teamPerInfo");
		return mv;
	}
}

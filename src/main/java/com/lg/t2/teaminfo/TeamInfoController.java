package com.lg.t2.teaminfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller // controller 지정 어노테이션
@RequestMapping("/teaminfo/**") //출력할 뷰의 경로
public class TeamInfoController {
	
	@Autowired
	private TeamInfoService teamInfoService;
	
	public ModelAndView getAllRosterInfo ()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<TemaMemberInfoDTO> ar = teamInfoService.getAllRosterInfo();
		
		return mv;
	}
	
	
}

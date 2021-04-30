package com.lg.t2.team.sort;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/teaminfo/**")
public class TeamSortController {
	
	@Autowired 
	private TeamSortService teamSortService;
	
	//position별 검색 URL 만들기용+모든 선수 출력 
	@RequestMapping("teaminfo/AllplayerList")
	public ModelAndView getALLPlayerList () throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		List<TeamSortDTO> tr = teamSortService.getPlayerSort();
		List<TeamMemberDTO> td = teamSortService.getALLPlayerList();
		
		mv.addObject("sort", tr);
		mv.addObject("sortName", "선수단");
		
		mv.addObject("playerdto", td);
		mv.setViewName("teaminfo/teamList"); //JSP파일 경로 설정하기
		
		return mv;
	}
	
	
}

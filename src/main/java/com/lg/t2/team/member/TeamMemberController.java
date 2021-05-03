package com.lg.t2.team.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

@Controller
public class TeamMemberController {
	
	@Autowired
	private TeamMemberService teamMemberService;
	
	//position별 검색 URL 만들기용+모든 선수 출력 
	
	@RequestMapping("teaminfo/AllplayerList")
	public ModelAndView getALLPlayerList () throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		//선수단 가져오기 
		List<TeamMemberDTO> td = teamMemberService.getALLPlayerList();
		
		mv.addObject("sortName", "선수단");
		mv.addObject("playerdto", td);
		mv.setViewName("teaminfo/teamList"); //JSP파일 경로 설정하기
		
		return mv;
	}
	
	@GetMapping("teaminfo/plrPerPosi") // 그냥 get 형식으로 전송하기
	public ModelAndView getPlrPosiList (TeamMemberDTO teamMemberDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		//선수단 포지션 별로 가져오기 
		List<TeamMemberDTO> td = teamMemberService.getPlrPosiList(teamMemberDTO);
		
		mv.addObject("sortName", "선수단");
		mv.addObject("playerdto", td);
		mv.setViewName("teaminfo/teamList"); //JSP파일 경로 설정하기
		return mv;
	}
	
	@GetMapping("teaminfo/teamPerInfo") //  그냥 get으로 요청하기
	public ModelAndView getPlayerInfo (TeamMemberDTO teamMemberDTO)throws Exception{ 
		
		ModelAndView mv = new ModelAndView();
		TeamBioDTO tb = teamMemberService.getPlayerInfo(teamMemberDTO);
		
		mv.addObject("sortName", "선수단");
		mv.addObject("playerInfo",tb);
		mv.setViewName("teaminfo/teamPerInfo");
		return mv; 
	}
	
	@PostMapping("teaminfo/infoManager/") // post 방식으로 할 것
	public int setAddPlayer(TeamBioDTO teamBioDTO) throws Exception{
		
		int result = teamMemberService.setAddPlayer(teamBioDTO);
		result = teamMemberService.setAddPlayerBio(teamBioDTO);
		return result;
	}
	
	@PostMapping("teaminfo/infoManager/UpdatePlayer") // post 방식으로 할 것
	public int setUpdatePlr(TeamBioDTO teamBioDTO) throws Exception{
		
		int result = teamMemberService.setUpdatePlr(teamBioDTO);
		result = teamMemberService.setUpdatePlrBio(teamBioDTO);
		return result;
	}
	
	@PostMapping("teaminfo/infoManager/DeletePlayer") // post방식
	public int setDeletePlayer(TeamMemberDTO teamMemberDTO) throws Exception{
		
		int result = teamMemberService.setDeletePlayer(teamMemberDTO);
		return result;
	}
	
	@RequestMapping("teaminfo/showform")
	public ModelAndView showInserPage () throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("pageName","insert");
		mv.setViewName("teaminfo/teamInsert");
		
		return mv;
	}
	//값 넘기기
}

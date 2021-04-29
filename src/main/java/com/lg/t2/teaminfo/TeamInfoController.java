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
	
	//모든 선수 출력 : 성공 
	@RequestMapping("teaminfo/rosterList") //요청 이름
	public ModelAndView getRosterInfoSelect()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<TeamMemberInfoDTO> rosterList = teamInfoService.getRosterInfoSelect();
		mv.addObject("rosterdto",rosterList); // jsp 맵핑할 용어, 배열이름
		mv.setViewName("teaminfo/teamList"); //값의 의미 : 출력할 jsp 파일 이름
		return mv; 
	}
	
	//포지션 별 출력 : 성공
	@RequestMapping("teaminfo/teamList/posi.do")//href 구현하기
	public ModelAndView getRosterPerPosiSelect (TeamMemberInfoDTO teamMemberInfoDTO)throws Exception{
		//포지션 넘버 가져오기 
		ModelAndView mv = new ModelAndView();
		List<TeamMemberInfoDTO> rosterList = teamInfoService.getRosterPerPosiSelect(teamMemberInfoDTO); //포지션 번호 전해야 한다.
		mv.addObject("rosterdto",rosterList); //다음 페이지에 넘길 파라미터값을 저장한다.
		mv.setViewName("teaminfo/teamList");
		return mv;
	}
	//선수 개인 페이지 이동
	@RequestMapping("teaminfo/teamPerInfo")
	public ModelAndView getPerInfoSelect (TeamMemberInfoDTO teamMemberInfoDTO) throws Exception {
	
		ModelAndView mv = new ModelAndView();
		MemberBioDTO bioDTO = teamInfoService.getPerInfoSelect(teamMemberInfoDTO);
		mv.addObject("biodto",bioDTO);
		mv.setViewName("teaminfo/teamPerInfo"); // 출력할 view 페이지
		return mv;
	}
	
}

//json simple pom.xml에 등록 
//json 으로 리턴하려는 Controller Method 선언부에 @responseBody 붙임
//해당 메서드의 리턴은 리턴할 실제 데이터 
package com.lg.t2.team.member;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lg.t2.team.carnpay.CarNPayService;
import com.lg.t2.team.carnpay.PlayerPayDTO;
import com.lg.t2.team.carnpay.TeamCareerDTO;
import com.lg.t2.team.photo.TeamPhotoDTO;
import com.lg.t2.team.photo.TeamPhotoService;

@Controller
public class TeamMemberController {
	
	@Autowired
	private TeamMemberService teamMemberService;
	
	@Autowired
	private CarNPayService carNPayService;
	
	@Autowired
	private TeamPhotoService teamPhotoService;
	
	@RequestMapping("teaminfo/AllplayerList")
	public ModelAndView getALLPlayerList () throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		//선수단 가져오기  tnum 순으로 가져오기
		List<TeamMemberDTO> td = teamMemberService.getALLPlayerList();
		List<TeamPhotoDTO> fp = teamPhotoService.getTeamListprofile();
		
		//검색하기
//		TeamPhotoDTO ptd = new TeamPhotoDTO();		
//		//teamDTO에 값에 접근하고 
//		
//		for(int i=0; i< td.size();i++) {
//			//TeamMemberDTO tdo = td.get(i);
//			td.get(i).setPlayerPhoto(teamPhotoService.getMemberPhoto(td.get(i)));
//			System.out.println(td.get(i).getPlayerPhoto().getfURL());
//		}
		mv.addObject("sortName", "선수단");
		mv.addObject("playerdto", td);
		mv.addObject("playerprofile", fp);
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
		
		List<TeamPhotoDTO> fp = teamPhotoService.getPosiListprofile(teamMemberDTO);
		mv.addObject("playerprofile", fp);
		
		mv.setViewName("teaminfo/teamList"); //JSP파일 경로 설정하기
		
		return mv;
	}
	
	@GetMapping("teaminfo/teamPerInfo") //  그냥 get으로 요청하기
	public ModelAndView getPlayerInfo (TeamMemberDTO teamMemberDTO)throws Exception{ 
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("sortName", "선수단");
		
		//1. 선수 상세 정보 업로드 2. 선수의 이력 업로드 3. 선수 연봉 정보 업로드 
		
		TeamBioDTO tb = teamMemberService.getPlayerInfo(teamMemberDTO);
		mv.addObject("playerInfo",tb);
		
		TeamPhotoDTO tpd = teamPhotoService.getMemberPhoto(teamMemberDTO);
		mv.addObject("playerprofile",tpd); 
		
		List<TeamCareerDTO> tc = carNPayService.getCarList(teamMemberDTO);
		mv.addObject("playerCareerdto",tc);
		
		List<PlayerPayDTO> pp = carNPayService.getPayList(teamMemberDTO);
		mv.addObject("playerPaydto",pp); 
		
		//사진 조회하기
		List<TeamPhotoDTO> ppl = teamPhotoService.getTeamMemberPhotoList(teamMemberDTO);
		mv.addObject("photoList",ppl);
		mv.setViewName("teaminfo/teamPerInfo"); // 출력 JSP 파일 지정하기 
		return mv; 
	}
	//GET방식의 요청
	@RequestMapping(value = "teaminfo/teamInsertForm" , method = RequestMethod.GET) //form 전송하기
	public ModelAndView showInserPage () throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("teaminfo/teamInsert");
		
		return mv;
	}
	
	//post방식의 요청
	@PostMapping("teaminfo/addMember")// post 방식으로 할 것
	public String setAddPlayer(TeamBioDTO teamBioDTO, HttpSession session, Model model) throws Exception{
		
		//팀원 입력 
		int result = teamMemberService.setAddPlayer(teamBioDTO,session);
////		System.out.println(teamFile.getName());//파라미터명
////		System.out.println(teamFile.getOriginalFilename());//upload 할 때 파일명
////		System.out.println(teamFile.getSize());//파일의 크기(byte)
////		System.out.println(teamFile.isEmpty());//파일의 존재 유무
//		
		String message = "팀원 입력 실패";
		String path="redirect:/teaminfo/teamList";
		
		
		if(result>0) {
			message ="팀원 입력 성공";
			path="redirect:/teaminfo/teamList";
			System.out.println("팀원 입력 성공");
		}
		
		model.addAttribute("msg", message);
		model.addAttribute("path", path);
		return path;
	}
	
	@PostMapping("teaminfo/infoManager/UpdatePlayer") // post 방식으로 할 것 어드민 넘기기
	public String setUpdatePlr(TeamBioDTO teamBioDTO) throws Exception{
		
		int result = teamMemberService.setUpdatePlr(teamBioDTO);
		result = teamMemberService.setUpdatePlrBio(teamBioDTO);
		
		String message = "팀원 삭제 실패";
		String path="redirect:/teaminfo/teamList";
		
		
		if(result>0) {
			message ="팀원 삭제 성공";
			path="redirect:/teaminfo/teamList";
			System.out.println("팀원 입력 성공");
		}
		
		return path;
	}
	
	@PostMapping("teaminfo/deletePlayer") // post방식 어드민 넘기기
	public String setDeletePlayer(TeamMemberDTO teamMemberDTO) throws Exception{
		
		int result = teamMemberService.setDeletePlayer(teamMemberDTO);
		
		String message = "팀원 삭제 실패";
		String path="redirect:/teaminfo/teamList";
		
		
		if(result>0) {
			message ="팀원 삭제 성공";
			path="redirect:/teaminfo/teamList";
			System.out.println("팀원 삭제 성공");
		}
		
		return path;
	}
	
	@PostMapping()
	public void deleteTeamMember(TeamMemberDTO teamMemberDTO) throws Exception {
		
		//팀원 삭제
		int result = teamMemberService.setDeletePlayer(teamMemberDTO);
		
		String message = "팀원 삭제 실패";
		String path="redirect:/teaminfo/teamList";
		
		if(result>0) {
			message ="팀원 삭제 성공";
			path="redirect:/teaminfo/AllplayerList"; //리스트 화면으로 돌아오기
		}
		
	}
}

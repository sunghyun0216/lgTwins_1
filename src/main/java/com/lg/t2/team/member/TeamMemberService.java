package com.lg.t2.team.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class TeamMemberService {
	
	@Autowired
	private TeamMemberDAO teamMemberDAO;
	//
	//모든 선수 출력하기 
	public List<TeamMemberDTO> getALLPlayerList() throws Exception{
		return teamMemberDAO.getALLPlayerList();
	}
	//포지션 별 선수 출력하기 
	public List<TeamMemberDTO> getPlrPosiList(TeamMemberDTO teamMemberDTO) throws Exception{
		return teamMemberDAO.getPlrPosiList(teamMemberDTO);
	}
	
	//선수 개인 조회 하기
	public TeamBioDTO getPlayerInfo(TeamMemberDTO teamMemberDTO) throws Exception{
		return teamMemberDAO.getPlayerInfo(teamMemberDTO);
	}
	//선수 개인 입력하기
	public int setAddPlayer (TeamBioDTO teamBioDTO, HttpSession session)throws Exception{
//		String fileName = fileManager.save("teammember", session);
//		//선수 정보 추가
//		
//		TeamPhotoDTO teamPhotoDTO = new TeamPhotoDTO();
//		teamPhotoDTO.setPlrNum(teamBioDTO.gettNum());
//		teamPhotoDTO.setfNames(avatar.getOriginalFilename());
//		teamPhotoDTO.setfURL(fileName + avatar.getOriginalFilename()); // 파일이 저장된 절대 경로 + 파일 이름 작성하기 
//		//시간은 알아서 sysdate로 저장이 된다.
//		
		int result = teamMemberDAO.setAddPlayer(teamBioDTO);
		result = teamMemberDAO.setAddPlayerBio(teamBioDTO);
		//선수 파일 처리
//		result = teamPhotoDAO.setPhotoInsert(teamPhotoDTO);
		return result;
	}
	
	//선수 정보 갱신하기
	public int setUpdatePlr (TeamBioDTO teamBioDTO)throws Exception{
		return teamMemberDAO.setUpdatePlr(teamBioDTO);
	}
	public int setUpdatePlrBio (TeamBioDTO teamBioDTO)throws Exception{
		return teamMemberDAO.setUpdatePlrBio(teamBioDTO);
	}
	//선수 정보 삭제하기
	public int setDeletePlayer (TeamMemberDTO teamMemberDTO)throws Exception{
		return teamMemberDAO. setDeletePlayer(teamMemberDTO);
	}
	
	//파일정보 조회하기
	//파일정보 삽입하기
	//파일 정보 삭제하기
}

package com.lg.t2.team.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeamMemberService {
	
	@Autowired
	private TeamMemberDAO teamMemberDAO;
	
	//모든 선수 출력하기 
	public List<TeamMemberDTO> getALLPlayerList() throws Exception{
		return teamMemberDAO.getALLPlayerList();
	}
	//포지션 별 선수 출력하기 
	public List<TeamMemberDTO> getPlrPosiList(TeamMemberDTO teamMemberDTO) throws Exception{
		return teamMemberDAO.getPlrPosiList(teamMemberDTO);
	}
	//선수 개인 조회하기
	public TeamBioDTO getPlayerInfo(TeamMemberDTO teamMemberDTO ) throws Exception{
		return teamMemberDAO.getPlayerInfo(teamMemberDTO);
	}
	//선수 개인 입력하기
	public int setAddPlayer (TeamBioDTO teamBioDTO)throws Exception{
		return teamMemberDAO.setAddPlayer(teamBioDTO);
	}
	public int setAddPlayerBio (TeamBioDTO teamBioDTO)throws Exception{
		return teamMemberDAO.setAddPlayerBio(teamBioDTO);
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
}

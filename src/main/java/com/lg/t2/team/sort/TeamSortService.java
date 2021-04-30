package com.lg.t2.team.sort;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeamSortService {
	
	@Autowired
	private TeamSortDAO teamSortDAO;
	
	//선수 포지션별 URL생성
	public List<TeamSortDTO> getPlayerSort () throws Exception{
		return teamSortDAO.getPlayerSort();
	}
	//모든 선수 출력하기 
	public List<TeamMemberDTO> getALLPlayerList() throws Exception{
		return teamSortDAO.getALLPlayerList();
	}
	//포지션 별 선수 출력하기 
	public List<TeamMemberDTO> getPlrPosiList(TeamSortDTO teamSortDTO) throws Exception{
		return teamSortDAO.getPlrPosiList(teamSortDTO);
	}
	//선수 개인 조회하기
	public TeamBioDTO getPlayerInfo(TeamMemberDTO teamMemberDTO ) throws Exception{
		return teamSortDAO.getPlayerInfo(teamMemberDTO);
	}
	//선수 개인 입력하기
	public int setAddPlayer (TeamBioDTO teamBioDTO)throws Exception{
		return teamSortDAO.setAddPlayer(teamBioDTO);
	}
	public int setAddPlayerBio (TeamBioDTO teamBioDTO)throws Exception{
		return teamSortDAO.setAddPlayerBio(teamBioDTO);
	}
	//선수 정보 갱신하기
	public int setUpdatePlr (TeamBioDTO teamBioDTO)throws Exception{
		return teamSortDAO.setUpdatePlr(teamBioDTO);
	}
	public int setUpdatePlrBio (TeamBioDTO teamBioDTO)throws Exception{
		return teamSortDAO.setUpdatePlrBio(teamBioDTO);
	}
	//선수 정보 삭제하기
	public int setDeletePlayer (TeamMemberDTO teamMemberDTO)throws Exception{
		return teamSortDAO. setDeletePlayer(teamMemberDTO);
	}
}

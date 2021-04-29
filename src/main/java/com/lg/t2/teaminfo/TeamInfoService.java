package com.lg.t2.teaminfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.lg.t2.teamsort.TeamGroupDTO;
import com.lg.t2.teamsort.TeamPositionDTO;
import com.lg.t2.teamsort.TeamSortDAO;

@Service
public class TeamInfoService {
	
	
	@Autowired TeamInfoDAO teamInfoDAO;
	@Autowired TeamSortDAO teamSortDAO;
	
	//0. 팀정보, 그룹정보 불러오기 
	public List<TeamGroupDTO> getGroupList () throws Exception {
		return teamSortDAO.getGroupList();
	}
	public List<TeamPositionDTO> getPositionlist () throws Exception {
		return teamSortDAO.getPostionList();
	}
	
	//1. 팀 조회하기 (선수 전체 조회하기)
	public List<TeamMemberInfoDTO> getRosterInfoSelect() throws Exception{
		return teamInfoDAO.getRosterInfoSelect();
	}
	
	////2. 포지션 별 선수 조회하기 (포지션만 가지고?)
	public List<TeamMemberInfoDTO> getRosterPerPosiSelect (TeamMemberInfoDTO teamMemberInfoDTO)throws Exception{
		return teamInfoDAO.getRosterPerPosiSelect(teamMemberInfoDTO);
	}
	
	//3. 개별 선수 정보 출력하기 
	public MemberBioDTO getPerInfoSelect(TeamMemberInfoDTO teamMemberInfoDTO) throws Exception{
		return teamInfoDAO.getPerInfoSelect(teamMemberInfoDTO);
	}
	//4.선수 정보 삭제하기(리스트 페이지에서)
	public int setTeamInfoDelete(TeamMemberInfoDTO teamMemberInfoDTO) throws Exception{
		return teamInfoDAO.setTeamInfoDelete(teamMemberInfoDTO);
	}
	//5. 선수 정보 갱신하기
	//6. 
}

package com.lg.t2.teaminfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeamInfoService {
	
	@Autowired TeamInfoDAO teamInfoDAO;
	
	
	//1. 팀 조회하기
	public List<TeamMemberInfoDTO> getRosterInfoSelect() throws Exception{
		return teamInfoDAO.getRosterInfoSelect();
	}
	////2. 포지션 별 조회하기 (선수 단독)
	public List<TeamMemberInfoDTO> getRosterPerPosiSelect (int posi)throws Exception{
		
		return teamInfoDAO.getRosterPerPosiSelect(posi);
	}
	//3. 개별 선수 정보 출력하기 
	public MemberBioDTO getPerInfoSelect(TeamMemberInfoDTO teamMemberInfoDTO) throws Exception{
		return teamInfoDAO.getPerInfoSelect(teamMemberInfoDTO);
	}
}

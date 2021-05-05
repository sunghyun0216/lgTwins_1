package com.lg.t2.team.photo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lg.t2.team.member.TeamMemberDTO;

@Service
public class TeamPhotoService {
	
	@Autowired
	private TeamPhotoDAO teamPhotoDAO;
	
	
	//조회<리스트>
	public List<TeamPhotoDTO> getTeamMemberPhotoList (TeamMemberDTO teamMemberDTO) throws Exception{
		return teamPhotoDAO.getTeamMemberPhotoList(teamMemberDTO);
	}
	//조회<개인>
	public TeamPhotoDTO getMemberPhoto (TeamMemberDTO teamMemberDTO) throws Exception{
		return teamPhotoDAO.getMemberPhoto(teamMemberDTO);
	}
	//삽입 
	public int setPhotoInsert (TeamPhotoDTO teamPhotoDTO)throws Exception{
		return teamPhotoDAO.setPhotoInsert(teamPhotoDTO);
	}
	//삭제
	public int teamPhotoDelete (TeamPhotoDTO teamPhotoDTO)throws Exception{
		return teamPhotoDAO.teamPhotoDelete(teamPhotoDTO);
	}
}

package com.lg.t2.team.photo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lg.t2.team.member.TeamMemberDTO;

@Service
public class TeamPhotoService {
	
	@Autowired
	private TeamPhotoDAO teamPhotoDAO;
	
	//조회 리스트 선수 전체
	public List<TeamPhotoDTO> getTeamListprofile () throws Exception{
		return teamPhotoDAO.getTeamListprofile();
	}
	//조회 리스트 포지션 별 전체
		public List<TeamPhotoDTO> getPosiListprofile (TeamMemberDTO teamMemberDTO) throws Exception{
			return teamPhotoDAO.getPosiListprofile(teamMemberDTO);
	}
		
	//조회<리스트>(개인 상세 페이지에서 나오는 것)
	public List<TeamPhotoDTO> getTeamMemberPhotoList (TeamMemberDTO teamMemberDTO) throws Exception{
		
		return teamPhotoDAO.getTeamMemberPhotoList(teamMemberDTO);
	}
	//조회<개인> : 프로필
	public TeamPhotoDTO getMemberPhoto (TeamMemberDTO teamMemberDTO) throws Exception{
		return teamPhotoDAO.getMemberPhoto(teamMemberDTO);
	}
	//삽입 
	public int setPhotoInsert (TeamPhotoDTO teamPhotoDTO)throws Exception{
		return teamPhotoDAO.setPhotoInsert(teamPhotoDTO);
	}
	//프로필 삽입
	public int setProfileInsert (TeamMemberDTO teamMemberDTO ) throws Exception{
		return teamPhotoDAO.setProfileInsert(teamMemberDTO);
	}
	//삭제
	public int teamPhotoDelete (TeamPhotoDTO teamPhotoDTO)throws Exception{
		return teamPhotoDAO.teamPhotoDelete(teamPhotoDTO);
	}
}

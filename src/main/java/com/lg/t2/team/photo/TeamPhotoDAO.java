package com.lg.t2.team.photo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lg.t2.team.member.TeamMemberDTO;

@Repository
public class TeamPhotoDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.lg.t2.team.photo.TeamPhotoDAO.";
	
	//사진 조회<리스트>
	public List<TeamPhotoDTO> getTeamMemberPhotoList (TeamMemberDTO teamMemberDTO)throws Exception{
		
		return sqlSession.selectList(NAMESPACE+"getTeamMemberPhotoList",teamMemberDTO);
	}
	//사진 조회 <단독 프로필 하나용>
	public TeamPhotoDTO getMemberPhoto (TeamMemberDTO teamMemberDTO ) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getMemberPhoto",teamMemberDTO);
	}
	public int setProfileInsert (TeamMemberDTO teamMemberDTO ) throws Exception{
		return sqlSession.insert(NAMESPACE+"setProfileInsert",teamMemberDTO);
	}
	//사진 삽입
	public int setPhotoInsert (TeamPhotoDTO teamPhotoDTO) {
		return sqlSession.insert(NAMESPACE+"setPhotoInsert", teamPhotoDTO);
	}
	
	public int teamPhotoDelete (TeamPhotoDTO teamPhotoDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setPhotoUpdate",teamPhotoDTO);
	}
}

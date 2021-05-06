package com.lg.t2.team.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeamMemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.lg.t2.team.member.TeamMemberDAO.";

	
	//모든 선수 조회하기
	public List<TeamMemberDTO> getALLPlayerList ()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getALLPlayerList");
	}
	//포지션별로 선수 조회
	public List<TeamMemberDTO> getPlrPosiList (TeamMemberDTO teamMemberDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getPlrPosiList",teamMemberDTO);
	}
	//선수개인 별로 조회하기
	public TeamBioDTO getPlayerInfo (TeamMemberDTO teamMemberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getPlayerInfo",teamMemberDTO);
	}
	
	//팀원 추가 
	public int setAddPlayer (TeamBioDTO teamBioDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setAddPlayer",teamBioDTO);
	}
	public int setAddPlayerBio (TeamBioDTO teamBioDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setAddPlayerBio",teamBioDTO);
	}
	
	//팀원 정보 갱신
	public int setUpdatePlr (TeamBioDTO teamBioDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdatePlr",teamBioDTO);
	} 
	public int setUpdatePlrBio (TeamBioDTO teamBioDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdatePlrBio",teamBioDTO);
	}
	
	//팀원 삭제 
	public int setDeletePlayer (TeamMemberDTO teamMemberDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setDeletePlayer", teamMemberDTO);
	}
}

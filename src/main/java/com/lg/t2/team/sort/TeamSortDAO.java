package com.lg.t2.team.sort;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeamSortDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.lg.t2.team.sort.TeamSortDAO.";
	
	public List<TeamSortDTO> getPlayerSort ()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getPlayerSort");
	}
	//모든 선수 불러오기
	public List<TeamMemberDTO> getALLPlayerList ()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getALLPlayerList");
	}
	//포지션별로 선수 불러오기
	public List<TeamMemberDTO> getPlrPosiList (TeamSortDTO teamSortDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getPlrPosiList",teamSortDTO);
	}
	//개인 별로 불러오기
	public TeamBioDTO getPlayerInfo (TeamMemberDTO teamMemberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getPlayerInfo",teamMemberDTO);
	}
	
	//선수 추가 
	
	public int setAddPlayer (TeamBioDTO teamBioDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setAddPlayer",teamBioDTO);
	}
	public int setAddPlayerBio (TeamBioDTO teamBioDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setAddPlayerBio",teamBioDTO);
	}
	
	//선수 갱신
	public int setUpdatePlr (TeamBioDTO teamBioDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdatePlr",teamBioDTO);
	} 
	public int setUpdatePlrBio (TeamBioDTO teamBioDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdatePlrBio",teamBioDTO);
	}
	
	//선수 삭제 
	public int setDeletePlayer (TeamMemberDTO teamMemberDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setDeletePlayer", teamMemberDTO);
	}
	
}

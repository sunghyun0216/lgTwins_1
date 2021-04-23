package com.lg.t2.teamsort;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeamSortDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.lg.t2.teamsort.TeamSortDAO."; 
	
	public List<TeamGroupDTO> getGroupList ()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getGroupList");
	} 
	
	public List<TeamPositionDTO> getPostionList () throws Exception{
		return sqlSession.selectList(NAMESPACE + "getPostionList");
	}
}

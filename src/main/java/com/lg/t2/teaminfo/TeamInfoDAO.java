package com.lg.t2.teaminfo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeamInfoDAO {
	
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.lg.t2.teaminfo.TeamInfoDAO.";
	
	public List<TeamMemberInfoDTO> getAllRosterInfo() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getAllRosterInfo");
	}
	
	
}

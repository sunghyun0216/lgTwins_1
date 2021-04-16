package com.lg.t2.roster;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RosterDAO {
	
	
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.lg.t2.roster.RosterDAO.";

	public List<PositionListDTO> getPositionList () throws Exception{
		return sqlSession.selectList(NAMESPACE+"getPositionList");
	}
	
}

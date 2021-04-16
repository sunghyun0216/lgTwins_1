package com.lg.t2.match;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lg.t2.gameBox.GameBoxDTO;

@Repository
public class MatchDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE ="com.lg.t2.match.MatchDAO.";
	
	public List<MatchDTO> getList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
}

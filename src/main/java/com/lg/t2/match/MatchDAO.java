package com.lg.t2.match;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MatchDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE ="com.lg.t2.match.MatchDAO.";
	
	public List<MatchDTO> getList5()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList5");
	}
	
	public MatchDTO getSelect(MatchDTO matchDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getSelect", matchDTO);
	}
	
	public int setInsert(MatchDTO matchDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", matchDTO);
	}
	
	public int setUpdate(MatchDTO matchDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdate", matchDTO);
	}
	
}

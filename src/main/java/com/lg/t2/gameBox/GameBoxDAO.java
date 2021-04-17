package com.lg.t2.gameBox;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class GameBoxDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE ="com.lg.t2.gameBox.GameBoxDAO.";
	

	public List<GameBoxDTO> getList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public GameBoxDTO getSelect(GameBoxDTO gameBoxDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getSelect", gameBoxDTO);
	}
	
	public int setInsert(GameBoxDTO gameBoxDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", gameBoxDTO);
	}
	
	public int setUpdate(GameBoxDTO gameBoxDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdate", gameBoxDTO);
	}
	
}

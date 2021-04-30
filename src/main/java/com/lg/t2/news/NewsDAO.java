package com.lg.t2.news;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lg.t2.board.BoardDAO;
import com.lg.t2.board.BoardDTO;
import com.lg.t2.util.Pager;

@Repository
public class NewsDAO implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESAPCE="com.lg.t2.board.news.NewsDAO.";

	@Override // List
	public List<BoardDTO> getList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESAPCE+"getList", pager);
	}

	@Override // TotalCount
	public long getTotalCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESAPCE+"getTotalCount", pager);
	}

	@Override // Select
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		return sqlSession.selectOne(NAMESAPCE+"getSelect", boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
}

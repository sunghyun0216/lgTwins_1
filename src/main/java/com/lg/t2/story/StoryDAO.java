package com.lg.t2.story;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.lg.t2.board.BoardDAO;
import com.lg.t2.board.BoardDTO;
import com.lg.t2.util.Pager;

public class StoryDAO implements BoardDAO{

	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.lg.t2.board.story.StoryDAO.";

	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long getTotalCount(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return null;
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

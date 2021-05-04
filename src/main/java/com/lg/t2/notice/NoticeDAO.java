package com.lg.t2.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lg.t2.board.BoardDAO;
import com.lg.t2.board.BoardDTO;
import com.lg.t2.board.BoardFileDTO;
import com.lg.t2.util.Pager;

@Repository
public class NoticeDAO implements BoardDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.lg.t2.board.notice.NoticeDAO.";

	public BoardFileDTO getFileSelect(BoardFileDTO boardFileDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getFileSelect", boardFileDTO);
	}
	
	public int setFileDelete(BoardFileDTO boardFileDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setFileDelete", boardFileDTO);
	}
	
	public int setFileInsert(BoardFileDTO boardFileDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setFileInsert", boardFileDTO);
	}
	
	
	
	
	
	
	
	@Override // List
	public List<BoardDTO> getList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", pager);
	}

	@Override // TotalCount
	public long getTotalCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getTotalCount", pager);
	}

	@Override // Select
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"getSelect", boardDTO);
	}

	@Override // Insert
	public int setInsert(BoardDTO boardDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", boardDTO);
	}
	
	// GetNum
	public long getNum()throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getNum");
	}
	
	
	
	
}

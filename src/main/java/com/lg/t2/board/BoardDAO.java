package com.lg.t2.board;

import java.util.List;

import com.lg.t2.board.BoardDTO;
import com.lg.t2.util.Pager;

public interface BoardDAO {

	public List<BoardDTO> getList(Pager pager)throws Exception;
	
	public long getTotalCount(Pager pager)throws Exception;
	
	public BoardDTO getSelect(BoardDTO boardDTO)throws Exception;
	
	public int setInsert(BoardDTO boardDTO)throws Exception;
	
	public int setUpdate(BoardDTO boardDTO)throws Exception;
	
	public int setDelete(BoardDTO boardDTO)throws Exception;
	
}

package com.lg.t2.board;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.lg.t2.board.BoardDTO;
import com.lg.t2.util.Pager;

public interface BoardService {

	public List<BoardDTO> getList(Pager pager)throws Exception;
	
	public BoardDTO getSelect(BoardDTO boardDTO)throws Exception;
	
	public int setInsert(BoardDTO boardDTO,MultipartFile [] files)throws Exception; 
	
	public int setUpdate(BoardDTO boardDTO,MultipartFile [] files)throws Exception;
	
	public int setDelete(BoardDTO boardDTO)throws Exception;
	
}

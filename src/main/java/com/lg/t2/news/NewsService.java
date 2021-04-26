package com.lg.t2.news;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.lg.t2.board.BoardDTO;
import com.lg.t2.board.BoardService;
import com.lg.t2.util.FileManager;
import com.lg.t2.util.Pager;

@Service
public class NewsService implements BoardService{

	@Autowired
	private NewsDAO newsDAO;
	
	@Autowired
	private FileManager fileManager;
	
	@Autowired
	private HttpSession session;

	@Override
	public List<BoardDTO> getList(Pager pager)throws Exception{
		pager.makeRow();
		long totalCount = newsDAO.getTotalCount(pager);
		pager.makeNum(totalCount);
		return newsDAO.getList(pager);
	}
	

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		return newsDAO.getSelect(boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO, MultipartFile[] files) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO, MultipartFile[] files) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

	
	
	
	
	
	
}
